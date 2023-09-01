# RLC Circuit Simulation and Analysis

## Overview
This project simulates and analyzes the behavior of an RLC (Resistor-Inductor-Capacitor) circuit. It explores various aspects of the circuit's response, including transient response, frequency response, resonance analysis, and steady-state response. The circuit parameters and input signal are defined, and the behavior is visualized through graphs.

## Mathematical Equations and Signal
The RLC circuit is described by the following equations:
- Impedance (Z) of the circuit: $Z = R + j(ωL - \frac{1}{ωC} )$
- Input signal: $V_{in}\big(t\big)$  = $V_m * sin(ωt)$

Where:
- $R$ is the resistance (Ohms)
- $L$ is the inductance (Henrys)
- $C$ is the capacitance (Farads)
- $V_{m}$ is the amplitude of the input sinusoidal signal (Volts)
- $ω$ is the angular frequency (radians/second)
- $t$ is time (seconds)

### Initial Parameter Values
- Resistance ($R$): 100 Ohms
- Inductance ($L$): 0.1 Henrys
- Capacitance ($C$): 0.001 Farads
- Amplitude of Input Signal ($V_m$): 1 Volt
- Frequency of Input Signal ($f$): 50 Hz

## Graphs and Analysis

### 1. Impulse Response (Transient)
![Impulse Response](/impulse_response.png)

The graph shows the impulse response of the circuit, representing its transient behavior when subjected to an impulse input.

### 2. Output Signal through Convolution
![Output Signal](/output_signal.png)

This graph displays the output signal obtained through convolution of the input signal with the impulse response. It demonstrates the transient response of the circuit to a sinusoidal input.

### 3. Frequency Response Analysis
![Frequency Response](/frequency_response_analysis.png)

The frequency response analysis shows how the magnitude response of the circuit varies with frequency. The plot reveals the behavior of the circuit over a range of frequencies.

### 4. Resonance Analysis
- Resonant Frequency: **15.92 Hz**

This section calculates and prints the resonant frequency of the RLC circuit, which is the frequency at which the circuit responds most strongly.

### 5. Steady-State Analysis
- Steady-State Amplitude: **0.0306**
- Steady-State Phase: **-1.8460 radians**

The steady-state analysis provides the amplitude and phase of the circuit's response at the input frequency.

### 6. Steady-State Response
![Steady-State Response](/steady_state_response.png)

The graph displays the steady-state response of the circuit, showing how the output voltage varies with time at the input frequency.

These visualizations and analyses provide valuable insights into the behavior of the RLC circuit under different conditions, helping to understand its transient, frequency-dependent, and steady-state responses.
