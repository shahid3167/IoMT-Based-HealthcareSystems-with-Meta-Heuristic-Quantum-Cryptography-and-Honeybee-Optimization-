function params = config()
%CONFIG Returns a struct with simulation parameters.

%% HOA Parameters
params.numRuns = 10;
params.randomSeed = 1234;
params.popSize = 100;
params.maxIter = 500;
params.explorationRatio = 0.6;
params.exploitationRatio = 0.3;
params.scoutRatio = 0.1;
params.localRadius = 0.05;
params.convergenceThresh = 1e-5;

%% QKD Parameters
params.qubitsPerSession = 1e5;
params.depolarProb = 0.01;
params.qubitLossProb = 0.02;
params.detectorErrorProb = 1e-4;
params.eavesdropperFraction = 0.05;
params.reconciliationEff = 0.95;
params.privacyAmplification = 0.8;

%% Cryptography
params.encryptionType = 'AES-128';
params.twofishRounds = 16;

%% DoS Attack Simulation
params.numAttackNodes = 100;
params.packetsPerNode = 500;
params.packetSize = 512;
params.interPacketInterval = 0.01;
params.spoofProb = 0.5;
params.attackDuration = 60;

%% Dataset / Preprocessing
params.datasetSize = 1e5;
params.scalingMethod = 'minmax';
params.hashFunc = 'SHA-256';

%% Software / Hardware
params.MATLABVersion = 'R2022b';
params.CPU = 'Intel Core i7 @ 3.4GHz';
params.RAM = '16 GB';
end
