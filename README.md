# Drone Swarm Control

A MATLAB and Simulink project on cooperative quadrotor control. It includes formation tracking, repulsive interactions and control over a communication network.

## Project files

| File | Description |
| --- | --- |
| [graph_matrices.m](network/graph_matrices.m) | Network matrices and coupling gains. |
| [Formation_control.slx](formation-control/Formation_control.slx) | Formation-control simulation. |
| [Collision_avoidance.slx](collision-avoidance/Collision_avoidance.slx) | Formation control with repulsive interactions. |
| [Router_communication.slx](networked-control/Router_communication.slx) | Control with router communication. |
| [Communication_rate_control.slx](networked-control/Communication_rate_control.slx) | Control of the communication traffic rate. |

## How to use

Open the project folder in MATLAB, run `network/graph_matrices.m`, then open the desired Simulink model and press **Run**.

See the [usage guide](docs/USAGE.md) for the available simulations.

Author: Giacomo Caiazzo.
