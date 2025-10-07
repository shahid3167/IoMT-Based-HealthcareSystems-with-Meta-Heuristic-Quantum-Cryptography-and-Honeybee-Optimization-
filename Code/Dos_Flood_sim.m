function traffic = dos_flood_sim(params)
numNodes = params.numAttackNodes;
pkts = params.packetsPerNode;
traffic = zeros(numNodes, pkts);
timestamps = cell(numNodes,1);

for i=1:numNodes
    for j=1:pkts
        traffic(i,j) = params.packetSize;
    end
    timestamps{i} = (0:(pkts-1))*params.interPacketInterval;
end
traffic = struct('sizes', traffic, 'times', {timestamps});
end
