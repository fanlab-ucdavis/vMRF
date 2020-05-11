% The following code illustrates some new use cases of MrVox2d

addpath(genpath(fullfile(pwd,'mrvox')));

%% SAGE
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
tic
dico = GenLookUp2D_fast('config/voxpar_dico_varied_SAGE.txt','config/seqpar_SAGE.txt');
toc

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_varied_SAGE.txt');
figure, plot(abs(dico')),xlabel('Time (ms)'),ylabel('MR signal magnitude')
title('Dictionary Using SAGE Sequence')

%% Test Dictionary
% Dictionary generation
fprintf('\n\t>> Simulating a dictionary on a simplistic voxel with varying vessel radius...\n\n');
tic
dico = GenLookUp2D_fast('config/voxpar_dico_test_SAGE.txt','config/seqpar_SAGE.txt');
toc

% Just to get input parameters for plotting legend
Model = ReadModel('config/voxpar_dico_test_SAGE.txt');
figure, plot(abs(dico')),xlabel('TE'),ylabel('MR signal magnitude')
title('Dictionary Using SAGE Sequence')
