# Data Science 

data-science.md

2 general tracks within data science: 

    *   analytics 
    
    *   engineering. 
    
Some say for the former credentialing and  education is more important but only for signaling purposes.


premise that data analytics or data engineering are part of data science is incorrect. 

are three fields that intersect at data:

*   Data science

    *   regression + statistics

*   data engineering

    *   movement of data + infrastructure

*   data analytics 

    *   modeling + reporting/analysis

*   these 3 get confused a lot

*   super related. 



*   companies are still developing their frameworks for these things. 

*   startups just hire one “data” person and they do all of them at the beginning. 


great blog post on this https://veekaybee.github.io/2019/02/13/data-science-is-different/




*   for many the title "data scientist" isn't very informative as it can mean anything from 
"deep learning research engineer" to "business analyst", depending on the role and company. 

I draw a lot of inspiration from others in the space and I'd agree with this tweet: 
https://twitter.com/jeremystan/status/1153697809574461441


*   listing and then putting into categories functions and responsibilities.

*   Categories 

    *   Data Science, 
    
    *   Data Analysis, 
    
    *   Data Engineering, 
    
    *   Statistical Analysis, 
    
    *   Actuarial, 
    
    *   Machine Learning, 
    
    *   Artificial Intelligence,

*   Functions 

    *   build pipelines. 
    
    *   decision analytics, 
    
    *   build and deploy ML, 
    
    *   devops for ML, 
    
    *   research & publish ML, 
    
    *   identify data sources 
    
    *   seek out and obtain data,


*   specialization as is not depressing, 

*   it as realistic and a sign of organizational maturity







OK, data science people: here's a challenge for you, timed for the Westminster Dog Show this week. Here are all the best-in-show winners since 1907. What do you make of it?
CSV 
best-in-show-winners.csv
6 kB CSV— Click to download


28 replies

Joe Lucas  3 months ago
Sounds like a fun data set. I'll check it out later. Thanks for sharing!

Hendrik  3 months ago
Do you have any more info?

Hendrik  3 months ago
There's not alot of data here unless you want to go through a massive research, scraping, collection, and cleaning process (edited) 

BobP  3 months ago
I'm not sure what you want: the contestants? other dog shows? what do you mean "massive research etc." ?

BobP  3 months ago
Full disclosure: I have a Lab. I watch some of those shows, and they always scan the Sporting dogs, so you see one Lab, and it is never, never chosen.
Maybe in some of these 113 years, there was a Lab in the finalists. But obviously it never won.

Hendrik  3 months ago
not so much that, but looking at the data, we should pull in the characteristics of each animal and then probably also the general average for each breed.

Hendrik  3 months ago
Then you want to look at the variances between winners and their breed and look at how all of these change from year over year

Hendrik  3 months ago
you also want to pull data from that years groups, which dogs won that, and then do the same thing

Hendrik  3 months ago
finally you should pull demographic data from the judges to identify implicit bias

BobP  3 months ago
I have a thread going on Twitter (inconclusive, IMHO).
I'm in favor of all that, but I don't think they have numerical scores recorded for dogs. It's just a snap subjective judgment.

BobP  3 months ago
Anyhow, they are claiming that lots of breeds have never won, and it doesn't mean anything.
I think Data Science is made for things like this: prove that it does mean something because the likelihood of it happening randomly is negligible.
But as always, it's "getting the data" that's the hard part.

BobP  3 months ago
But don't let the Perfect be the enemy of the Good: cultivate the habit of scientific thinking.
You could graph the ideal weight of each winner (by breed) by year, and then the weighted averages of all registered dogs in that year. I think this would show a pronounced bias towards middle-weight dogs. We assume if the Best In Show was, say, a standard poodle, its weight would have to be very close to the breed standard. So you could just use that.
You could also research each judge (not in the CSV, but it was in the web page that I derived it from) and see if he or she always chooses a particular Group  (sporting, toy, etc.). The judges might be biased towards a particular dog type.

BobP  3 months ago
Another idea is: the popularity of breeds in that year. Maybe the judges are biased against popular breeds?

Hendrik  2 months ago
cannot comment with out looking at the data, that is a theory worth testing, I think the judge's origin would probably be more significant.

Hendrik  2 months ago
I reached out to my sister who works in animal pharma to see if she could point me in the direction of kanine data sets

Hendrik  2 months ago
the other thing to do would be to create a network diagram of owners and officials. that could used to test if there are network effects.

Hendrik  2 months ago
so you can use this as your benchmark for breeds: https://www.akc.org/dog-breeds/
and
https://www.akc.org/press-center/facts-and-stats/breeds-year-recognized/
American Kennel ClubAmerican Kennel Club
Dog Breeds - Types Of Dogs - American Kennel Club
Complete list of AKC recognized dog breeds. Includes personality, history, health, nutrition, grooming, pictures, videos and AKC breed standard.
American Kennel ClubAmerican Kennel Club
Breeds by Year Recognized – American Kennel Club
The AKC currently registers 193 dog breeds. The chart below lists all AKC recognized breeds and the year they first became registrable with the AKC.  DATE – BREED 1878 – Pointer  1878 – Retriever (Chesapeake Bay)  1878 – Spaniel (Clumber)  1878 – Spaniel (Cocker)  1878 – Setter (English)  1878 – Setter (Gordon)  1878 – Setter […](88 kB)
https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/10/26164736/Smooth-Fox-Terrier-historical-portrait.jpg

Hendrik  2 months ago
once you have benchmark, you should look into using something where you can pull in base statistics for each breed

Hendrik  2 months ago
you can get started with basic data here:
https://data.world/len/dog-canine-breed-size-akc
https://bigd.big.ac.cn/idog/breed/getAllBreed.action
https://www.mybreeddata.com/crm/index.html
data.worlddata.world
Dog/Canine Breed Size (AKC) - dataset by len
This dataset include breed size data for dogs from the American Kennel Club (AKC).

Hendrik  2 months ago
There is also a kaggle set but that one is more about image classification

BobP  2 months ago
This is great. Since I'm retired & working on a novel (and on the OC podcast :heart:), you should think of this as a resume-builder for OC'ers, not as something I want to do.  (although I do want to do it!).
So my goal would be going public with some kind of findings, and the world says "Hey, you OC folks are great! We want to hire you!"

Hendrik  2 months ago
for the folks that have time, we should think about starting git, make it a OpCode project that everyone can study off-of

BobP  2 months ago
I'm for that.
I had one lady that @Emilie knew, who wanted to do data-science on our podcast numbers. I said, fine, but you have to join OC. Last I heard from her.
If you want to do something, you have to do it for the benefit of everyone who wants to participate.

Hendrik  2 months ago
At some point I need to learn how to properly use Git, so this would be a good side project for me

BobP  2 months ago
same here, actually. Do you want to start?

BobP  2 months ago
btw, the original "Freakonomics" book detected cheating by Japanese sumo wrestlers via statistical analysis. I don't know what exactly they did to prove it. Does anyone?

Hendrik  2 months ago
honestly I just dont have the time, this will be on the back burner for a while

Hendrik  2 months ago
I'd have to read that one again, but you can usually catch cheating with a series of prediction regressors










ow do I learn to ask better questions to utilize data science techniques?
16 replies

Hendrik  2 months ago
That comes much more from the project management side. You need to develop a solid understanding on the business. Begin with Business Analysis
Requirements
User Journeys
User Stories
Then you have too look at Data Engineering/Warehousing
What data do you have on hand?
Data Quality
What data do you need
What data can you reasonably expect to capture in the short term
Next you have to look at it from the Project Manager Side
Who do we have on the team (skill sets)
Which stakeholders are involved
Which executive is driving the project
Which executive is torpedoing the project (they want the resources for their stuff)
So now how can we deliver a quick win? (edited) 

Hendrik  2 months ago
Now you have to look at short/medium/long term goals and come up with a strategy.

Hendrik  2 months ago
Throughout all this the team is experimenting with models and approaches to figure out a practical application.

Wayne Sawyer  2 months ago
Thank you.

Hendrik  2 months ago
AS for technical training, you can look into the Open Data Science Conference (ODSC), use local meet-up's and networking events

Hendrik  2 months ago
Spend some down time at work playing around with datasets and read articles and approaches on KDNuggets and Towards Data Science

tomcal  2 months ago
@Wayne Sawyer What problems do you want to use data and data analysis and "data science" to help solve?
What do you want to predict or forecast?
What ideas and hypotheses do you have?

BobP  2 months ago
@Wayne Sawyer If you have a chance to do something non-business but in the realm of data science, you should do it, even if no one's paying you. You will have something on your resume that you can talk about at an interview, without any confidentiality rules.
:+1:
1


BobP  2 months ago
I've put out two projects and gotten only one response. These would be projects you could get help with on this Slack channel.
:+1:
1


Wayne Sawyer  2 months ago
I'm trying to help our regional credit union pick our head up out of short-term, operational weeds and crunch some data.  Predicting chargeoffs, identify profitable members and products, etc.

Hendrik  2 months ago
So check it out, there are already three projects there

Hendrik  2 months ago
See if you can get your hands on some case studies that cover banking. To get people on board with DS and analytics, you need to deliver a quick win, something where you can take the data that you have, do a demographic breakdown on most profitable customers and see how/where you can target that demographic. You can do the same with products. The other side is to work with in house accounting to identify cost centers and looks at pattern optimization to smooth out cost fluctuations or identify largest cost variance, from there you can approach it using the six sigma to contain costs, standardize processes and marginalize variance and improve over time.

BobP  2 months ago
seconding what Hendrik said: you'll be amazed how gratified people are with the simplest things if they don't have an analyst on staff. You don't need to be super-clever, at least at first. (of course, if they ARE sophisticated, it's a different story.)

Wayne Sawyer  2 months ago
Thank you for all the ideas.

Hendrik  2 months ago
A huge cost saver would be automating the simple stuff, save people time in their day and you'll be their favorite person, management would be very happy to keep you around and you can use those savings to fund your projects, no new budget needed (edited) 

Wayne Sawyer  2 months ago
I keep trying to do that, but we're too busy hitting slalom check points on the course to pull over and change the oil.








http://www.becomedataengineer.com/


https://github.com/alexeygrigorev/data-science-interviews/blob/master/awesome.md


https://www.linkedin.com/posts/christina-bernard-problem-solver_overview-of-data-related-learning-plans-activity-6620680475168043008-_a9s



Does anyone know a good resource for studying string matching/comparison algorithms?
5 replies

Raz0r  2 months ago
Perhaps something on this list would be useful? https://docs.google.com/document/d/1PgOs4SRcowooL4w2NE93saaE9cN2zSdkwza4StqPopU/edit
:+1:
1


Raz0r  2 months ago
If you're interested in books, there are several in the Resources API, but I don't think any of them focus on string matching/comparison specifically. Feel free to take a look https://resources.operationcode.org/api/v1/search?q=algorithm&page_size=200
:+1:
1


Hendrik  2 months ago
Any little bit helps, I guess another way of looking at it would be a search engine right?

Raz0r  2 months ago
Yeah, you can try googling it too lol, maybe that might turn up something good

Christina Bernard  2 months ago
If you're using python this regex expression editor is useful. https://pythex.org/
Here's a regex resource: https://regexone.com/references/python
That's the foundations the outside can be any algorithm whether search or sort.
A good foundational algorithm design book in general.
https://www.amazon.com/dp/1848000693?tag=duckduckgo-fpas-20&linkCode=osi&th=1&psc=1
pythex.org
Pythex: a Python regular expression editor
Pythex is a real-time regular expression editor for Python, a quick way to test your regular expressions.
RegexOne - Learn regular expressions with simple, interactive exercises.
RegexOne - Learn Regular Expressions - Python
RegexOne provides a set of interactive lessons and exercises to help you learn regular expressions
amazon.comamazon.com
The Algorithm Design Manual
This newly expanded and updated second edition of the best-selling classic continues to take the "mystery" out of designing algorithms, and analyzing their efficacy and efficiency. Expanding on the first edition, the book now serves as the primary textbook of choice for algorithm design courses w...(16 kB)





I saw a lot of post about outcomes of Data Science schools and programs. Never been in one but I'm a Data Scientist. One thing I can say is that you should probably add an  additional 3-6 months of learning math and research papers that's where most programs fail to prepare you. That 10% difference is what makes you a Data Scientist and not a regular programmer. Especially depending on the type of job you want when done. If you don't like either, try data engineering instead. There's more jobs too. They like their jobs more and don't require math. Machine learning engineers need some math too but again I don't think the bootcamps are good most can only hire recent juniors to teach so there's gaps. And a lot of data scientist turn analyst to get a way from research paper or data engineering heavy positions. If you like ML techniques, you need comp linear algebra and a hint of calculus to get a good job


On our end, most people start off as an analyst and then move into data science, so it tends to be very project dependant (edited) 

https://www.whitehouse.gov/briefings-statements/call-action-tech-community-new-machine-readable-covid-19-dataset/





Any good examples of some intro-level python code using linear regression?
4 replies

Joe Lucas  1 month ago
https://realpython.com/linear-regression-in-python/
realpython.comrealpython.com
Linear Regression in Python – Real Python
In this step-by-step tutorial, you'll get started with linear regression in Python. Linear regression is one of the fundamental statistical and machine learning techniques, and Python is a popular choice for machine learning.(223 kB)
https://files.realpython.com/media/Linear-Regression-in-Python_Watermarked.479f82188ace.jpg
:the_horns:
1


devoted_yodel:beers:  1 month ago
Thanks!

Hendrik  1 month ago
https://towardsdatascience.com/a-beginners-guide-to-linear-regression-in-python-with-scikit-learn-83a8f7ae2b4f
MediumMedium
A beginner’s guide to Linear Regression in Python with Scikit-Learn
There are two types of supervised machine learning algorithms: Regression and classification. The former predicts continuous value outputs…



A Computer Science friend in France sent me this COVID19 data source https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide
European Centre for Disease Prevention and ControlEuropean Centre for Disease Prevention and Control
Download today’s data on the geographic distribution of COVID-19 cases worldwide
The downloadable data file is updated daily and contains the latest available public data on COVID-19. Public-use data files allows users to manipulate the data in a format appropriate for their analyses. Users of ECDC public-use data files must comply with data use restrictions to ensure that the information will be used solely for statistical analysis or reporting purposes.


COVID19 Data Science Project Idea:
In Python or another program/language, create a line chart with the x-axis having date, and the y-axis number of deaths by country over, with each country's data lagged or lead to a point where the country first had perhaps ~50 deaths. (ex. If we use Italy as our "base case", lag the U.S. and France data by ~10 days.)
Create a "web-page" for this chart, automatically update it daily or more frequently using the data source below, and include countries such as China, S. Korea, Singapore, Italy, Spain, France, U.S.
Here's a chart I manually created in Excel, with Italy, France, U.S. The data for France and U.S. is lagged ~10 days.
Also, a similar chart but for total cases.
Here's a data source: https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide (edited) 
image.png 
image.png


11 replies

tomcal  1 month ago
@Sam Skelton, Galvanize-Hack Reactor Project idea, for a Galvanize Data Science student or cohort?

Sam Skelton, Galvanize-Hack Reactor  1 month ago
@tomcal certainly, this is a really cool idea! I'll pass this onto our data science team, although our current Data Science cohorts are just beginning and likely won't be starting work on projects for another six weeks or so- I definitely anticipate a lot of students creating projects around the topic COVID19, our instructors and alumni have been sharing some pretty interesting collaborative projects around the subject so far.
On this topic, we're actually organizing an online event (free for all to attend) to talk about the data science behind the COVID-19 Vulnerability Index: https://www.eventbrite.com/e/the-data-science-behind-covid-19-vulnerability-index-live-online-tickets-100165591982

tomcal  1 month ago
FYI, a Computer Science friend who is locked down in France due to COVID19 showed me this data source and created a similar chart with just France & Italy. It might not be needed, but it could be an interesting and educational exercise. (I manually chose a 10 day lag, based on approximately when these 3 counties reached 50 cumulative deaths.)
Here is his response to a question about how he determined how many days to lead or lag each country's data, relative to a "base" country or "base date":
There is no one-rule to determine offset between country. But basically you arbitrarily decide to anchor at any number of deaths or cases that you decide.
e.g., you sync them at "the 50th death"
A more involved method might be some least square method: for all possible offset (e.g., 0, 1, ..., 20 days) you compute the "distance" between the curves, where you can define distance as the squared sum of all values in the curve. But I'm not even sure that's so relevant.
Doing it "with your feeling", without any scientific method, may in fact be just as well. You try different offsets, and just decide which seems to be "the best fit".
If the two exponential curves have a similar growth rate, there should be an obvious fit. Otherwise, it's a bit arbitrary.
Anyway, going to bed. I wish you well, and I feel deeply sorry for what's coming to the United States. Hang in there, and try to convince as many people as possible to stay home.

Joe Lucas  1 month ago
I have actually been a little critical of the “death aggregation” charts. I’d love to see some more domain specific models, eg Markov chains for SIR.

tomcal  1 month ago
@Joe Lucas Can you please explain why you are critical of death aggregation charts and data, what "Markov chains for SIR" is, and provide an example, and/or create an example using various COVID19 pandemic data that is available? Thanks! (edited) 

Joe Lucas  1 month ago
I can do part of that. For infectious disease modeling, the standard is a model that uses probabilities to model transitions between states. In the case of a disease where you recover and have immunity, you use a Susceptible-Infected-Recovered (SIR) model. You can further refine the model by adding states for dead, age groups, or other populations that are impacted differently.

A Markov chain is a model that describes the probabilities of those state transitions. For instance, the probability that a susceptible person will becomes infected or the probability that an infected person will die.

Death totals across countries just don’t tell the full story as interventions can be oriented at any of the markov links. For instance, masks lower the probability between susceptible and infected. More ventilators in hospitals lower the probability between infected and dead (or increase it to recovered).

I just think it’s a more comprehensive, informative, and useful model ( because you can identify the critical links) and it’s the standard for modeling infectious disease in populations.

Joe Lucas  1 month ago
Here’s a basic application that could be extended.


https://timesofmalta.com/articles/view/how-mathematics-can-help-us-understand-covid-19.778586

It did remind me of another critical benefit, markov chains enable you to estimate unmeasurable populations. For covid, we speculate about all the young asymptomatic people. You could show it with a markov model.
Times of MaltaTimes of Malta
How mathematics can help us understand COVID-19
This is the first article in a series on applying actuarial techniques to understanding the spread of the novel coronavirus in Malta.  On March 7, the first three cases of coronavirus were reported in Malta. At the time of writing (March 16) the number of total cases to date is 30, two of which...(77 kB)
https://cdn-attachments.timesofmalta.com/bc041fbeb3c177a8148a7ac0aa1fe1ee6284221b-1584369425-5e6f8f11-1200x630.jpg

tomcal  1 month ago
Updated chart,
image.png 
image.png



tomcal  1 month ago
Thanks!
Initial thoughts: More complex and nuanced models are certainly useful for forecasting what might happen, and simpler less complex charts can be useful for communicating what has already happened.
How could an analyst or researcher communicate the "analytical results" of such a model or analysis to the general public?
It will be interesting to observe how close the estimates provided at the end of the article get to what actually happened.
"I would expect in total 40 to 62 cases (with 50 being the median) to be reported by Wednesday [3/18/2020] (from 30 right now) and 88 to 365 cases to be reported by next Monday, March 23 (median 180). 
On the plus side, we should be having more recoveries too – one to four more by Wednesday. 
As for the number of deaths – hopefully none."
Wednesday 3/18/2020 Estimate, Malta: 40 to 62 cases (with 50 being the median)
Wednesday 3/18/2020 Actual, Malta: 38
Wednesday 3/23/2020 Estimate, Malta: 88 to 365 cases (median 180)
Wednesday 3/23/2020 Actual, Malta: TBD

Joe Lucas  1 month ago
I guess like all things, it really boils down to what question you want to answer.
:+1:
1


tomcal  1 month ago
What should we be doing now, and during the next 3 months? (Public policies, individual actions/decisions, etc.)





https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge





honestly, I am quite lost, or maybe not lost but - I jumped straight into the deep end when it comes to ‘speeding up code’ … for me, that (faster code) means two 2 things: learning a language other than python for trading execution algorithms, and now - distributed/parallel processing - which I take both as being areas of high performance computing; but I also take HPC to include topics like intel MKL (which I think is standard in numpy now), numpy, numba, & cython for ‘high performance python’






Justin  5:18 PM
point being really, I see no use case for Spark as a hedge fund quant researcher/developer; I never used it during my internship, or during a post-bacc program in algorithmic trading … I would assume the data APIs I was using were probably pulling from RDD-like sources but, that should be of no concern to me if my job is only to apply some ML or finance specific math to the data






Hendrik  6:20 PM
Understanding the math and the data engineering is the heart of data science. Machine learning can be quickly applied in any language, if you have the time, you build the models in excel. Using something like spark can a limited approach until you get all the data onto the cloud. The could companies are already beginning to role out MLAAS (machine learning as a service). So knowing which algorithms to apply in what combinations for your own data is much more important than calling APIs in Sklearn. Of course you can't do that if you don't have the supporting infrastructure. Plus if you want to do your processing in real time or ETC, python is going to be too slow if you want to compete at an arbitrage level







Anyone know of anything like Towards Data Science but without the $5/month paywall?
9 replies

Raz0r  9 days ago
It says in their FAQ that it’s up to the author https://towardsdatascience.com/writers-faq-462571b65b35#0f4f (edited) 

Justin  9 days ago
https://arxiv.org/

Justin  9 days ago
those are academic papers so, no real TL:DR type articles but, if you want free peer reviewed articles, that’s where to go; I also like geeksforgeeks and RealPython for Python how-to, if that is your language of choice

Justin  9 days ago
I’ve found that content generally overlaps; maybe library choice will differ but, can typically find similar content e.g. for graph theory, one article might use networkX and another, graphX; but the underlying ideas remain the same

Hendrik  9 days ago
KDNuggets
:+1:
1


Hendrik  9 days ago
data science central

matthew_swogger_may  9 days ago
Just open the towards data science blog post in an incognito browser. I get around it that way
:+1:
1


Justin  8 days ago
I wonder if beautifulsoup/requests is blocked  by medium aka towards data science

Derek  8 days ago
I know of DSC and KDNuggets, but I lean towards TDS because of their interface adn easy-to-follow beginner articles.


https://imgs.xkcd.com/comics/garbage_math.png

https://hackernoon.com/explaining-p-values-with-puppies-af63d68005d0

