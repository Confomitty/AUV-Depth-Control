%% AUV parameters (template)
auv.mass = 20;        % kg
auv.length = 1.0;     % m
auv.radius = 0.12;    % m
auv.volume = pi*auv.radius^2*auv.length; % m^3
auv.rho = 1000;       % kg/m^3 (water)
auv.g = 9.81;
auv.buoyancy = auv.rho * auv.volume * auv.g;
auv.weight   = auv.mass * auv.g;
auv.net_buoyancy = auv.buoyancy - auv.weight;

% Added mass & drag (tune as needed)
auv.added_mass = 0.2 * (auv.rho * auv.volume);
auv.linear_damping   = 5;
auv.quadratic_drag   = 10;

% Thruster
auv.thruster_max = 50;
auv.thruster_tau = 0.2;

% Sensor
auv.sensor_rate      = 20;   % Hz
auv.sensor_noise_std = 0.01; % m

% Simulation
auv.Ts   = 0.05;  % s
auv.Tsim = 100;   % s
