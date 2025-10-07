function best = hoa_optimization(params, objectiveFcn, dim)
rng(params.randomSeed);
popSize = params.popSize;
maxIter = params.maxIter;

pop = rand(popSize, dim);
fitness = inf(popSize,1);

best.fitness = Inf;
best.x = [];

for t=1:maxIter
    for i=1:popSize
        fitness(i) = objectiveFcn(pop(i,:));
    end
    [minVal, idx] = min(fitness);
    if minVal < best.fitness
        best.fitness = minVal;
        best.x = pop(idx,:);
    end
    for i=1:round(popSize*params.exploitationRatio)
        j = randi(popSize);
        neighbor = pop(j,:) + params.localRadius.*(rand(1,dim)-0.5);
        neighbor = min(max(neighbor,0),1);
        if objectiveFcn(neighbor) < fitness(j)
            pop(j,:) = neighbor;
        end
    end
    for i=1:round(popSize*params.explorationRatio)
        idx = randi(popSize);
        pop(idx,:) = rand(1,dim);
    end
    numScouts = max(1, round(popSize*params.scoutRatio));
    [~, worstIdx] = maxk(fitness, numScouts);
    for k=1:numScouts
        pop(worstIdx(k),:) = rand(1,dim);
    end
    if t>1 && abs(best.fitness - minVal) < params.convergenceThresh
        break;
    end
end
end
