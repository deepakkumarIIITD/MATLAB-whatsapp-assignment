% plots a histogram with 4 bins and fits a density 
% function from the distribution specified by dist(which is Normal -Normal Distribution)
% the histogram is for the first 30 entries in the data
histfit(VarName1(1:30,1),4,'exponential');
% now we use fitdist function with parameters VarName1 and 'Normal'.
% this creates a probability distribution object by fitting the distribution 
% specified by distname(here it is Normal - Normal Distribution)
% to the data in column vector namely VarName1 here.
Probability_density = fitdist(VarName1,'exponential');
% returns the cdf of the probability 
% distribution object pd, evaluated at the values in pd.mu.
Probability = cdf(Probability_density , Probability_density.mu);
% we initialize a variable mean_sum
mean_sum = 0;
% here we initialize the for loop
for i=1:size(VarName1)
    mean_sum = mean_sum + VarName1(i);
end
% we find the mean of the data
mean = mean_sum/30;
% now we display our result
disp("the probability that the time elapsed until your next message is less than the expected time gap : " + Probability)
disp("mean of the data is : " + mean);