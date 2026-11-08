%% Communication and repulsion graph matrices
clc
clear all
% Communication links between the five drones.
A_diacenza= [0 0 0 0 0;
             1 0 1 1 0;
             0 1 0 0 1; 
             0 1 0 0 1;
             1 0 1 1 0];
% Links used by the repulsive interaction.
A_repulsione=[0 0 0 0 0;
              1 0 1 1 1;
              1 1 0 1 1; 
              1 1 1 0 1;
              1 1 1 1 0];

        
% Two-hop paths, with self-links removed below.
A_diacenza_2=A_diacenza^2;
for i=1:length(A_diacenza_2(:,1))
    A_diacenza_2(i,i)=0;
end

A_diacenza_tot=A_diacenza+A_diacenza_2;
% Graph Laplacian and block coupling matrix.
D = diag(sum(A_diacenza'));
L = D-A_diacenza;
I_9 = eye(9);
I_9(1:3,1:3)=eye(3)*2;
K = kron(L,I_9);



% Extended graph using one-hop and two-hop paths.
D_tot = diag(sum(A_diacenza_tot'));
L_tot = D_tot-A_diacenza_tot;
K_tot = kron(L_tot, I_9);

% Auxiliary communication-rate coefficient.
k_rate=1/2*pi/(2*0.5*max(eig(L+2*eye(5))));



