%% ME1_check.m — Sanity check for AUV physics (ME-1)

clc; clear;

% Load physical parameters
run('C:\Users\Heisenberg\Desktop\AUV-Depth-Control\params\auv_params.m');

fprintf("\n=== AUV Physics Sanity Check (ME-1) ===\n");

fprintf("\n--- Geometry ---\n");
fprintf("Volume: %.4f m^3\n", auv.volume);

fprintf("\n--- Forces ---\n");
fprintf("Buoyancy: %.2f N\n", auv.buoyancy);
fprintf("Weight: %.2f N\n", auv.weight);
fprintf("Net Buoyancy (B - W): %.2f N\n", auv.net_buoyancy);

if auv.net_buoyancy < 0
    fprintf("Result: AUV sinks slowly (good for depth control).\n");
else
    fprintf("Result: AUV floats upward.\n");
end

fprintf("\n--- Added Mass ---\n");
fprintf("Added Mass: %.2f kg\n", auv.added_mass);
fprintf("Effective Mass m_eff: %.2f kg\n", auv.m_eff);

fprintf("\n--- Drag Coefficients ---\n");
fprintf("Linear drag d1 = %.2f\n", auv.d1);
fprintf("Quadratic drag d2 = %.2f\n", auv.d2);

fprintf("\nSanity check completed.\n\n");
