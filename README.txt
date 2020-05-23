README.txt
Jianxing Liao, Chong Wang, Xinyu Zhang

The following two python scripts implement the original coverage maintenance protocol (Grid-Original.ipynb) as well as our novel approach which incoporates logistic regression and the coverage maintenance protocol (Grid-Logistic.ipynb).

Please refer to the first cells of each jupyter notebook for further instructions.

The matlab script "logistic_reg.m" implements logistic regression. Other utility functions are included.

"Traning Set.csv" is the training set we used to train our logistic model.
"data.csv" is the synthetic data that we will use as input to our trained logistic model.
"Probability.csv" is the output of the logistic model on "data.csv", which we will use as input to our coverage maintenance algorithm.