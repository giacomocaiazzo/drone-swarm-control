# Usage

1. Open the project folder as MATLAB's Current Folder.
2. Run `network/graph_matrices.m` to define the network matrices and gains.
3. Open one of the models below and press **Run**.
4. Inspect the model scopes for the simulation results.

| Simulation | Model |
| --- | --- |
| Formation control | `formation-control/Formation_control.slx` |
| Repulsive interactions | `collision-avoidance/Collision_avoidance.slx` |
| Router communication | `networked-control/Router_communication.slx` |
| Traffic-rate control | `networked-control/Communication_rate_control.slx` |

Each model initializes its simulation parameters and trajectory through its initialization callback. The MATLAB Functions are included in the models.
