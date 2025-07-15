# Digital Signal Processing 

## Overview
This repository contains a collection of MATLAB scripts for signal processing exercises. The scripts cover the creation, visualization, and analysis of various signals (impulse, step, square, sawtooth, triangular, sinc, etc.), as well as filtering and spectral analysis using Fourier transforms and Butterworth filters.

## Usage
1. Open any script in MATLAB.
2. Run the script to visualize the corresponding signal or analysis.
3. Figures will be generated for each script, showing the signal in the time or frequency domain as appropriate.

## Requirements
- MATLAB (with Signal Processing Toolbox for some scripts)

## File Descriptions

### Basic Signals
- **delta1.m**: Generates and plots the Dirac impulse (delta) function at t = 0.
- **delta2.m**: Generates and plots a delayed Dirac impulse at t = 2 seconds.
- **echelon.m**: Plots the unit step function u(t).
- **echelon1.m**: Plots a delayed unit step function u(t-1).
- **carré.m**: Generates and plots a square wave over two periods.
- **dentdescie.m**: Generates and plots a sawtooth wave over two periods.
- **triangulaire.m**: Generates and plots a triangular wave over two periods.
- **porte.m**: Constructs and plots a rectangular ("porte") function using shifted step functions.
- **impulsioncarré.m**: Generates and plots a rectangular impulse from t = -1 to t = 1.
- **sinuscardinal.m**: Generates and plots the sinc (sinus cardinal) function.
- **sig_sin.m**: Generates and plots a sampled sine wave at 100 Hz.
- **sig_sin_axis.m**: Plots a sine wave at 100 Hz, limited to two periods.

### Signal Composition and Analysis
- **signalxtp3.m**: Creates and plots a composite signal consisting of two cosines at 100 Hz and 400 Hz.
- **spectrex.m**: Computes and plots the spectrum of a composite signal using FFT.
- **fourierInverse.m**: Demonstrates the inverse Fourier transform (IFFT) of a constant spectrum.
- **tfprapide.m**: Plots a rectangular impulse and its Fourier spectrum.
- **Tfrapide2.m**: Plots a narrower rectangular impulse and its Fourier spectrum.

### Filtering and Filter Design
- **filtragex.m**: Designs a Butterworth analog filter, applies it to a composite signal, and plots the filtered and unfiltered signals.
- **fitragexspectre.m**: Computes and plots the spectra of the original and filtered signals.
- **fonctionTransfertAttenuation.m**: Designs a Butterworth filter and plots its transfer function and attenuation in dB.
- **gabarit_du_filtre.m**: Plots the filter specification (gabarit) for a Butterworth low-pass filter.
- **ordre_de_filtre.m**: Calculates and displays the required order for a Butterworth filter.



