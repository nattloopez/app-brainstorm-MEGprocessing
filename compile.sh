#!/bin/bash
module load matlab/2020a

mkdir -p compiled

cat > build.m <<END
% Add Brainstorm
addpath(genpath('/N/u/brlife/brainstorm/brainstorm3'));

% Add SPM (required by Brainstorm for MEG imports)
addpath(genpath('/N/soft/mason/SPM/spm8'));

% Add JSONLab (recommended for standalone JSON support)
addpath(genpath('/N/u/brlife/git/jsonlab'));

% Add your app code
addpath(genpath(pwd));

% Compile
mcc -m -R -nodisplay -d compiled \\
    -a /N/u/brlife/brainstorm/brainstorm3 \\
    -a /N/soft/mason/SPM/spm8 \\
    -a /N/u/brlife/git/jsonlab \\
    main.m

exit
END

matlab -nodisplay -nosplash -r build
