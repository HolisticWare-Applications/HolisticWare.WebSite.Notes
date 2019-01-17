# Data Science

data-science.md

https://www.benfrederickson.com/ranking-programming-languages-by-github-users/

https://semanti.ca/blog/?how-to-prepare-for-a-machine-learning-interview


ML systems (TensorFlow, Keras, scikit-learn, numpy, scipy, and pandas) are all open source, well-documented and of an excellent stability

Data gathering (identifying the data you need, the sources you can get it from);
Data cleanup (removing noise);
Identifying and fixing missing values;
Feature engineering (transforming your examples into a vector format);
Train/validation/test split;
Choice of the algorithm;
Addressing the problems of high bias (underfitting) or high variance (overfitting);
Hyperparameter tuning;
Model deployment in production.



Machine Learning problems can be separated into three major domains:

Supervised learning;
Unsupervised learning;
Reinforcement learning.
Supervised learning deals with situations when you have labeled training examples, such as messages 
with the label either spam or not spam. Such subproblems as classification or regression belong to this 
domain.

Unsupervised learning deals with cases when all your data is not annotated, but you have to find some 
structure in it. Such subproblems as clustering or topic modeling belong to this domain.

Reinforcement learning deals with sequential decision problems. Usually, you don't have examples, but rather 
an environment and an agent that can act in this environment. Every time the agent executes an action it gets 
a reward. The goal is to learn a policy that permits the agent to maximize the reward in the long term.


able to explain (at least conceptually) how the following algorithms work:

Decision Trees;
Linear and Logistic Regression,
Support Vector Machines;
Perceptron;
Multilayer Perceptron (Feedforward Neural Network).



Specifically, in the SVM context, you have to be able to explain how kernels are used. In Multilayer Perceptron case you have to be able to talk about activations, loss functions, as well as forward and backward propagation.

For unsupervised learning, you have to be able to talk about such algorithms as K-Means clustering (and its difference from Expectation Maximization), Latent Dirichlet Allocation (and its difference from Latent Semantic Indexing). You have to be able to explain how to find the right number of clusters in the data or topics in the collection of documents.

For reinforcement learning, you can learn Q-learning, the algorithm most frequently cited in the literature. However, the knowledge of one of the modern deep reinforcement learning algorithms will play in your favor.




Feature extraction os one of the most important parts of any the machine learning project. You have to be able to explain how text or sound is converted into features, how one-hot encoding works and how you can transform continuous attributes into categorical (binning) or the other way around (embedding).


n Machine Learning, data is often very high-dimensional. Visualizing data points that have more than three dimensions can be challenging for humans.

You have to know several dimensionality reduction algorithms and be able to explain how they work and how they are different from one another. We recommend to master at least these three algorithms:

Principal Component Analysis,
t-SNE, and
UMAP.



You train your model but it fails to predict the training data correctly. What would you do?

Possible solutions include:

The data is possibly non-linearly separable, so use kernels;
The data is probably too high dimensional, so a dimensionality technique, such as PCA or UMAP, could be used;
The features are not informative enough, so add additional features or combine the existing ones into meta-features;
The neural network is too small, so increase the number of units or layers.
You train your model but it fails to predict the test data correctly. What would you do?

Possible solutions include:

If the training data is not predicted correctly either, then first make sure it is predicted correctly, then fix the issue with the test data.
If the training data is predicted correctly, then you can try:
use regularization (L1, L2, dropout);
get more training data (even if labeling more examples by hand).





able to explain basic probability distributions and when each is applied. Among the most important ones are Normal, Poisson, Binomial, Multinomial and Uniform distributions.

Be ready to answer the following questions:

Name a probability distribution other than Normal and explain how to apply this probability?

How best to select a representative sample of search queries from 5 million?

The mean heights of men and women in a population were calculated to be mM and mW. What is the mean height of the total population?

Three friends in Seattle told you it’s rainy. Each has a probability of 1/3 of lying. What’s the probability of Seattle is rainy?

How do you detect if a new observation is an outlier?

What is the Central Limit Theorem? Why it's important?

Explain the difference between mean and median.

Define variance.

What is covariance? Where is it used?

What is the goal of A/B Testing?

What is sampling? Why we need it? What is stratified sampling?




coding challenges:

Find all palindromic substrings in a given string.

How would you check if a linked list has cycles?

Merge k (in this case k=2) arrays and sort them.

Find max sum subsequence from a sequence of integers.

Create a function that checks if a word is a palindrome.

You have a ‘csv’ file with ID and Quantity columns, it doesn't fit in memory. Write a program in any language of your choice to aggregate the Quantity column.

Given a list A of objects and another list B which is identical to A except that one element is removed, find the removed element.

Given a list of integers (positive & negative), write an algorithm to find whether there’s at least a pair of integers that sum up to zero.







questions could be asked in the interview and you have to be prepared to answer them:

What are your go-to packages? (scikit-learn, xgboost, Pandas, numpy/scipy, Keras, matplotlib)

What techniques do you use to fine-tune hyperparameters? (Cross-validation, grid-search, random-search, tree of Parzen estimators, Bayesian optimization.)

How to quickly find if a text contains one of a million substrings. (Prefix trees.)

Explain word embeddings. How are they learned?

What is Stochastic Gradient Descent. Describe it in your own words?

Explain the difference between Gradient Descent and Stochastic Gradient Descent. When use which?

How can dropout be useful in a neural network?

Explain Batch Normalization. What benefit does it bring?

What is the use for a 1x1 convolution?

How to represent a text document for machine learning?

How to predict the next value in a time series?

How to measure the similarity of two words or two documents?

You have a search engine. How would you generate related searches for a query?

How would you suggest followers on Twitter?

What are support vectors in Support Vector Machines?

What's the difference between Logistic Regression and SVM?

When training an SVM, what value are you optimizing for?

What is an unbalanced classification problem and how to deal with it?

What is data wrangling? Explain its main steps.

What would you do to summarize a Twitter feed?

Explain the problem of vanishing gradient. How to deal with it?

Explain the problem of exploding gradient. How to deal with it?

Explain the need of the bias term.

Explain the difference between unsupervised, semi-supervised and self-supervised learning.

How Generative Adversarial Neural Networks (GANs) work?

What is an auto-encoder? Why do we "auto-encode" something?

What is a variational auto-encoder? Where can it be useful?

When do we use sigmoid for an output function? What is the problem with sigmoid during backpropagation?

What is transfer learning? How to do it in neural networks?

How to combine two different kinds of input (ex: image and text or sequence and vector) in a neural network?

How to make a neural network predict two different kinds of output?

How does a logistic regression model know what the optimal coefficients are?

Why use feature selection? What are the main techniques of feature selection?

Explain ensemble learning. What techniques do you know?

Why are ensemble methods superior to individual models?

Explain bagging.

Explain boosting.

How to combine predictions of several different learning algorithms?

Explain the difference between parametric and non-parametric models?

Why SVM doesn't give a probabilistic output? Can we make transform it to get probabilities?

How to build a multiclass classifier? Name two different strategies.

How to build a multilabel classifier?

What’s the trade-off between bias and variance?

How is KNN different from k-means?

What is the difference between hard and soft clustering?

Define precision and recall.

State the Bayes Theorem? Why it's so important?

How AlphaGo/AlphaZero work?

Why Naive Bayes is called "naive"?

What’s the difference between a generative and discriminative model?

How do you handle missing or corrupted data in a dataset?

How to measure the difference between two probability distributions?

What is cross-entropy? How is it useful in Machine Learning?

How to detect outliers?

Explain the difference between a test set and a validation set.






☛ KDnuggets, by Gregory Piatetsky-Shapiro - https://www.kdnuggets.com/

☛ MLMastery by Jason Brownlee - https://lnkd.in/fDbVP-y

☛ Towards Data Science - https://lnkd.in/fw_6RrK

☛ Data Science Central - https://lnkd.in/fUXQ2GJ

☛ Analytics Vidhya by Kunal Jain - https://lnkd.in/fTTxmhv

☛ SmplyStats by Roger Peng https://lnkd.in/f-jafNc

☛ Dataquest Blog by Vik Paruchuri- https://lnkd.in/fzPUDBk

☛ Business Science Blog by Matt  https://lnkd.in/fvAwWMd

☛ Data Aspirant - http://dataaspirant.com/

☛ Peekaboo by Andreas Mueller https://lnkd.in/fXS_cZR

☛ CloadML by Randy- http://www.claoudml.co/

☛ Becoming a Data Scientist by  Renee Teate - https://lnkd.in/fms7Vwt

☛ The Shape of Data - https://lnkd.in/fKhpwdS

What would you like to suggest?
Carla Matt  Favio Matthew Nic Kyle Megan

Specially Suggested-
☛ DataCamp blog - https://lnkd.in/fFy6UQt
☛ The Variance Explained David Robinson, DataCamp - https://lnkd.in/fha6gUQ


Link to the best Podcasts on DS/ML  - https://lnkd.in/fqNARFj
hashtag

http://varianceexplained.org/


1. The DataCamp blog.
https://www.datacamp.com/community/blog

https://github.com/mine-cetinkaya-rundel




 Business Science Blog: http://www.business-science.io/blog/
I just posted on doing a Kaggle Competition in 30 Minutes: http://www.business-science.io/business/2018/08/07/kaggle-competition-home-credit-default-risk.html


