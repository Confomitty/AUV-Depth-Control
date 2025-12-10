function E = energy_model(T_series, Ts, k_e)
% ENERGY_MODEL Estimate energy from thrust profile.
%   T_series: vector of thrust (N)
%   Ts: sample time (s)
%   k_e: energy constant (default 0.01)
if nargin < 3, k_e = 0.01; end
P = k_e .* (T_series.^2);
E = trapz(P) * Ts;
end
