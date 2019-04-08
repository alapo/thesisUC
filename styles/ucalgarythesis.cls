%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                    %%
%% This is file `ucalgarythesis.cls'. -- a document class for         %%
%% graduate theses at the University of Calgary. This class document  %%
%% is to be used in conjunction with the the thesis template file     %%
%% `ucalgarythesis.tex'.                                              %%
%%                                                                    %%   
%% Created by M.W. Girard, last updated 01 Feb 2016.                  %%
%%                                                                    %%
%% This template was created to be in compliance with the University  %%
%% of Calgary thesis guidelines (version 14 April 2014)               %%
%%       https://grad.ucalgary.ca/current/thesis/guidelines.          %%
%%                                                                    %% 
%% The title page format is based on the previous class document      %%
%% (ucalgthes1.cls) that was provided by the University of Calgary,   %%
%% which was modified from Report Style by Deborah Teale January      %%
%% 1987 and last modified on 15 April 2012 by T.Zhang.                %%
%%                                                                    %% 
%%                                                                    %% 
%% This work may be distributed and/or modified under the conditions  %%
%% of the LaTeX Project Public License, either version 1.3c of this   %%
%% license or (at your option) any later version.                     %%
%% The latest version of this license is in                           %%
%%     http://www.latex-project.org/lppl.txt                          %%
%% and version 1.3c or later is part of all distributions of LaTeX    %%
%% version 2005/12/01 or later.                                       %%
%%                                                                    %% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                    %%
%%  ****************************************                          %%       
%%  *            REVISION HISTORY          *                          %%
%%  ****************************************                          %%
%%  01 Feb 2016 -- Document created (M.W. Girard)                     %%
%%                   - loads LaTeX standard book class                %%
%%                                                                    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\providecommand{\classname}{ucalgarythesis}
\ProvidesClass{\classname}[2016/02/01 v1.0]

%%   ****************************************                         %%
%%   *               BASE CLASS             *                         %%
%%   ****************************************                         %%
%% Load base class using current setting for basic options.
\providecommand{\baseclass}{book}
\LoadClass{\baseclass}

%%   ****************************************                         %%
%%   *             CLASS OPTIONS            *                         %%
%%   ****************************************                         %%

%% New option: binding (adds extra margins on binding side)
\newif\if@binding
\@bindingfalse

%% Options for binding 
\DeclareOption{binding}{\@bindingtrue}
\DeclareOption{nobinding}{\@bindingfalse}

%% New option: unbold (makes frontmatter sections unbold in TOC)
\newif\if@unbold
\@unboldfalse

%% Options for unbold
\DeclareOption{unbold}{\@bindingtrue}
\DeclareOption{nounbold}{\@bindingfalse}

%% Options for twosided or onesided printing
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption{oneside}{\@twosidefalse}

%% Options for spacing (default is 1.5 spacing)
\DeclareOption{singlespaced}{\AtEndOfClass{\singlespacingnoskip}}
\DeclareOption{onehalfspaced}{\AtEndOfClass{\onehalfspacing}}
\DeclareOption{doublespaced}{\AtEndOfClass{\doublespacing}}

%% All other options are passed to the base class directly.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}


%%%%%%%%%%%%       OPTION EXECUTION       %%%%%%%%%%%%

%% Default settings.
 \ExecuteOptions{letterpaper,oneside,nobinding,nounbold,12pt}
 \ExecuteOptions{doublespaced}

%% Process options.
\ProcessOptions


%%   ****************************************                         %%
%%   *            NECESSARY COMMANDS        *                         %%
%%   ****************************************                         %%
%% \phantomsection is defined in the hyperref
%% package and is needed to prevent errors 
%% with links within the document if hyperref 
%% is loaded. If hyperref is not loaded, 
%% \phantomsection is defined to be empty.

\providecommand\phantomsection{}


%%   ****************************************                         %%
%%   *               PACKAGES               *                         %%
%%   ****************************************                         %%

\RequirePackage[margin=1in,footskip=8pt,headsep=0.4cm,%
  headheight=\baselineskip]{geometry}
\RequirePackage{setspace}

%% As required by the University of Calgary 2014 thesis guidelines, all margins must be exactly 1 inch on all sides.

%\geometry{
%         hmargin={1in,1in},vmargin={1in,1in}
%        }  

%% Submitted theses must not be bound. 
%% Extra copies of the thesis that are 
%% printed for personal use may be bound,
%% in which case 1.5 inch margins shall 
%% be used on the binding edge.
%\if@binding
% \geometry{bindingoffset=0.5in}
%\else
% \geometry{bindingoffset=0in}
%\fi

%%   ****************************************                         %%
%%   *              TITLE PAGE              *                         %%
%%   ****************************************                         %%

\newcommand{\makethesistitle}{
      \begin{titlepage}
      \thispagestyle{empty}
      \begin{center}
       UNIVERSITY OF CALGARY \\
       \vfill
        {\@title \par}          % Set title in size.
       \vfill                   % Vertical space after title.
       by \\
       \vfill
        {\@author \par }        % Set author 
       \vfill
        {A \@thesis} \par       % Allow the word dissertation to be used here
       SUBMITTED TO THE FACULTY OF GRADUATE STUDIES \par
       IN PARTIAL FULFILLMENT OF THE REQUIREMENTS FOR THE \par
       {DEGREE OF \@degree}
       \vfill
        {\@dept \par}
       \vfill
        {CALGARY, ALBERTA \par}
        {{\@monthname}, {\@gradyear} \par}
       \vfill
        {\copyright\ {\@author}~~{\@gradyear} \par}
      \end{center}
      \end{titlepage}
      \setcounter{page}{2}
      \cleardoublepage
}
%%
%% Commands for the thesis title page
%%
\def\dept#1{\gdef\@dept{\uppercase{#1}}}
\def\degree#1{\gdef\@degree{\uppercase{#1}}}
\def\monthname#1{\gdef\@monthname{\uppercase{#1}}}
\def\gradyear#1{\gdef\@gradyear{#1}}
\def\thesis#1{\gdef\@thesis{\uppercase{#1}}}
\def\author#1{\gdef\@author{#1}}

%%   ****************************************                         %%
%%   *       FRONT MATTER SECTIONS          *                         %%
%%   ****************************************                         %%

%% Make frontmatter sections appear in normal 
%% font in the table of contents, Mainmatter
%% sections should appear normal.

\if@unbold
  \let\bforigdefault\bfdefault
  \let\oldfrontmatter\frontmatter
  \renewcommand{\frontmatter}{\oldfrontmatter\addtocontents{toc}{\let\string\bfdefault\string\mddefault}}
  \let\oldmainmatter\mainmatter
  \renewcommand{\mainmatter}{\addtocontents{toc}{\let\string\bfdefault\string\bforigdefault}\oldmainmatter}
\fi

%% *** Abstract environment ***
\newenvironment{thesisabstract}{
      \addcontentsline{toc}{chapter}{Abstract}
      \begin{center}%
        \section*{Abstract}
      \end{center}
      }{}

%% *** Dedication environment ***
\newenvironment{dedication}{\par\vspace*{.15\textheight}\centering}%
     {\par}
     
%% *** Redefine table of contents ***     
\renewcommand\contentsname{Table of Contents}
\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{ 
      \begin{singlespace}
      \oldtableofcontents
      \addcontentsline{toc}{chapter}{Table of Contents}%
      \phantomsection
      \end{singlespace}      
}

%% *** Redefine list of figures *** 
\let\oldlistoffigures\listoffigures
\renewcommand{\listoffigures}{
      \begin{singlespace}
      \oldlistoffigures
      \addcontentsline{toc}{chapter}{List of Figures}%
      \phantomsection
      \end{singlespace} 
}
     
%% *** Redefine list of tables ***
\let\oldlistoftables\listoftables
\renewcommand{\listoftables}{
      \begin{singlespace}
      \oldlistoftables
      \addcontentsline{toc}{chapter}{List of Tables}%
      \phantomsection
      \end{singlespace} 
}

%% *** Define addsymbol macro for list of symbols ***
\def\addsymbol #1: #2{$#1$ \> \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \   \parbox{5in}{#2}\\}


%% *** Epigraph quote environment  ***
%% (For placing quotes in the epigraph)

%% (As per 2014 thesis guidelines, quotes in 
%% the epigraph must be 20 spaces from the 
%% left margin. Since a standard space is 
%% typically .333em, this distance is set 
%% to 6.6666em.)

\def\epiquote{\list{}{\leftmargin 6.666em}\item[]}
\let\endepiquote=\endlist

%%    ****************************************                        %%
%%    *            BIBLIOGRAPHY              *                        %%
%%    ****************************************                        %%

\newcommand{\thesisbibliography}{  
  \if@unbold\addtocontents{toc}{\let\string\bfdefault\string\mddefault}\fi
  \addcontentsline{toc}{chapter}{Bibliography}
  }


%%    ****************************************                        %%
%%    *             PAGE STYLES              *                        %%
%%    ****************************************                        %%

%% Redefine plain page style to have page numbers in upper 
%% outer corner if twoside option is used (as regulated by
%% the University of Calgary 2014 thesis guidelines). 
%% Normally, theses should not be printed double sided
%% and page numbers should always be in the bottom
%% center of the page. 
%%
%% Page number location must be consistent throughout the 
%% entire document.

\if@twoside
\def\ps@plain{\let\@mkboth\@gobbletwo%
     \def\@oddhead{\reset@font\hfil\thepage}
     \let\@oddfoot\@empty%
     \def\@evenhead{\reset@font\thepage\hfil}%
     \let\@evenfoot\@empty
     }
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%    ****************************************                         %%
%    *           INITIALIZATION             *                         %%
%    ****************************************                         %%
% Commands to be placed after \begin{document}
\AtBeginDocument{ %
 % Insert a title page.
 \titlepage %
 % Change the PDF title.
 \hypersetup{pdftitle=\inserttitle} %
 % Insert the frontispiece if there is one.
 \if@umich@frontispiece\frontispiecepage\fi %
% \ifthenelse{\equal{\@frontispiece}{}}{}{\frontispiecepage} %
 % Initialize page numbers.
 \setcounter{page}{1} %
 % Page numbers at the bottom
 \pagestyle{plain} %
 % Use lower-case roman numerals.
 \renewcommand{\thepage}{\roman{page}} %
 % Insert the copyright page if there is one.

\setcounter{secnumdepth}{2}      % Section numbering goes only down to 
                                 %  subsection (not subsubsection, etc).
\thesis{thesis}                  % Default is thesis.
\ps@plain                        % Default page style is plain.
\onecolumn                       % Single column.
\if@twoside\else\raggedbottom\fi % Ragged bottom unless twoside option.
\doublespacing                   % Double spacing.


%%
%% End of file `ucalgarythesis.cls'.
