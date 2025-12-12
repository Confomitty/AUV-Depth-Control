%% AUV Physical Parameters (ME-1 - Plant Modeling)

% ------------------------------
% 1. Geometry (Cylinder)
% ------------------------------
auv.L = 1.0;      % length (m)
auv.R = 0.12;     % radius (m)

% Volume of displaced water
auv.volume = pi * (auv.R^2) * auv.L;   % m^3

% ------------------------------
% 2. Environment
% ------------------------------
auv.rho = 1000;   % water density (kg/m^3)
auv.g   = 9.81;   % gravity (m/s^2)

% ------------------------------
% 3. Mass Properties
% ------------------------------
auv.mass = 48;     % kg (chosen for slightly negative buoyancy)

% Displaced water mass
auv.displaced_mass = auv.rho * auv.volume; % kg

% Buoyancy force
auv.buoyancy = auv.displaced_mass * auv.g; % N

% Weight force
auv.weight = auv.mass * auv.g;            % N

% Net buoyancy (negative → AUV slowly sinks)
auv.net_buoyancy = auv.buoyancy - auv.weight;

% ------------------------------
% 4. Added Mass
% ------------------------------
auv.added_mass = 0.2 * auv.displaced_mass;  % kg
auv.m_eff = auv.mass + auv.added_mass;      % effective heave mass

% ------------------------------
% 5. Drag Coefficients
% ------------------------------
auv.d1 = 5;    % linear drag  (N*s/m)
auv.d2 = 10;   % quadratic drag (N*s^2/m^2)

% ------------------------------
% 6. Thruster (used later by ME-2 & AIML)
% ------------------------------
auv.thruster_max = 50;  % N
auv.thruster_tau = 0.2; % first-order lag constant

% ------------------------------
% 7. Simulation Settings
% ------------------------------
auv.Ts   = 0.05;   % sample time (s)
auv.Tsim = 60;     % simulation duration (s)

