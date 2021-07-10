# Case Study : Topic Modeling of Documents using Three Different Tools

This repository contains a reproducible research compendium for the case study used in the book:
Manika Lamba and Margam Madhusudhan (2021) Text Mining for Information Professionals: An Uncharted Territory, SpringerNature. 

# How to cite
Please cite this compendium as: xxxxxxx

# Contents
The compendium contains the data, code, and notebook associated with the case study. This case study is further divided into 4A, 4B, and 4C. 4A case study used Topic-Modeling-Tool, 4B case study used RapidMiner platform, and 4C case study used R programming language to perform topic modeling. It is organized as follows:

  - The `4a_dataset\` folder contains the data for 4A case study.
    - The `4a_supplementary.docx` file contains the supplemtary data associated with 4A case study.
  - The `4b_dataset\` folder contains the data for 4B case study.
    - The `4b_supplementary.pdf` file contains the supplemtary data associated with 4B case study.
  - The `4c_dataset.csv` file contains the data for 4C case study.
  - The `stm.R` file contatins the R code for 4C case study.
  - The `Case_Study_4C.ipynb` file contatins the Jupyter notebook for 4C case study.

### Open this [link](https://textmining-infopros.github.io/chapter4/) to interact and visualizes the results from topic modeling

# How to download or install
There are several ways to use the compendium’s contents and reproduce
the analysis:

  - **Download the compendium as a zip archive** from this [GitHub
    repository](https://github.com/textmining-infopros/chapter4/archive/master.zip).
    
      - After unpacking the downloaded zip archive, you can explore the
        files on your computer.

  - **Reproduce the analysis in the cloud** without having to install
    any software. The same Docker container replicating the
    computational environment used by the authors can be run using
    BinderHub on [mybinder.org](https://mybinder.org/):
  
      - Click
        **RStudio**: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/textmining-infopros/chapter4/master?urlpath=rstudio) to launch an interactive 
        [RStudio](https://rstudio.com/) session in your web browser.
        
      - Click
        **Jupyter+R**: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/textmining-infopros/chapter4/master?filepath=Case_Study_4C.ipynb) to launch an interactive [Jupyter Notebook](https://jupyter.org/) session in your web browser using [R](https://cloud.r-project.org/index.html) kernel. When you execute code within the notebook, the results appear beneath the code.
        
       - **Limitations of Binder**
         1. The server has limited memory so you cannot load large datasets or run big computations.
         2. Binder is meant for interactive and ephemeral interactive coding so an instance will die after 10 minutes of inactivity.
         3. An instance cannot be kept alive for more than 12 hours.

### Licenses

**Text and figures:** ©2021 Lamba and Madhusdhan - all rights reserved
**Code**, **Data :** MIT License
