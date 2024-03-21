# Deep Learning

deep-learning.md

*   https://www.freecodecamp.org/news/tag/deep-learning/

## Prerequisites

*   Learn Data Structures and Algorithms in 48 Hours

    *   https://www.freecodecamp.org/news/learn-data-structures-and-algorithms-2/
    
*   Deep Learning Fundamentals Handbook – What You Need to Know to Start Your Career in AI

    *   https://www.freecodecamp.org/news/deep-learning-fundamentals-handbook-start-a-career-in-ai/

*   Machine Learning Fundamentals Handbook – Key Concepts, Algorithms, and Python Code Examples

    *   https://www.freecodecamp.org/news/machine-learning-handbook/

*   Ace Your Deep Learning Job Interview

    *   https://www.freecodecamp.org/news/ace-your-deep-learning-job-interview/

*   How to Use Fast.ai – A Beginner-Friendly Gateway to Deep Learning

    *   https://www.freecodecamp.org/news/how-to-use-fast-ai-for-beginners/

*   PyTorch vs TensorFlow – Which is Better for Deep Learning Projects?

    *   https://www.freecodecamp.org/news/pytorch-vs-tensorflow-for-deep-learning-projects/

*   Free Live Course: Deep Learning with PyTorch

    *   https://www.freecodecamp.org/news/free-deep-learning-with-pytorch-live-course/

*   How to Add Two Numbers – The Machine Learning Way

    https://www.freecodecamp.org/news/how-to-add-two-numbers-using-machine-learning/

How to Use TensorFlow for Deep Learning – Basics for Beginners

    https://www.freecodecamp.org/news/tensorflow-basics/

Deep Learning with Julia – How to Build and Train a Model using a Neural Network

    https://www.freecodecamp.org/news/deep-learning-with-julia/

Perception for Self-Driving Cars — Free Deep Learning Course

    https://www.freecodecamp.org/news/perception-for-self-driving-cars-deep-learning-course/



*   Data science

    *   https://lunartech.ai/course-overview/


https://en.wikipedia.org/wiki/Differential_(mathematics)

https://www.freecodecamp.org/news/linear-algebra-full-course/

College Algebra - Full Course

    https://www.youtube.com/watch?v=LwCRRUa8yTU&ab_channel=freeCodeCamp.org
    
    *   https://twitter.com/PrasoonPratham/status/1332934132792365056

*   https://www.freecodecamp.org/news/learn-deep-learning-from-the-president-of-kaggle/

*   Full stack Deep Learning

    *   https://course.fullstackdeeplearning.com/

    *   https://fall2019.fullstackdeeplearning.com/

*   Deep Learning - Foundations and Concepts

    Bishop

    https://www.bishopbook.com/

    Chris Bishop "Deep Learning: Foundations and Concepts"

    new book 20231211


The AI we use everyday in our phones, cameras, and smart devices usually falls into the category 
of deep learning. We’ve previously covered algorithms and artificial neural networks – concepts 
surrounding deep learning – but this time we’ll take a look at how deep learning systems actually 
learn.


Deep learning, to put it simply, is a method by which a machine can extract information from data by 
sending it through different layers of abstraction. It’s a bit like using a series of increasingly 
small sifters to sort through chunks of rock for tiny bits of gold. At first you’d filter out large 
stones, then small rocks and pebbles, and finally you’d sift through whats left for flakes.

Only with deep learning you’re teaching an AI to recognize the differences between things like cats 
and dogs, and to find patterns in large amounts of data.

The way this is accomplished is through two different types of learning: supervised and unsupervised. 
Technically, there’s also semi-supervised learning, but for the purposes of this basics article we’ll 
only be covering, well, the basics.

Supervised learning

Supervised learning is responsible for most of the AI you interact with. Your phone, for example, can 
tell if the picture you’ve just taken is food, a face, or your pet because it was trained to recognize 
these different subjects using a supervised learning paradigm.

Here’s how it works: developers use labeled datasets to teach the AI how specific objects appear in 
images. They might take one million images of different food dishes from Instagram, for example, and 
painstakingly label each one before feeding it to the AI.

It’ll then process everything it can about the images to determine how items with the same labels are 
similar. In essence it puts bits of data into groups – like separating laundry before washing. Once 
it’s done, developers check it for accuracy, make any necessary tweaks, and repeat the process until 
the AI can correctly identify objects in images without labels.


Unsupervised learning

When we know exactly what we’re looking for, supervised learning is the way to go. But in instances 
where we’re unsure or we just want some insights, it won’t work.

Let’s say, for example, you’re trying to determine if someone is fudging the books at work, but you’ve 
got millions of pages of financial records to examine. You need a computer to help you look for patterns 
that could indicate theft, but there’s no way to create a dataset with ground-truth examples because 
you’re not entirely sure what you’re looking for. Enter unsupervised learning.

Here’s how it works: developers create algorithms that scour data for similarities. Instead of trying 
to determine if a group of pixels is cat or a dog, for example, it simply tries to figure out everything 
it can about an unlabeled dataset. Since AI has no way of knowing what a cat or a dog is unless you label 
their images in your data, it’ll just output patterns in clusters. It might separate the images into dogs, 
cats, brown animals, white animals, spotted ones, striped ones, big ones, furry ones … you get the picture.

In the aforementioned situation where we’re looking for evidence someone’s cooked the books, we might 
design the algorithms to look for math that doesn’t add up. Thanks to deep learning – in this case powered 
by unsupervised learning methods – our model should be able to detect anomalies that, while meaningless to
the computer, indicate where the money’s gone missing from.

Deep learning is complex, and often difficult to understand. But the concepts behind it, specifically how 
it learns, are relatively straightforward. When a developer knows what the output should be, they’ll use 
supervised learning. If the output is uncertain they’ll use unsupervised learning – training with unlabeled 
datasets.


https://thenextweb.com/artificial-intelligence/2019/07/06/a-beginners-guide-to-ai-supervised-and-unsupervised-learning/

https://thenextweb.com/syndication/2019/07/07/how-big-biased-datasets-make-social-inequalities-worse/
