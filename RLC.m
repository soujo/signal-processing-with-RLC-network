% RLC circuit parameters
R = 100;     % Resistance in ohms
L = 0.1;     % Inductance in henrys
C = 0.001;   % Capacitance in farads
Vm = 1;      % Amplitude of input sinusoidal signal
f = 50;      % Frequency of input sinusoidal signal in Hz
omega = 2*pi*f;

% Time vector for transient response
t_transient = linspace(0, 0.02, 1000);

% Impulse Response (Transient Response)
numerator = [1];
denominator = [L*C, R*C, 1];
impulse_response = impulse(tf(numerator, denominator), t_transient);
figure;
plot(t_transient, impulse_response);
xlabel('Time (s)');
ylabel('Impulse Response');
title('Impulse Response (Transient)');
grid on;

% Generate input signal
t_input = linspace(0, 0.2, 1000);
input_signal = Vm * sin(omega * t_input);

% Convolution with Impulse Response
output_signal = conv(input_signal, impulse_response) * (t_input(2) - t_input(1));
t_output = linspace(0, 0.2 + t_transient(end), length(output_signal));
figure;
plot(t_output, output_signal);
xlabel('Time (s)');
ylabel('Output Voltage');
title('Output Signal through Convolution');
grid on;

% Frequency Response Analysis
frequencies = logspace(0, 4, 1000);
H_freq = zeros(size(frequencies));

for i = 1:length(frequencies)
    w = 2 * pi * frequencies(i);
    H_freq(i) = abs(1 / (R + 1j*w*L - 1 / (1j*w*C)));
end

figure;
semilogx(frequencies, 20*log10(H_freq));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Frequency Response Analysis');
grid on;

% Resonance Analysis
resonant_freq = 1 / (2*pi*sqrt(L*C)); % Resonant frequency
fprintf('Resonant Frequency: %.2f Hz\n', resonant_freq);

% Steady-State Analysis
steady_state_amplitude = Vm ./ abs(1 - (L*C*omega^2 + 1j*R*C*omega));
steady_state_phase = angle(1 - (L*C*omega^2 + 1j*R*C*omega));
fprintf('Steady-State Amplitude: %.4f\n', steady_state_amplitude);
fprintf('Steady-State Phase: %.4f radians\n', steady_state_phase);

% Plot steady-state response
t_steady = linspace(0, 0.1, 1000); % Time vector
Vout_steady = steady_state_amplitude * sin(omega*t_steady + steady_state_phase);
figure;
plot(t_steady, Vout_steady);
xlabel('Time (s)');
ylabel('Output Voltage');
title('Steady-State Response');
grid on;
