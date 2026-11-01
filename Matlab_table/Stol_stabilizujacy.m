g = 9.81;           % przyspieszenie ziemskie [m/s^2]
m = 0.05;           % masa kulki [kg]
R = 0.01;           % promien kulki [m]
J_B = (2/5)*m*R^2;  % moment bezwladnosci [kg*m^2]

ball = m*g/(m + J_B/R^2);    % rownanie ruchu kulki

alpha_deg = 0;      % kat nachylenia [stopnie]
v0 = 0.02;             % predkosc poczatkowa [m/s]
r0 = 0.05;          % polozenie poczatkowe [m]
t_end = 10;        % czas symulacji [s]
r_zad = 0;
% Wstępne nastawy PD
b_deg = ball*pi/180;

% Parametry serwomechanizmu
servoGain = 1;
servoTimeConstant = 0.05;
servoDamping = 1;

%Metoda IMC
l_IMC = 0.5;  %parametr strojenia IMC [s]
Kp = 1/(3*b_deg*l_IMC^2);
Kd = 8/(9*b_deg*l_IMC);
N = 3/l_IMC;


Ki = 0;