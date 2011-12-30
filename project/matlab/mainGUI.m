%% Main file for Matlab code without GUI
% Currently edited by:
% - Guillem
% - Angga

%% Clean everything
close all;
clear all;
clc;

%% Load last used options
global Options
if exist('opt.mat','file') == 2 % file in Matlab path
    Options = load('opt.mat');
else % load and save default options
    % NHS
    Options.NHS_color  = 'red';      % color to segment 'blue' or 'red'
    Options.NHS_output = true;       % save output for this function
    % PostProcessing
    Options.POST_aspectArea = 1500;  % imageArea/aspectArea thresholding (default 1500)
    Options.POST_lowRatio   = 0.25;  % height/width lowest value (default 0.25)
    Options.POST_highRatio  = 1.3;   % height/width highest value (default 1.3)
    Options.POST_output     = true;  % save output for this function
    % Contour extraction
    Options.CE_distError = sqrt(2);  % maximum distance from the convex hull to take contour pixels (default sqrt(2))
    Options.CE_output    = true;     % save output for this function
    % Gielis recontruction
    Options.GIELIS_norm = true;      % use normalization (default true)
    Options.GIELIS_func = 1;         % cost function to use 1, 2 or 3 (default 1)
    Options.GIELIS_output = true;    % save output for this function
    % Last folder opened
    Options.lastFolder = cd;          % last used folder
    % Create the options file
    save opt.mat -struct Options;
end

%% Add necessary paths to call all functions
addpath('gui', 'ShapeReconstruction', 'Rotational Offset');
if ~isdir('output')
    mkdir('output');
end

%% Execute GUI
gui_matlab;