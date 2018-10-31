## About the Demonstration

Most of this demonstration will be me live coding and explaining how ggplot works. The questions I intend to answer and the objectives I intend to complete during the demonstration are below. Packages that I will be using in this demo include the packages in the `tidyverse` ecosystem (e.g., `ggplot2`, `dplyr`, `readr`) and Thomas Pedersen's `patchwork` package. Maybe if there is time, I will make some dumbell or lollipop plots using Bob Rudis' `ggalt` package. Another useful package for working with `ggplot2` is the `ggthemes` package by Jeffrey Arnold, which contains functions for extra theme options. Other packages that are used for creating slide decks and reports are `xaringan`, `papaja`, `rmarkdown`, and `knitr`. The `here` package is used to solve working directory issues.

You can install some of the packages using this command: `install.packages(c('tidyverse', 'ggalt', 'ggthemes', 'knitr', 'rmarkdown', 'here', devtools))`. The other packages need to be installed using `devtools`: `devtools::install_github('thomasp85/patchwork')`, `devtools::install_github("crsh/papaja")`, and `devtools::install_github('yihui/xaringan')`. 

You can watch (and copy & paste) the live coding at three different locations depending on what is being covered:

- [Basics of ggplot & making plots](http://ca.storyboards.jp/a/8b0uz8) <http://ca.storyboards.jp/a/8b0uz8>
- [Creating slide decks that embed plots](http://ca.storyboards.jp/a/d8x8k1) <http://ca.storyboards.jp/a/d8x8k1>
- [Creating reports that embed plots](http://ca.storyboards.jp/a/9ukdtq) <http://ca.storyboards.jp/a/9ukdtq>



### Questions:
  - What are the components of a ggplot?
  - How do I create scatterplots, boxplots, and time series plots?
  - How can I change the aesthetics (ex. colour, transparency) of my plot?
  - How can I create multiple plots at once?
  - How can I put multiple different types of plots into one plot?
  - How can I use the same code for different modes of presentation (e.g., papers and slides)?

### Objectives:
   - Produce scatter plots, boxplots, and time series plots using ggplot.
   - Set universal plot settings.
   - Describe what faceting is and apply faceting in ggplot.
   - Modify the aesthetics of an existing ggplot plot (including axis labels and color).
   - Build complex and customized plots from data in a data frame.
   - Glue varied plot types together
   - Embed the same plot in a slide deck and a report.


## About the data

The data for this demonstration at the Hawai'i Pacific Evaluators Association come from the [Data Carpentry Social Sciences workshop](http://datacarpentry.org/socialsci-workshop/). 

It was downloaded from: <https://ndownloader.figshare.com/files/11492171> and then cleaned up using the `data_cleaning.R` script in the R directory of this repository.

The original dataset is available on FigShare: <https://figshare.com/articles/SAFI_Survey_Results/6262019>

CITATION: Woodhouse, Philip; Veldwisch, Gert Jan; Brockington, Daniel; Komakech, Hans C.; Manjichi, Angela; Venot, Jean-Philippe (2018): SAFI Survey Results. doi:/10.6084/m9.figshare.6262019.v4

SAFI (Studying African Farmer-Led Irrigation) is a currently running project which is looking at farming and irrigation methods. This is survey data relating to households and agriculture in Tanzania and Mozambique. The survey data was collected through interviews conducted between November 2016 and June 2017 using forms downloaded to Android Smartphones. The survey forms were created using the ODK (Open Data Kit) software via an Excel spreadsheet. The collected data is then sent back to a central server. The server can be used to download the collected data in both JSON and CSV formats. This is a teaching version of the collected data that we will be using. It is not the full dataset.

The survey covered such things as; household features (e.g. construction materials used, number of household members), agricultrual practices (e.g. water usage), assets (e.g. number and types of livestock) and details about the household members.

## About The Carpentries

### What are the Carpentries?
Software Carpentry (SWC) and Data Carpentry (DC) are two programs of [The Carpentries](https://carpentries.org/) (a fiscally sponsored project of Community Initiatives). We teach essential computing and data skills. We exist because the skills needed to do computational, data-intensive research are not part of basic research training 
in most disciplines.

### About Software Carpentry     

Software Carpentry enables researchers to create purpose-built tools, whether it be a Unix shell script to automate 
repetitive tasks, or software code in programming languages such as Python, R, or MATLAB. 
These enable researchers to build programs that can be read, re-used, and validated, greatly enhancing the 
sharing and reproducibility of their research.    

### About Data Carpentry

Data Carpentry learners are taught to work with data more effectively. Workshops focus on the data lifecycle, covering data organization, cleaning and management  through to data analysis and visualization. Lessons are domain-specific, with coverage in biology, genomics, geospatial data, and social sciences.
  
What the Carpentries offer

- A suite of open source, collaboratively-built, community-developed lessons
- Workshops based on a learn-by-doing, ‘code with me’ approach
- A supportive learning culture
- Instructor training, mentoring and support
- Active global community which subscribes to an inclusive code of conduct
- Evidence-based, proven pedagogical training methods
- Ongoing development opportunities via our webinar series
- Open discussions
