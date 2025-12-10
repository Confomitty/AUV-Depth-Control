# AUV-Depth-Control (Template)
Template repository for the AUV Depth Stability Control simulation project.

## Structure
- params/               - master parameter files (MATLAB .m and JSON)
- simulink/plant/       - Simulink plant & blocks (placeholders .slx)
- simulink/controllers/ - controller subsystems (placeholders .slx)
- scripts/              - helper MATLAB scripts (.m)
- docs/                 - reports and documentation templates
- plots/                - generated plots
- examples/             - optional example outputs

## How to use
1. Edit params/auv_params.m to set your AUV parameters.
2. Open Simulink and create the .slx models using the placeholder filenames.
3. Use scripts/run_all.m to orchestrate simulations (edit it for your models).
4. Commit and push to GitHub.

## Team roles
- ME-1: physical simulation model
- ME-2: thruster & sensor & energy
- AIML-1: PID baseline
- AIML-2: LQR + adaptive

