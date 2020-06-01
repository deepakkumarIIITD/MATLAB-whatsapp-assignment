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
% returns the cdf of the probability 
% distribution object pd, evaluated at the values in pd.mu.
head_count = 0;
% we initialize a variable head
tail_count = 0;
% we initialize a variable tail
for i=31:40
% here we initialize the for loop for the 
% data from 31 till 40 entries(total = 10 entries)
    if VarName1(i) < Probability_density.mu
% we check in the if statement that the data
% at i-th position is less than 
% expected time gap(which is pd.mu) 
        head_count = head_count + 1;
% we add 1 to head_count variable
    else
        tail_count = tail_count + 1;
% in else statement we add 1 to tail_count 
% variable as the condition in if has failed
    end
end
% for loop ended 
mean_sum = 0;
% here we initialize the for loop
for i=1:size(VarName1)
    mean_sum = mean_sum + VarName1(i);
end
% we find the mean of the data
mean = mean_sum/40;
% now we display our results
disp("the probability that the time elapsed until your next message is less than the expected time gap : " + Probability)
disp("Number of heads : "+head_count);
disp("Number of tails : "+tail_count);
disp("mean of the data is : " + mean);
% we can see after running the code
% that heads + tails = 10 , means that
% code ran for 10 data inputs