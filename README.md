# Perceptron-Learning-Algorithm
English description of the algorithm:
Assumptions:
1. The Dataset used for this experiment is a randomly generated dataset in MATLAB, where all the points generated were uniformly sampled between [-1,1].
2. The Input of the set uses: X where X has 2 independent variables x1, x2 in the set [-1,1] and [-1,1].
3. Thus we have the generated set.
4. This set is labeled according to another set of 2 points which is generated randomly. These points also lie in the uniform sample [-1,1]. These points are used as reference and all the data generated above are labeled as positive (1) if it lies above the  reference target line and negative (-1) if the points (x1,x2) lies below the reference line.
5. Thus we have a Data set X and its corresponding Labels Y.
Algorithms:

PLA:
The Perceptron Learning Algorithm uses the concept of a perceptron to learn from the dataset.
The steps in the algorithm can be explained as follows:
1. The input variables in X is added with a bias variable x0. Which is set to 1 so that we have x0,x1,x2.
2. We also have the corresponding labels in Y.
3. We randomly generate the weights W0 and set it to a small number. Here, we are using the initial weights for PLA as W0=[0, 0, 0].
4. For each input data xi in X we calculate the output with the hypothesis function as:
Y_predicted=x1w0+ x2w2+ x0w0
5. Now the sign of the y_predicted is calculated. 
6. This is compared to the yi of the corresponding Y.
7. If sign(y_predicted) is similar to yi then we proceed to the next input xi in X.
8. If sign(y_predicted) is different than yi we say that there was some problem with the weights that were selected. Hence we update it.
9. The updation is done as follows: For the particular xi where there was a wrong prediction:
W0= W0+ (yi*xi).
10. If we update the weight at any input vector, we go back to step 4 and start the iteration all over again.
11. If all the input vectors were iterated without the need for change in weight, then we take that as final weight.
12. This weight can be considered as the right hypothesis for the dataset. 
13. It can hence be used for testing.
Linear Regression for PLA:
The steps used to find weights in linear regression is:
1. The dataset X is taken. It is added with bias variable x0. This is set to 1. Hence we have x0,x1,x2.
2. We also have corresponding labels Y.
3. The weight is calculated using the pseudoinverse formed by X.
4. The formulae can be written as: W0=  XPesudoInverse*Y.
5. We need to calculate XTraspose of X.
6. We then multiply XTranspose*X.
7. We then take the inverse of that term calculated above XInverse=Inverse(XTranspose*X)
8. We then calculate XPesudoInverse=XInverse*XTranspose.
9. This pseudo-inverse is then multiplied to Y. XPesudoInverse*Y to obtain W0.
10. These weights W0 are used as initial weights for PLA algorithm mentioned above.

Experiments:
1. The dataset were generated for N=[10,50,100,200,500,1000].
2. For each dataset, the experiment was performed 100 times.
3. Hence total experiments were: 6*100= 600.
4. Below are few representations of how the algorithm performed.
5. One Experiment for PLA with initial weights as 0 took the below number of iterations to converge.
6. One experiment of PLA using Weights generated from linear regression as initial weights performed as below:
7. The Observations:
Since the dataset is Random there are variations in the iterations observed.
However the following are observed:

1. For the dataset ranging from N
10 =  Average iterations are around 10 example: 6.6, 11.3 etc.
50 = Average iterations are around 50 example: 45.75, 59.8 etc.
100 = Average iterations are around 100 example: 87, 110.4 etc.
200 = Average iterations are around 200 example: 210.39 etc
500 = Average iterations are around 500 example:  399.657, 503.3 etc
1000 = Average iterations are around 1000 example: 955.4, 928.3 etc.

2. The SIZE of the Dataset contributes to the iteration. Smaller dataset require lesser iterations to converge as seen above. Larger dataset require more. 
3. It is also observed that for an average 600 experiments over 10 times we observe that majority of the output iterations are lesser for PLA with Weights from Linear Regression.
4. We can say that PLA with Linear regression does give a good estimate for initial weights. But it need no certainly give lesser iterations at all times. 
5. The average performance of PLA with initial weights from Linear regression is better than PLA with initial weights as 0.

8. The combined results of both the algorithms is shown in the below graph. This graph is constructed with several experiments of PLA and then taken average of performance with and without Linear regression.

CONCLUSION:
In conclusion I would like to point that, Linear Regression is  a simple method. This gives good initial estimates for PLA. Hence is good to be used. Also, Linear Regression with PLA can be combined with Pocket algorithm which could be used to reduce the number of iterations and do the analysis smartly.
