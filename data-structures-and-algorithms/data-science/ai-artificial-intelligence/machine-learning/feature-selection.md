# Feature Selection

feature-selection.md

*   An Introduction to Variable and Feature Selection, Isabelle Guyon, Andree Elisseeff

    *   http://www.jmlr.org/papers/volume3/guyon03a/guyon03a.pdf

    *   https://dl.acm.org/citation.cfm?id=944968

*   Feature Selection

    *   https://en.wikipedia.org/wiki/Feature_selection

*   Feature Extraction

    *   http://clopinet.com/fextract-book/IntroFS.pdf

    *   https://cw.fel.cvut.cz/b181/_media/courses/a6m33dvz/prednasky/dvz2012_06_prednaska_en.pdf

    *   https://people.eecs.berkeley.edu/~jordan/courses/294-fall09/lectures/feature/

    *   http://www.causality.inf.ethz.ch/ciml/FeatureExtractionManuscript.pdf




Do you have domain knowledge?
 If yes, construct a better set of ad hoc”” features
Are your features commensurate? 
If no, consider normalizing them.
Do you suspect interdependence of features?
 If yes, expand your feature set by constructing conjunctive features or products of features, as much as your computer resources allow you.
Do you need to prune the input variables (e.g. for cost, speed or data understanding reasons)?
 If no, construct disjunctive features or weighted sums of feature
Do you need to assess features individually (e.g. to understand their influence on the system or because their number is so large that you need to do a first filtering)?
 If yes, use a variable ranking method; else, do it anyway to get baseline results.
Do you need a predictor?
 If no, stop
Do you suspect your data is “dirty” (has a few meaningless input patterns and/or noisy outputs or wrong class labels)?
 If yes, detect the outlier examples using the top ranking variables obtained in step 5 as representation; check and/or discard them.
Do you know what to try first?
 If no, use a linear predictor. 
If yes, try a non-linear predictor with that subset.
Do you have new ideas, time, computational resources, and enough examples? 
If yes, compare several feature selection methods, including your new idea, correlation coefficients, backward selection and embedded methods. Use linear and non-linear predictors. Select the best approach with model selection
Do you want a stable solution (to improve performance and/or understanding)? If yes, subsample your data and redo your analysis for several “bootstrap”.


Say you have a dataset in hand. You want to use the relevant information derived from the set to train your machine learning algorithm for classification or regression task. These information are called features. A good set of features can produce good results.


In Artificial Intelligence, features are observable or derived properties of instances in a model’s domain. For instance, for an intelligent agent which learns to classify types of fish, features could be size, colour, shape, scale patterns, etc. of fish. The model then learns the correlation between these features and the class of fish, in time becoming able to determine which class of fish a given instance is only by looking at these features.

https://www.datarobot.com/wiki/

https://www.quora.com/What-are-features-in-machine-learning


Tip 1:

Pick up a problem from the Engineering Mathematics course of past, and try to dive into in it with practical examples. Then try to solve these equations using scientific computing libraries such as scipy and numpy.

If you are comfortable with the above stuff, you might want to get a headstart to ML, so you plan to take the MOOCs on coursera. Machine Learning courses by Dr. Andrew Ng are most popular these days. But then you might fail to complete those courses due to lack of time to complete the assignments. Here is the tip for you.

+ Useful resource: Top machine learning courses online

Tip 2. Identify if you need machine learning development

Machine learning is costly and time-consuming, and experts are thin on the the ground and high in demand.

However, if you’ve got data, you can use it to be a driver for your business. It can be something small or big depending on your business objectives, timeframe, and budget.

In fact, you should consider machine learning development if you want to improve your business in the following 3 directions:

• Making predictions and optimising operations. For example, businesses use big data and machine learning models to predict if a customer responds to a marketing campaign.

• Summarising and extracting information. For instance, Natural Language Processing, a machine learning technique, can be used for highlighting the most important information from legal documents which may be 10 000 pages, and an end user will have to read just the summary – 40 pages.

• Enhancing security. Many companies are now using AI and machine learning models to ensure cybersecurity. That is especially relevant for financial companies and fintechs. However, cybersecurity is currently a hot topic for all domains, especially in the light of GDPR and other regulatory and security standards.

Tip 3:

You can just view the videos rather completing the assignments along at first. Once you are comfortable with the theory behind machine learning, you can start doing the assignments. Python Implementations of the algorithms are the best

While doing freelancing, I frequently encounter people who are good with first two points, but they struggle at writing the python implementations. They just lack the python packages knowledge and practice over them. Here are some resource that will help you:

Tip 4. Don’t underestimate data preprocessing and cleaning

Data preprocessing takes up around 80 per cent. There is no automatic way to do it. You need to merge many data tables and use different data sources. Then Data Scientists will be able to play with the models and pick which one best fits a specific business objective.

Data Cleaning is a crucial part of data preprocessing. It is analysing the data and identifying if it is good enough to be used in a machine learning model. Its key objectives:

• Removing noisy data that may bring misleading results.

• Inputting missing data. However, it should be taken into account that the missing data may be the info itself, and it is supposed to be missing.

Tip 5. Choose between Machine learning APIs and your own development

Companies that want to adopt machine learning can go two ways: develop their own solution or use APIs and services of such companies as Amazon, Microsoft, Google, etc. The second way is the easiest one. However, there is a serious tradeoff – you sacrifice configurability and control of the system. For instance, Amazon service is fixed just on one model – logistic regression. Whereas, ability to choose the right model is one of the prerequisites for the success of a machine learning project. Thus, companies should outsource machine learning to cloud only if they’ve got very specific and simple tasks.

Furthermore, as we’ve indicated previously, 80 per cent of machine learning is not about tuning up the models but rather preparing the data to be fit for the models, and you can’t outsource this part to Amazon, for example.

Thus, if you want something more complex, and you don’t want to sacrifice flexibility, you’d better go for your own development (either develop inhouse or outsource).

Tip 6:

Pandas — A Data Processing Library In Python

Understanding the essence of Linear Algebra

Numpy — A Numerical Computing Library In Python

Understanding Neural Networks DeepLearning

Best DeepLearning MOOC on Coursera

Now, you have worked hard over yourself in learning the concepts of deep learning, you want to build your own projects and a portfolio to get a good job. Here is a list of simple projects I worked on currently.

Tip 7:

Dogs Breed Classification (uses transfer Learning)

Optical Character Recognition (uses sequence models)

See and Tell Using Deep Learning

Ask the Net

Face Swapping using DeepLearning

Voice Cloning Using DeepLearning

At last, the important tip, that will really put your programming, mathematical and data science skills to the test.

Tip 8. Find the most suitable experts for your Machine learning development

If you’ve opted for your own Machine Learning development, you need to find the most suitable experts for your project.

You need the following Machine learning specialists

• Data Scientists to deploy the algorithms. They often use off the shelf libraries.

• NLP specialists to do something sophisticated with NLP

• Data engineers to create Big Data architectures for the project, ensure system scalability, make it more like production thing

• Computer Vision engineers if you need image recognition models

• Machine Learning engineers if you have to deploy some state of the art algorithms (e.g. for reinforcement learning) and you need to to do some research specific for the project.

• Speech recognition engineers if you need some speech recognition done. However, there are not a lot of business cases.

Tip 9:

Do not just git clone the projects, but also implement your own architectures and hacks from scratch. Machine Learning is all about the research, so doing a good research will boost up your confidence.
