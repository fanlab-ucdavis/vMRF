% The following code illustrates some new use cases of MrVox2d

addpath(genpath(fullfile(pwd,'mrvox')));

%% FID
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
dico = GenLookUp2D_fast('config/voxpar_dico_varied.txt','config/seqpar_fid.txt');

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title({'Dictionary Using FID Sequence','for N = 1 to 10, R = 1 to 10 microns, and X = 0.1 to 1.0 ppm cgs'})

%% GESFIDE
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
dico = GenLookUp2D_fast('config/voxpar_dico_varied.txt','config/seqpar_GESFIDE.txt');

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title({'Dictionary Using GESFIDE Sequence','for N = 1 to 10, R = 1 to 10 microns, and X = 0.1 to 1.0 ppm cgs'})

%% Narrow Pulse Single Refocus
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
dico = GenLookUp2D_fast('config/voxpar_dico_varied.txt','config/seqpar_narrowpulse_singlerefoc.txt');

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title({'Dictionary Using Narrow Pulse Sequence','for N = 1 to 10, R = 1 to 10 microns, and X = 0.1 to 1.0 ppm cgs'})

%% Spin Echo
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
dico = GenLookUp2D_fast('config/voxpar_dico_varied.txt','config/seqpar_se.txt');

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title({'Dictionary Using Spin Echo Sequence','for N = 1 to 10, R = 1 to 10 microns, and X = 0.1 to 1.0 ppm cgs'})

%% Stimulated Echo
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
dico = GenLookUp2D_fast('config/voxpar_dico_varied.txt','config/seqpar_stim.txt');

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title({'Dictionary Using Stimulated Echo Sequence','for N = 1 to 10, R = 1 to 10 microns, and X = 0.1 to 1.0 ppm cgs'})

%% Paper Remake
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
tic
dico = GenLookUp2D_fast('config/voxpar_dico_varied_paper.txt','config/seqpar_GESFIDE_paper.txt');
toc

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied_paper.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title('Dictionary Using GESFIDE Sequence')