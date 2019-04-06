# thesisUC
A short guide on writing your thesis with RMarkdown

*This is a work in progress*

This guide has the goal of introducing you to a new way of writing your thesis using RMarkdown. This repo stems from my frustration using Microsoft Word. In short RMarkdown with the help of a few tools will allow you to re-run your stats with the proper formatting in a very quick way. 


This is a site I saw which has a quick intro on why you should consider using version control
http://r-bio.github.io/intro-git-rstudio/

# Installing Required Programs

Before we start there are a few things we need to make this go well.

1. Install [R](https://www.r-project.org/)
2. Install [RStudio](https://www.rstudio.com/products/rstudio/download/)
3. Install [MikTex](https://miktex.org/download) (if you are using Windows) or [MacTex](https://medium.com/@sorenlind/create-pdf-reports-using-r-r-markdown-latex-and-knitr-on-macos-high-sierra-e7b5705c9fd) (if you are using a Mac)

For using references we have 3 packages we need to install
1. Install Zotero (sorry EndNote users)
2. Install BetterBibTex
3. The citr package (optional)
4. The .cls file for University of Calgary thesis (of which there are two to choose from) and place it in the "styles" folder
   - [1st option](https://www.overleaf.com/latex/templates/university-of-calgary-thesis-template/zgjghsjjhmnj)
   - [2nd option](https://www.overleaf.com/latex/templates/university-of-calgary-thesis-template/jddnhskkgpms)


# Setting up your folder/work environment
There are many ways to go about this but here is a general setup which you can modify to your needs.
In my project files I have (at the very least) the following folders
- raw
- data
    - tables
- images
- styles

"raw" contains the original data which I never touch. If I ever need to go back to it I will make a copy and store it in "data".

The "images" folder should be self explanatory. For beginners you can run your MATLAB scripts and save the images in this directory but be aware that RStudio can also produce graphs.

We will be referencing both the `tables` and `images` folders when we write our document.

## Starting off 
The first thing to do is create a New Project in RStudio. File>New Project and create a folder on your computer that works. In my example this will be `\thesisUC` you'll notice on your computer a `.Rproj` file is now created. When you want to make edits to your document I would recommend opening this file.

## Types of documents
In order to make things simple I will break this up into a few sections. The goal here is to make your thesis as sustainable as possible which means if a committee member asks you to change "one little thing" you do not have an endless number of manual edits to make. In order to do this I have 3 separate documents I make.


- 1 R script called `createPlots.R`
   - This is only used if you plan on creating figures using R. If you are doing this in MatLAB then you do not need this script
   - The results of this script are all saved in your `\images` folder.
- 1 R script called `stats.R` 
   - This will run your statistical models and save them as one .RData file.
   - For simplicity we will call it `stats.RData`
- 1 RMarkdown document (.Rmd)
   - This is what you write your document in.
   - It will load the .Rdata file that you created in `stats.R` 
   - There will be other files it will need to reference to run smoothly but we can break that down later
      - `csl` file which is required 
   
## Installing Packages
The first time you run RStudio you will need to install packages before you can load them. While installing it is possible that you need to set `opts(repositories` currently. This is a one time thing, do not let it intimidate you.

You only need to install a package once on any given computer. Normally you install packages using the following syntax:
`install.packages("PackageName")`
After a package is installed you can load it by writing
`library(PackageName)`

This can be a little tedious and span several lines when you have several packages to load. For this reason I use a package called `pacman` in my scripts to facilitate. In short, `pacman` will check to see if a package is installed (if not it will download it for you) and then subsequently load it for you. Grant a fair amount of time the first time you run the script since every package will need to be installed. The compiling will be much much faster the second time around.

There are a few packages where using pacman does not work. These include
- ggeffects
- apastats
In order for these packages to be installed you will need to use the devtools package (only the first time). 

## Creating your RMarkdown document
The layout for your projects are normally split into chapters. You have one document whose sole role is to compile the chapters into a `pdf` document which we will call `master`. File>New File>RMarkdown.

*Note: if you don't want to go through this process you can download the zip file contained on this repo.

# Misc
Here are a list of notes that may be useful but did not fit specifically in any section above.

## Exporting your references from EndNote to Zotero
This part can suck for some people. But I would highly recommend switching to save yourself some headaches down the road. Start by

1. Installing [Zotero](https://www.zotero.org/download/) 
2. Installing the [Better BibTex Plugin](https://retorque.re/zotero-better-bibtex/installation/)

Screenshots and a more detailed guide are forthcoming. 

## For my use (sites on how to use Git with RStudio)
[Guide to initial setup with Mac](https://medium.com/@sorenlind/create-pdf-reports-using-r-r-markdown-latex-and-knitr-on-macos-high-sierra-e7b5705c9fd)

https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html

https://resources.github.com/whitepapers/github-and-rstudio/

[A review of Markdown syntax](https://guides.github.com/features/mastering-markdown/)
