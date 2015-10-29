N=[10,50,100,200,500,1000];
AveragePLA = zeros(1,6);
AverageLRPLA = zeros(1,6);
% Iterate PLA for inputs from N=[10,50,100,200,500,1000]
for i=1:6
    %N(i) this gives the input 10,50....
    % Generate Data first 
    AvgPLA=0;
    AvgLRPLA=0;
    for j=1:100
        [X, Y]=generateData(N(i));
        w0= zeros(1,3);
        [wPLA, itersPLA]=pla(X,Y,w0);
        AvgPLA= AvgPLA+itersPLA;
        [wLR]=pseudoinverse(X,Y);
        [wLRPLA, itersLRPLA]=pla(X,Y,wLR);
        AvgLRPLA= AvgLRPLA+itersLRPLA;
    end
    AveragePLA(i)= AvgPLA/100; 
    AverageLRPLA(i)= AvgLRPLA/100; 
end
AveragePLA
AverageLRPLA
%scatter(X(:,1),X(:,2))

