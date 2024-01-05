# Reproducible research: version control and R

# 1, 2 and 3:
https://github.com/oxfordstudent1234/logistic_growth

# **4) Brownian motion**

### Observations from random_walk:

* The data for each walk used the exact same code- each plot represents a random walk with 500 steps, starting from the origin.
* However each walk was different
    * (Therefore this data was not reproducible)
    * This is because the randomness in the steps results in different patterns for each random walk.
    * Due to the use of the "runif" function
* Both walks started at higher y-coordinates and ended farther down the graph with the passage of time
* Both walks were very tortuous with many turns, and looped back on themselves often-
    * this may be due to the relatively smaller step size of 0.25
* In essence, both walks appeared random

* The paths in each plot are colored based on the time steps, showing the progression of the walk.


## What is a random seed and how does it work?
### What it is:
* A random seed is an initial input given to a random number generator (RNG) algorithm so that it produces a random-appearing sequence of numbers
* If you use the same seed, the idea is that you will get the same sequence of random numbers with every run of the program
### How it works:
* Random number generators aren't entirely random
* They are deterministic, the initial state of the algorithm determines the sequence of numbers.
  * The alrogrithm produces sequences of numbers which mimic randomness.
* Setting the Seed:
  * This means initialising the intermal state of the RNG, the starting point for generating a sequence of seemingly random numbers.
* Seeds are very helpful for reproducibility.
* Setting a seed allows others to reproduce the same results

  ## Commit History:
![Commit History 1](Commit1.PNG?raw=true "Commit History")  
![Commit History 2](Commit2.PNG?raw=true "Commit History")  
![Commit History 3](Commit3.PNG?raw=true "Commit History")  
![Commit History 4](Commit4.PNG?raw=true "Commit History")  

# 5) Virology
### Rows and columns within the data:  
33 rows, 13 columns.  
### What transformation can you use to fit a linear model to the data? Apply the transformation.  
Need to convert genome length and virion volume to their natural log values.  
### Exponent and scaling factor for the allometric law for dsDNA viruses:  
Exponent: 1.5152
Scaling factor: 1181.807
Whilst my exponent was within the range published in table 2 of the paper, the scaling factor I obtained was just below it. Both results wre highly significant (p<0.001)  
### Write the code to produce the figure seen at the bottom of this readme document:

### What is the estimated volume of a 300 kb dsDNA virus?  
5377.614

# Bonus: 
### Difference between reproducibility and replicability in scientific research: 
Reproducibility:

* Reproducibility refers to the ability to obtain consistent results when an experiment or study is conducted by different researchers, using the same methods, materials, and conditions.
* It emphasizes the idea that the same study or experiment can be repeated by different researchers, following the original procedures, and should yield similar results.
* Reproducibility is crucial for validating scientific findings and ensuring that results are not specific to the original researcher or laboratory. It helps establish the robustness of the reported findings.

Replicability:


* Replicability refers to the ability to achieve similar results when an experiment or study is independently repeated, often with some variations in methods, materials, or conditions.  
* While replicability involves conducting the same experiment again, it allows for some degree of flexibility or variation in the details of the methodology. The goal is to assess whether the general findings can be observed under slightly different conditions.  
* Replicability helps to verify the generalizability of research findings and assess the robustness of the results across different contexts. * It acknowledges that, in practice, experiments may need to be adapted or modified for various reasons.

  
In summary, reproducibility focuses on conducting the exact same experiment or study under the same conditions to obtain consistent results, whereas replicability involves conducting a similar experiment with some variations to assess the generalizability of the findings. Both concepts are important for building confidence in scientific research and ensuring that results are reliable and applicable beyond the original study.  

### How can git and GitHub be used to enhance the reproducibility and replicability of your work? What limitations do they have?    
Enhancing Reproducibility:  

* Version Control: Git allows you to track changes in your code, scripts, and documents over time. This ensures that others can access the exact version of your work that led to specific results.
* Code Sharing: GitHub serves as a central repository for hosting code. Others can easily clone your repository, reproduce your analyses, and verify your results by running the same code.  
Enhancing Replicability:  

* Forking and Branching: Collaborators can fork your repository to create their own copy, enabling them to make modifications or improvements without affecting the original code. Branching allows for the development of alternative versions of the code or experimentation with different parameters.
* Issues and Discussions: GitHub's issue tracker and discussion features facilitate communication among collaborators. This can be used to document changes, discuss variations in experimental setups, and provide context on different implementations.  
Limitations:  

* Data Storage: While Git and GitHub are excellent for managing code, they might not be the best solution for large datasets due to storage limitations. It's essential to use external data repositories or tools like Git LFS (Large File Storage) for handling large files.
  * It is also important to note the environmental i,pact of storing such large amounts of data on cloud storage. People may not consider the amount of storage their work is taking up if it is not directly on their computer, but running the hardware to store all of this data requires a lot of power, especially if people aren't deleting forks/ data from updates that are old and no longer in use.  
* File Size: Very large files may impact the efficiency of cloning and pulling repositories, potentially causing delays in collaboration and hindering the ease of reproducing results.
* Lack of Privacy: Public repositories on GitHub are accessible to anyone. While this openness encourages collaboration, it may not be suitable for sensitive or unpublished work. GitHub does offer private repositories, but they may require a subscription.


## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points (plus an optional bonus question worth 10 extra points). First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers. All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   - A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points)
   - Investigate the term **random seeds**. What is a random seed and how does it work? (5 points)
   - Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points)
   - Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points)

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \beta L^{\alpha}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   - Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)
   - What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)
   - Find the exponent ($\alpha$) and scaling factor ($\beta$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points)
   - Write the code to reproduce the figure shown below. (10 points)

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  - What is the estimated volume of a 300 kb dsDNA virus? (4 points)

**Bonus** (**10 points**) Explain the difference between reproducibility and replicability in scientific research. How can git and GitHub be used to enhance the reproducibility and replicability of your work? what limitations do they have? (e.g. check the platform [protocols.io](https://www.protocols.io/)).
