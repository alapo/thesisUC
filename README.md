# thesisUC
A short guide on writing your thesis with RMarkdown

*This is a work in progress*

This guide has the goal of introducing you to a new way of writing your thesis using RMarkdown. This repo stems from my frustration using Microsoft Word. In short RMarkdown with the help of a few tools will allow you to re-run your stats with the proper formatting in a very quick way. 


This is a site I saw which has a quick intro on why you should consider using version control
http://r-bio.github.io/intro-git-rstudio/


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


# Setting up your work environment
There are many ways to go about this but here is a general setup which you can modify to your needs.
In my project files I have (at the very least) the following folders
- raw
- data
    - tables
- images
- styles

"raw" contains the original data which I never touch. If I ever need to go back to it I will make a copy and store it in "data".
The "images" folder should be self explanatory. For beginners you can run your MATLAB scripts and save the images in this directory but be aware that RStudio can also produce graphs. We will be referencing both the `tables` and `images` folders when we write our document.

## Starting off 
The first thing to do is create a New Project in RStudio. File>New Project and create a folder on your computer that works. In my example this will be `\thesisUC` you'll notice on your computer a `.Rproj` file is now created. When you want to make edits to your document I would recoomend opening this file.

## Creating your RMarkdown document
The layout for your projects are normally split into chapters. You have one document whose sole role is to compile the chapters into a `pdf` document which we will call `master`. File>New File>RMarkdown.

*Note: if you don't want to go through this process you can download the zip file contained on this repo.


# Exporting your references from EndNote to Zotero
This part can suck for some people. But I would highly recommend switching to save yourself some headaches down the road. Start by

1. Installing [Zotero](https://www.zotero.org/download/) 
2. Installing the [Better BibTex Plugin](https://retorque.re/zotero-better-bibtex/installation/)

Screenshots and a more detailed guide are forthcoming. 







## For my use (sites on how to use Git with RStudio)
[Guide to initial setup with Mac](https://medium.com/@sorenlind/create-pdf-reports-using-r-r-markdown-latex-and-knitr-on-macos-high-sierra-e7b5705c9fd)
https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html
https://resources.github.com/whitepapers/github-and-rstudio/

[A review of Markdown syntax](https://guides.github.com/features/mastering-markdown/)
