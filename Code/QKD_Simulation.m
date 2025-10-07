function qkey = qkd_simulation(params, seed)
if nargin < 2
    seed = params.randomSeed;
end
rng(seed);

N = round(params.qubitsPerSession);
qraw = randi([0,1], 1, N);

flipMask = rand(1,N) < params.depolarProb;
qraw(flipMask) = 1 - qraw(flipMask);

lossMask = rand(1,N) < params.qubitLossProb;
qraw(lossMask) = [];

M = length(qraw);
detMask = rand(1,M) < params.detectorErrorProb;
qraw(detMask) = 1 - qraw(detMask);

eveMask = rand(1,M) < params.eavesdropperFraction;
qraw(eveMask) = 1 - qraw(eveMask);

retain = max(1, round(length(qraw) * params.privacyAmplification));
qkey = qraw(1:retain);
end
