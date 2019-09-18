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
