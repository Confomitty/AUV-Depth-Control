function T_out = thruster_model(T_cmd, T_prev, params, dt)
% Simple first-order thruster model
% T_cmd: commanded thrust (N)
% T_prev: previous thrust output (N)
% params: struct or auv with thruster_max, thruster_tau, Ts
% dt: timestep (s)
if nargin < 4, dt = params.Ts; end
tau = params.thruster_tau;
T_out = T_prev + (dt / tau) * (T_cmd - T_prev);
% Saturation
T_out = max(min(T_out, params.thruster_max), -params.thruster_max);
end
