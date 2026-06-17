# Digital Signal Processing: Audio Filtering and Spectrum Analysis

## Project Overview
This project implements Digital Signal Processing (DSP) and Linear Time-Invariant (LTI) system theories to analyze and manipulate the frequency spectrum of audio signals. The system features 8 distinct digital FIR filters designed to isolate, attenuate, or extract specific frequency bands from a raw human voice input.

## Technical Implementation & Tools
* **MATLAB Filter Designer:** The digital filters were mathematically modeled and synthesized using the MATLAB `filterDesigner` toolbox. 
* **Filter Functions:** The generated filter coefficients and discrete-time transfer functions are exported as standalone MATLAB scripts for modularity.
* **Spectral Analysis:** The main script processes the input signal in the time domain and computes the Fast Fourier Transform (FFT) to visualize the frequency-domain spectrum.

## Filter Architecture
The DSP pipeline includes two sets of the following filter topologies, each with specific cut-off frequencies ($f_c$):
* **Low-Pass Filters (LPF):** Isolates fundamental vocal frequencies while attenuating high-frequency background noise.
* **High-Pass Filters (HPF):** Eliminates low-frequency rumble and extracts higher harmonics.
* **Band-Pass Filters (BPF):** Isolates specific human voice formants.
* **Band-Stop Filters (BSF):** Attenuates targeted frequency ranges (notch filtering).

## Repository Structure & Usage
* `/Filters/`: Contains the 8 synthesized FIR filter functions (e.g., `lowpass1.m`, `bandpass1.m`).
* `Main_Signal_Processing.m`: The core script that executes the filtering pipeline, applies the filters to the input signal, and generates the FFT plots.

**Note on Data Privacy:** Data Privacy Note: The original voice dataset is excluded for privacy. 
To run the simulation locally, place any .mp3 file in the root directory, rename it to input_audio.mp3, and execute the main script.

## Visual Analysis
*<img width="2054" height="1418" alt="graph" src="https://github.com/user-attachments/assets/5c1007ce-bea3-4f47-9397-2845d070a916" />*

*<img width="1547" height="867" alt="image" src="https://github.com/user-attachments/assets/42c8833d-f97e-4274-b8e1-c372812f6d23" />
*
