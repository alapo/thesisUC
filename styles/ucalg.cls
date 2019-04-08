%% This is the University of Calgary Thesis Class file ``ucalgthes.cls''
%% [1998/03/01] -- N. Mancell, UCS].
%% for use with LaTeX2e[1996/12/01]
%
%%% MODIFICATIONS
%%  Modified thesis.sty to ucalgthes.cls
%%  Changes for LaTeX2e compatibility, font selection and options selection.
%%  No new style modifications were done.

% UNIVERSITY OF CALGARY THESIS DOCUMENT CLASS OPTION -- thes12.clo 98/03/01
%   for LaTeX version 2e
% Modified N. Mancell 98/03/01 formerly thes12.sty

% Modified (thes12.sty)   D.Teale  92-09-23   To fix typeout for altchapter




%  ****************************************
%  *            PAGE LAYOUT               *
%  ****************************************
%
% All margin dimensions measured from a point one inch from top and side
% of page.

% SIDE MARGINS:
\if@twoside                 % Values for two-sided printing:
   \oddsidemargin 1in      %   Left margin on odd-numbered pages.
   \evensidemargin 1in     %   Left margin on even-numbered pages.
   \marginparwidth 1in    %   Width of marginal notes.
\else                       % Values for one-sided printing:
   \oddsidemargin 1in      %   Note that \oddsidemargin = \evensidemargin
   \evensidemargin 1in
   \marginparwidth 1in
\fi
\marginparsep 1in          % Horizontal space between outer margin and
                            % marginal note


% VERTICAL SPACING:
                         % Top of page:
\topmargin 0pt          %    Nominal distance from top of page to top of
                         %    box containing running head.
\headheight 12pt         %    Height of box containing running head.
\headsep 25pt            %    Space between running head and text.
% \topskip = 10pt        %    '\baselineskip' for first line of page.
                         % Bottom of page:
%\footheight 12pt        %    (NM 98/03/01)Height of box containing
                         %    running foot.
\footskip 30pt           %    Distance from baseline of box containing foot
                         %    to baseline of last line of text.


% DIMENSION OF TEXT:

\textheight 580.5pt      % Height of text (including footnotes and figures,
                         % excluding running head and foot).
\textwidth 429.5pt         % Width of text line.
                         % For two-column mode:
\columnsep 10pt          %    Space between columns
\columnseprule 0pt       %    Width of rule between columns.

% A \raggedbottom command causes 'ragged bottom' pages: pages set to
% natural height instead of being stretched to exactly \textheight.

% FOOTNOTES:

\footnotesep 8.4pt    % Height of strut placed at the beginning of every
                      % footnote = height of normal \footnotesize strut,
                      % so no extra space between footnotes.

\skip\footins 10.8pt plus 4pt minus 2pt  % Space between last line of text and
                                         % top of first footnote.

% FLOATS: (a float is something like a figure or table)
%
%  FOR FLOATS ON A TEXT PAGE:
%
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\floatsep 14pt plus 2pt minus 4pt        % Space between adjacent floats moved
                                         % to top or bottom of text page.
\textfloatsep 20pt plus 2pt minus 4pt    % Space between main text and floats
                                         % at top or bottom of page.
\intextsep 14pt plus 4pt minus 4pt       % Space between in-text figures and
                                         % text.
%\@maxsep 20pt                           % (NM 98/03/01)The maximum of
                                         %\floatsep,
                                         % \textfloatsep and \intextsep (minus
                                         % the stretch and shrink).
%    TWO-COLUMN FLOATS IN TWO-COLUMN MODE:
\dblfloatsep 14pt plus 2pt minus 4pt     % Same as \floatsep for double-column
                                         % figures in two-column mode.
\dbltextfloatsep 20pt plus 2pt minus 4pt % \textfloatsep for double-column
                                         % floats.
%\@dblmaxsep 20pt                        % (NM98/03/01)The maximum of
                                         % \dblfloatsep and
                                         % \dbltexfloatsep.

%  FOR FLOATS ON A SEPARATE FLOAT PAGE OR COLUMN:
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\@fptop 0pt plus 1fil    % Stretch at top of float page/column. (Must be
                         % 0pt plus ...)
\@fpsep 10pt plus 2fil    % Space between floats on float page/column.
\@fpbot 0pt plus 1fil    % Stretch at bottom of float page/column. (Must be
                         % 0pt plus ... )

%   DOUBLE-COLUMN FLOATS IN TWO-COLUMN MODE.
\@dblfptop 0pt plus 1fil % Stretch at top of float page. (Must be 0pt plus ...)
\@dblfpsep 10pt plus 2fil % Space between floats on float page.
\@dblfpbot 0pt plus 1fil % Stretch at bottom of float page. (Must be
                         % 0pt plus ... )
% MARGINAL NOTES:
%
\marginparpush 7pt       % Minimum vertical separation between two marginal
                         % notes.


%  ****************************************
%  *           PARAGRAPHING               *
%  ****************************************
%
\parskip 0pt plus 1pt              % Extra vertical space between paragraphs.
\parindent 1.5em                   % Width of paragraph indentation.
\topsep 10pt plus 4pt minus 6pt    % Extra vertical space, in addition to
                                   % \parskip, added above and below list and
                                   % paragraphing environments.
\partopsep 3pt plus 2pt minus 2pt  % Extra vertical space, in addition to
                                   % \parskip and \topsep, added when user
                                   % leaves blank line before environment.
\itemsep 5pt plus 2.5pt minus 1pt  % Extra vertical space, in addition to
                                   % \parskip, added between list items.

% The following page-breaking penalties are defined

\@lowpenalty   51      % Produced by \nopagebreak[1] or \nolinebreak[1]
\@medpenalty  151      % Produced by \nopagebreak[2] or \nolinebreak[2]
\@highpenalty 301      % Produced by \nopagebreak[3] or \nolinebreak[3]

\@beginparpenalty -\@lowpenalty    % Before a list or paragraph environment.
\@endparpenalty   -\@lowpenalty    % After a list or paragraph environment.
\@itempenalty     -\@lowpenalty    % Between list items.

% \clubpenalty         % 'Club line'  at bottom of page.
% \widowpenalty        % 'Widow line' at top of page.
% \displaywidowpenalty % Math display widow line.
% \predisplaypenalty   % Breaking before a math display.
% \postdisplaypenalty  % Breaking after a math display.
% \interlinepenalty    % Breaking at a line within a paragraph.
% \brokenpenalty       % Breaking after a hyphenated line.


%  ****************************************
%  *               FONTS                  *
%  ****************************************
%



\lineskip 1pt            % \lineskip is 1pt for all font sizes.
\normallineskip 1pt
\def\baselinestretch{1}

% All font selection commands have been revised to conform with
% Latex2e font selection commands (NM 98/03/01).
%
% Each size-changing command \SIZE executes the command
%        \fontsize\@FONTSIZE{BASELINESKIP}\selectfont
% where:
%   BASELINESKIP = Normal value of \baselineskip for that size.  (Actual
%                  value will be \baselinestretch * BASELINESKIP.)
%
%  \@FONTSIZE     = Name of font-size command.  The currently available
%                  (preloaded) font sizes are: \@vpt (5pt), \@vipt (6pt),
%                  \@viipt (etc.), \@viiipt, \@ixpt, \@xpt, \@xipt, \@xiipt,
%                  \@xivpt, \@xviipt, \@xxpt, \@xxvpt. These are defined
%                  ltfss.dtx.
%
% For reasons of efficiency that needn't concern the designer,
% the document style defines \@normalsize instead of \normalsize .  This is
% done only for \normalsize, not for any other size-changing commands.

%\renewcommand{\normalsize}{\fontsize\@xiipt{14.5}\selectfont% (nm2007)
\renewcommand{\normalsize}{\fontsize{12pt}{14.5pt}\selectfont %(nm2007 added)
\abovedisplayskip 12\p@ plus3\p@ minus7\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6.5\p@ plus3.5\p@ minus3\p@}

\newcommand{\small}{\fontsize\@xipt{13.6}\selectfont%
\abovedisplayskip 11\p@ plus3\p@ minus6\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6.5\p@ plus3.5\p@ minus3\p@
\def\@listi{\parsep 4.5\p@ plus 2\p@ minus 1\p@
            \itemsep \parsep
            \topsep 9\p@ plus 3\p@ minus 5\p@}}

\newcommand{\footnotesize}{\fontsize\@xpt{12}\selectfont%
\abovedisplayskip 10\p@ plus2\p@ minus5\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6\p@ plus3\p@ minus3\p@
\def\@listi{\topsep 6\p@ plus 2\p@ minus 2\p@\parsep 3\p@ plus 2\p@ minus 1\p@
\itemsep \parsep}}

\newcommand{\scriptsize}{\fontsize\@viiipt{9.5pt}\selectfont}
\newcommand{\tiny}{\fontsize\@vipt{7pt}\selectfont}
\newcommand{\large}{\fontsize\@xivpt{18pt}\selectfont}
\newcommand{\Large}{\fontsize\@xviipt{22pt}\selectfont}
\newcommand{\LARGE}{\fontsize\@xxpt{25pt}\selectfont}
\newcommand{\huge}{\fontsize\@xxvpt{30pt}\selectfont}
\newcommand{\Huge}{\fontsizelet\@xxvpt{30pt}\selectfont}

% The shortform font selection commands are not defined in LaTeX2e.
% This defines them so that they do non-orthogonal font selection,
% which is useful if you are in the middle of converting a document
% from 2.09.  These commands are no longer used internally in this
% class. (NM 98/03/01)

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sfffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\newcommand{\sl}{\slshape}
\newcommand{\sc}{\scshape}

\normalsize  % Choose the normalsize font.

%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************
%
% \sty@SECTION{#1}{#2} is defined to be the type, size, placement of section titles
\def\setsectionstyle#1#2{\@ifundefined{sty@#1}%
{\@warning{sectionstyle `\string#1' on page \thepage \space undefined}}%
{\@namedef{sty@#1}{#2}}}
%{\edef\@tempsty{\@nameuse{sty@#1}}\show\@tempsty%
%\let\@tempstya\@tempsty\show\@tempstya\@namedef{sty@#1}{\@nameuse{@tempstya}#2}}}
% initialization of \sty@SECTION
\def\sty@chapter{\Large\centering} %removed \bfseries 2006nm
\def\sty@section{\large} %removed \bfseries 2006nm
\def\sty@subsection{\normalsize} %removed \bfseries 2006nm
\def\sty@subsubsection{\normalsize} %removed \bfseries after \normalsize 2006nm
\def\sty@paragraph{\normalsize} %removed \bfseries 2006nm
\def\sty@subparagraph{\normalsize} %removed \bfseries 2006nm

\def\part{\cleardoublepage   % Starts new page.
   \thispagestyle{plain}     % Page style of part page is 'plain'
  \if@twocolumn              % IF two-column style
     \onecolumn              %  THEN \onecolumn
     \@tempswatrue           %       @tempswa := true
    \else \@tempswafalse     %  ELSE @tempswa := false
  \fi                        % FI
  \hbox{}\vfil               % Add fil glue to center title
  \bgroup  \centering        % BEGIN centering
  \secdef\@part\@spart}

\def\@part[#1]#2{\ifnum \c@secnumdepth >-2\relax  % IF secnumdepth > -2
        \refstepcounter{part}                     %   THEN step part counter
        \addcontentsline{toc}{part}{\thepart      %        add toc line
        \hspace{1em}#1}\else                      %   ELSE add unnumbered line
        \addcontentsline{toc}{part}{#1}\fi        % FI
   \markboth{}{}
    \ifnum \c@secnumdepth >-2\relax  % IF secnumdepth > -2
      \huge\bf Part \thepart         %   THEN Print 'Part' and number
    \par                             %         in \huge bold.
    \vskip 20pt \fi                  %        Add space before title.
    \Huge \bfseries                  % FI
    #1\@endpart}                     % Print Title in \Huge bold.

% \@endpart finishes the part page
%
\def\@endpart{\par\egroup     % END centering
   \vfil\newpage              % End page with 1fil glue.
   \if@twoside                % IF twoside printing
       \hbox{}                %   THEN Produce totally blank page
       \thispagestyle{empty}
       \newpage
   \fi                        % FI
   \if@tempswa                % IF @tempswa = true
     \twocolumn               %   THEN \twocolumn
   \fi}                       % FI

\def\@spart#1{\Huge \bfseries                % Print title in \huge boldface
   #1\@endpart}

% \@makechapterhead {TEXT} : Makes the heading for the \chapter command.
%

\def\@makechapterhead#1{             % Heading for \chapter command
%  \vspace*{12pt}                     % Space at top of text page.
  { \parindent 0pt \raggedright
    \ifnum \c@secnumdepth >\m@ne     % IF secnumdepth > -1 THEN
      \Large \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \bf{\sty@chapter} \@chapapp{} \bf{\thechapter} % Print 'Chapter'
%                                                           and number.%removed \bfseries 2006nm
      \par
      \vskip 12pt \fi                  % Space between number and title.
    \Large\sty@chapter                  % Title.%removed \bfseries 2006nm
    #1\par
    \nobreak                         % TeX penalty to prevent page break.
    \vskip 24pt                      % Space between title and text.
  } }

% \@makeschapterhead {TEXT} : Makes the heading for the \chapter* command.
%

\def\@makeschapterhead#1{             % Heading for \chapter* command
%  \vspace*{12pt}                     % Space at top of page.
  { \parindent 0pt \raggedright
    \Large\sty@chapter                  % Title.%removed \bfseries 2006nm
    #1\par
    \nobreak                         % TeX penalty to prevent page break.
    \vskip 24pt                      % Space between title and text.
  } }

% \secdef{UNSTARCMDS}{STARCMDS} :
%    When defining a \chapter or \section command without using
%    \@startsection, you can use \secdef as follows:
%       \def\chapter { ... \secdef \CMDA \CMDB }
%       \def\CMDA    [#1]#2{ ...   % Command to define \chapter[...]{...}
%       \def\CMDB    #1{ ...       % Command to define \chapter*{...}

\def\chapter{\clearpage      % Starts new page.
   \pagestyle{plain}     % Page style of chapter page is 'plain' %changed from \thispagestyle{plain} to pagestyle{fancy}2009nm
   \global\@topnum\z@        % Prevents figures from going at top of page.
   \@afterindentfalse        % Suppresses indent in first paragraph.  Change
   \secdef\@chapter\@schapter}   % to \@afterindenttrue to have indent.

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
        \refstepcounter{chapter}
        \typeout{\@chapapp\space\bf{\thechapter}.}
        \addcontentsline{toc}{chapter}{\protect
        \numberline{\thechapter}#1}\else
      \addcontentsline{toc}{chapter}{#1}\fi
   \chaptermark{#1}
   \addtocontents{lof}{\protect\addvspace{10pt}} % Adds between-chapter space
   \addtocontents{lot}{\protect\addvspace{10pt}} % to lists of figs & tables.
   \if@twocolumn                                 % Tests for two-column mode.
           \@topnewpage[\@makechapterhead{#2}]
     \else \@makechapterhead{#2}
           \@afterheading                  % Routine called after chapter and
     \fi}                                  % section heading.

\def\@schapter#1{\if@twocolumn \@topnewpage[\@makeschapterhead{#1}]
        \else \@makeschapterhead{#1}
              \@afterheading\fi}


% *********************************
% * ALTERNATE THESIS CHAPTER FORM *
% *********************************
\def\altchapter{\clearpage      % Starts new page.
   \thispagestyle{plain}     % Page style of chapter page is 'plain'
   \global\@topnum\z@        % Prevents figures from going at top of page.
   \@afterindentfalse        % Suppresses indent in first paragraph.  Change
   \secdef\@altchapter\@saltchapter}   % to \@afterindenttrue to have indent.

\def\@altchapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
        \typeout{#1}
        \addcontentsline{toc}{chapter}{#1}\else
      \addcontentsline{toc}{chapter}{#1}\fi
   \chaptermark{#1}
   \addtocontents{lof}{\protect\addvspace{10pt}} % Adds between-chapter space
   \addtocontents{lot}{\protect\addvspace{10pt}} % to lists of figs & tables.
   \if@twocolumn                                 % Tests for two-column mode.
           \@topnewpage[\@makeschapterhead{#2}]
     \else \@makeschapterhead{#2}
           \@afterheading                  % Routine called after chapter and
     \fi}                                  % section heading.

\def\@saltchapter#1{\if@twocolumn \@topnewpage[\@makeschapterhead{#1}]
        \else \@makeschapterhead{#1}
              \@afterheading\fi}

% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%    Generic command to start a section.
%    NAME       : e.g., 'subsection'
%    LEVEL      : a number, denoting depth of section -- e.g., chapter=1,
%                 section = 2, etc.  A section number will be printed if
%                 and only if LEVEL < or = the value of the secnumdepth
%                 counter.
%    INDENT     : Indentation of heading from left margin
%    BEFORESKIP : Absolute value = skip to leave above the heading.
%                 If negative, then paragraph indent of text following
%                 heading is suppressed.
%    AFTERSKIP  : if positive, then skip to leave below heading,
%                       else - skip to leave to right of run-in heading.
%    STYLE      : commands to set style
%  If '*' missing, then increments the counter.  If it is present, then
%  there should be no [ALTHEADING] argument.  A sectioning command
%  is normally defined to \@startsection + its first six arguments.

\def\section{\@startsection {section}{1}{\z@}{-3.5ex plus -1ex minus
    -.2ex}{2.3ex plus .2ex}{\large\sty@section}} %removed \bfseries 2006nm
\def\subsection{\@startsection{subsection}{2}{\z@}{-3.25ex plus -1ex minus
   -.2ex}{1.0ex plus .2ex}{\normalsize\sty@subsection}} %removed \bfseries 2006nm
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-2.12ex plus
   -1ex minus -.2ex}{0.001ex plus .2ex}{\normalsize\sty@subsubsection}} %removed \bfseries 2006nm
\def\paragraph{\@startsection
     {paragraph}{4}{\z@}{2.25ex plus 1ex minus .2ex}{-1em}{\normalsize\sty@paragraph}} %removed \bfseries 2006nm
\def\subparagraph{\@startsection
     {subparagraph}{4}{\parindent}{2.25ex plus 1ex minus
     .2ex}{-1em}{\normalsize\sty@subparagraph}} %removed \bfseries 2006nm

% Default initializations of \...mark commands.  (See below for their
% us in defining page styles.
%

\def\chaptermark#1{}
% \def\sectionmark#1{}           % Preloaded definitions
% \def\subsectionmark#1{}
% \def\subsubsectionmark#1{}
% \def\paragraphmark#1{}
% \def\subparagraphmark#1{}

% The value of the counter secnumdepth gives the depth of the
% highest-level sectioning command that is to produce section numbers.
%

\setcounter{secnumdepth}{2}

% APPENDIX
%
% The \appendix command must do the following:
%    -- reset the chapter counter to zero
%    -- set \@chapapp to Appendix (for messages)
%    -- redefine the chapter counter to produce appendix numbers
%    -- reset the section counter to zero
%    -- redefine the \chapter command if appendix titles and headings are
%       to look different from chapter titles and headings.

\def\appendix{\par
  \setcounter{chapter}{0}
  \setcounter{section}{0}
  \def\@chapapp{\bf{Appendix}}
  \def\thechapter{\Alph{chapter}}}


%    ****************************************
%    *                LISTS                 *
%    ****************************************
%

% The following commands are used to set the default values for the list
% environment's parameters. See the LaTeX manual for an explanation of
% the meanings of the parameters.  Defaults for the list environment are
% set as follows.  First, \rightmargin, \listparindent and \itemindent
% are set to 0pt.  Then, for a Kth level list, the command \@listK is
% called, where 'K' denotes 'i', 'ii', ... , 'vi'.  (I.e., \@listiii is
% called for a third-level list.)  By convention, \@listK should set
% \leftmargin to \leftmarginK.
%
% For efficiency, level-one list's values are defined at top level, and
% \@listi is defined to set only \leftmargin.

\leftmargini 1in
\leftmarginii 1in     % > \labelsep + width of '(m)'
\leftmarginiii 1in   % > \labelsep + width of 'vii.'
\leftmarginiv 1in     % > \labelsep + width of 'M.'
\leftmarginv 1in
\leftmarginvi 1in

\leftmargin\leftmargini
\labelwidth\leftmargini\advance\labelwidth-\labelsep
\labelsep .5em
\parsep 5pt plus 2.5pt minus 1pt

\def\@listi{\leftmargin\leftmargini}

\def\@listii{\leftmargin\leftmarginii
   \labelwidth\leftmarginii\advance\labelwidth-\labelsep
   \topsep 5pt plus 2.5pt minus 1pt
   \parsep 2.5pt plus 1pt minus 1pt
   \itemsep \parsep}

\def\@listiii{\leftmargin\leftmarginiii
    \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
    \topsep 2.5pt plus 1pt minus 1pt
    \parsep \z@ \partopsep 1pt plus 0pt minus 1pt
    \itemsep \topsep}

\def\@listiv{\leftmargin\leftmarginiv
     \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}

\def\@listv{\leftmargin\leftmarginv
     \labelwidth\leftmarginv\advance\labelwidth-\labelsep}

\def\@listvi{\leftmargin\leftmarginvi
     \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}


%%%HISTORICAL LOCAL MODIFICATIONS - REPORT STYLE TO THESIS.STY"
%% THESIS DOCUMENT STYLE -- Released January 1987
%    for LaTeX version 2.09
% Copyright (C) 1985 by Leslie Lamport
% Modified from Report Style by Deborah Teale January 1987
% Modified (March 1988) to clear marks in the CONTENTS and INDEX
% Modified (May 1988) to add newsigncolumn command for multiple signature
%                     columns on the signing page
% Modified (Sep 1992) to remove date on approval page, add table of contents
%                     to toc and add defs Author Degree thesis
%                     default \thesis is thesis rather than dissertation
%\typeout{Document Style 'thesis'.  Released May 1988}
%\typeout{Document Style 'thesis'. Released Sep 1992}
%
%%% IDENTIFICATION
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{ucalgthes}[1998/03/01 v1.0 University of Calgary Thesis Class]
%\RequirePackage{setspace}[200/12/01] %(NM2005) replacing old doublespace.sty %singlespace,onehalfspace and doublespacing options. (nm2007 commented out)%

%%% DECLARATION OF OPTIONS
%  The type size option is handled by reading a different (THESxx.CLO)
%  file for each  size, as follows, to define font size-specific commands:
%       10pt : THES10, 11pt : THES11, 12pt : THES12
%  Defaults are set to 12pt, onside, final (98/03/01)NM
%
\newcommand\@ptsize{}
\newcommand\@draftmark{}
\newcommand\@includeprompt{}
\newcommand\@chapterprompt{}
%
%% Font Size Options (nm1998/03/01)
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}} %11pt option reads THES11.CLO
\DeclareOption{12pt}{\renewcommand\@ptsize{2}} %12pt option reads THES12.CLO
%
%%  Two-side or one-side Printing Option (nm1998/03/01).
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
%
%%  Draft Option (nm1998/03/01)
\DeclareOption{draft}{\renewcommand\@draftmark{1}}
\DeclareOption{final}{\renewcommand\@draftmark{2}}
%
%%  Includeprompt Option(prompt user for includeonly files)(nm1998/03/01)
\DeclareOption{includeprompt}{\renewcommand\@includeprompt{\typein[\includefiles]{Type includeonly filenames {f1,f2,f3}}
\includeonly{\includefiles}}}
%
%%  Chapterprompt Option(prompts user for chapter number and filename)
%%  (nm1998/03/01)
\DeclareOption{chapterprompt}{\renewcommand\chapterprompt{\typein[\chapterfilename]{Type chapter filename }%
\typein[\chapternumber\{Type chapter number }%
\def\chapterprompt{\setcounter{chapter}{\chapternumber}%
\addtocounter{chapter}{-1}%
\include{chapterfilename}}}
%
%%% EXECUTE OPTIONS
\ExecuteOptions{letterpaper,12pt,oneside,final} %(NM2005 added letterpaper)Defaults to 12pt type size, oneside,final

%  Draft Option - options gets implemented
%
% \overfullrule = 0pt             % Default is don't mark overfull hboxes.
\ifnum \@draftmark = 1
\overfullrule 5pt  % Causes overfull hboxes to be marked.
\fi

% The \ProcessOptions command causes the execution of every command FOO
% which is declared and for which the user typed the FOO option in his
% \documentclass command.  For every undeclared option BAR there will be
% a warning message. (nm98/03/01)


\ProcessOptions

%\input setspace.sty %(NM 2005 setspace.sty replacing doublespace.sty)(nm 2007 commented out)
%\input doublespace.sty %(nm 2007 re-instated)
%\input thes1\@ptsize.clo\relax


%    ****************************************
%    *                LISTS                 *
%    ****************************************
%

% ENUMERATE
%  Enumeration is done with four counters: enumi, enumii, enumiii
%  and enumiv, where enumN controls the numbering of the Nth level
%  enumeration.  The label is generated by the commands \labelenumi
%  ... \labelenumiv.  The expansion of \p@enumN\theenumN defines the
%  output of a \ref command.

\def\labelenumi{\arabic{enumi}.}
\def\theenumi{\arabic{enumi}}

\def\labelenumii{(\alph{enumii})}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}

\def\labelenumiii{\roman{enumiii}.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}

\def\labelenumiv{\Alph{enumiv}.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}

% ITEMIZE
% Itemization is controlled by four commands: \labelitemi, \labelitemii,
% \labelitemiii, and \labelitemiv, which define the labels of the various
% itemization levels.(\bf to \bfseries, \bullet \m@ath\bullet, etc.
%  nm1998/03/01)

\def\labelitemi{$\m@th\bullet$}
\def\labelitemii{\bfseries --}
\def\labelitemiii{$\m@th\ast$}
\def\labelitemiv{$\m@th\cdot$}


% VERSE
%   The verse environment is defined by making clever use of the
%   list environment's parameters.  The user types \\ to end a line.
%   This is implemented by \let'in \\ equal \@centercr.
%
\def\verse{\let\\=\@centercr
  \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent
          \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist

% QUOTATION
%   Fills lines
%   Indents paragraph
%
\def\quotation{\list{}{\listparindent 1.5em
    \itemindent\listparindent
    \rightmargin\leftmargin\parsep 0pt plus 1pt}\item[]}
\let\endquotation=\endlist

% QUOTE -- same as quotation except no paragraph indentation,
%
\def\quote{\list{}{\rightmargin\leftmargin}\item[]}
\let\endquote=\endlist

% DESCRIPTION
%
%  To change the formatting of the label, you must redefine
%  \descriptionlabel.

\def\descriptionlabel#1{\hspace\labelsep \bfseries #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
       \let\makelabel\descriptionlabel}}

\let\enddescription\endlist

\newdimen\descriptionmargin
\descriptionmargin=3em


%    ****************************************
%    *         OTHER ENVIRONMENTS           *
%    ****************************************
%
%
% THEOREM
% \@begintheorem ... \@endtheorem are the commands executed at the
% beginning and end of a (user-defined) theorem-like environment.
% Except \@opargbegintheorem is executed when an optional argument is
% given.  Cf. LATEX.TEX.
%
% \def\@begintheorem#1#2{\it \trivlist \item[\hskip \labelsep{\bfseries #1\ #2}]}
% \def\@opargbegintheorem#1#2#3{\it \trivlist
%       \item[\hskip \labelsep{\bfseries #1\ #2\ (#3)}]}
% \def\@endtheorem{\endtrivlist}




% SIGNINGPAGE
% environment signing and command signline
\newlength{\signwidth}
\newenvironment{signing}[1]{\settowidth{\signwidth}{#1} %     %width of longest signature
\def\signline{ \null\vskip 1em\makebox[\signwidth]{\hrulefill}\\}	%signature line
\def\newsigncolumn{\end{minipage}\hfill\begin{minipage}[t]{\signwidth}\raggedleft}% added raggedleft 2009nm allow for more than one column of signatures
\singlespace
\noindent\begin{minipage}{\textwidth}
\raggedleft
\null
\begin{minipage}[t]{\signwidth} \raggedleft %added raggedleft 2009nm
}{\null\end{minipage}\end{minipage}
\null
\par
\vfill
\begin{flushright}
\noindent  \rule{2.5in}{.01in}\null
\\
\noindent Date
\end{flushright}
\endsinglespace}

% ARRAY AND TABULAR
%

\arraycolsep 5pt     % Half the space between columns in an array environment.
\tabcolsep 6pt       % Half the space between columns in a tabular environment.
\arrayrulewidth .4pt % Width of rules in array and tabular environment.
\doublerulesep 2pt   % Space between adjacent rules in array or tabular env.

% TABBING
%
\tabbingsep \labelsep   % Space used by the \' command.  (See LaTeX manual.)

% MINIPAGE
%  \@minipagerestore is called upon entry to a minipage environment to
%  set up things that are to be handled differently inside a minipage
%  environment. In the current styles, it does nothing.
%
% \skip\@mpfootins : plays same role for footnotes in a minipage as
%                    \skip\footins does for ordinary footnotes

\skip\@mpfootins = \skip\footins

% FRAMEBOX
%
\fboxsep = 3pt    % Space left between box and text by \fbox and \framebox.
\fboxrule = .4pt  % Width of rules in box made by \fbox and \framebox.


%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************
%
% DEFINE COUNTERS:
%
% \newcounter{NEWCTR}[OLDCTR] : Defines NEWCTR to be a counter, which is
%                               reset to zero when counter OLDCTR is stepped.
%                               Counter OLDCTR must already be defined.

\newcounter{part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

% For any counter CTR, \theCTR is a macro that defines the printed version
% of counter CTR.  It is defined in terms of the following macros:
%
%  \arabic{COUNTER} : The value of COUNTER printed as an arabic numeral.
%  \roman{COUNTER}  : Its value printed as a lower-case roman numberal.
%  \Roman{COUNTER}  : Its value printed as an upper-case roman numberal.
%  \alph{COUNTER}   : Value of COUNTER printed as a lower-case letter:
%                         1 = a, 2 = b, etc.
%  \Alph{COUNTER}   : Value of COUNTER printed as an upper-case letter:
%                           1 = A, 2 = B, etc.
%

\def\thepart          {\Roman{part}}
\def\thechapter       {\arabic{chapter}}
\def\thesection       {\thechapter.\arabic{section}}
\def\thesubsection    {\thesection.\arabic{subsection}}
\def\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\def\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph  {\theparagraph.\arabic{subparagraph}}

% \@chapapp is initially defined to be 'Chapter'.  The \appendix
% command redefines it to be 'Appendix'.
%
\def\@chapapp{Chapter}



%    ****************************************
%    *         TABLE OF CONTENTS, ETC.      *
%    ****************************************
%
% A \subsection command writes a
%       \contentsline{subsection}{TITLE}{PAGE}
% command on the .toc file, where TITLE contains the contents of the
% entry and PAGE is the page number.  If subsections are being numbered,
% then TITLE will be of the form
%       \numberline{NUM}{HEADING}
% where NUM is the number produced by \thesubsection.  Other sectioning
% commands work similarly.
%
% A \caption command in a 'figure' environment writes
%    \contentsline{figure}{\numberline{NUM}{CAPTION}}{PAGE}
% on the .lof file, where NUM is the number produced by \thefigure and
% CAPTION is the figure caption.  It works similarly for a 'table' environment.
%
% The command \contentsline{NAME} expands to \l@NAME.  So, to specify
% the table of contents, we must define \l@chapter, \l@section,
% \l@subsection, ... ; to specify the list of figures, we must define
% \l@figure; and so on.  Most of these can be defined with the
% \@dottedtocline command, which works as follows.
%
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE}
%    LEVEL    : An entry is produced only if LEVEL < or = value of
%               'tocdepth' counter.  Note, \chapter is level 0, \section
%               is level 1, etc.
%    INDENT   : The indentation from the outer left margin of the start of
%               the contents line.
%    NUMWIDTH : The width of a box in which the section number is to go,
%               if TITLE includes a \numberline command.
%
% This command uses the following three parameters, which are set
% with a \def (so em's can be used to make them depend upon the font).
%   \@pnumwidth : The width of a box in which the page number is put.
%   \@tocrmarg  : The right margin for multiple line entries.  One
%                 wants \@tocrmarg > or = \@pnumwidth
%   \@dotsep    : Separation between dots, in mu units.  Should be \def'd to
%                 a number like 2 or 1.7

\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{2}


% TABLEOFCONTENTS
%  In thesis class, \tableofcontents, \listoffigures, etc. are always
%  set in single-column style.  @restonecol


\def\tableofcontents{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
  \fi\chapter*{\bf Table of Contents\@mkboth{}{}\addcontentsline{toc}{chapter}{Table of Contents}}
 \@starttoc{toc}\if@restonecol\twocolumn\fi} %added \bf to print Table of Contents in bold on pg 2006nm


\def\l@part#1#2{\addpenalty{-\@highpenalty}
   \addvspace{2.25em plus 1pt}  % space above part line
   \begingroup
   \@tempdima 3em         % width of box holding part number, used by
     \parindent \z@ \rightskip \@pnumwidth             %% \numberline
     \parfillskip -\@pnumwidth
     {%\large \bfseries          % set line in \large boldface 2006nm
     \leavevmode          % TeX command to enter horizontal mode.
     #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
     \nobreak             % Never break after part entry
   \endgroup}


\def\l@chapter#1#2{\pagebreak[3]
   \vskip 1.0em plus 1pt  % space above chapter line
   \@tempdima 1.5em       % width of box holding chapter number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth
     \parfillskip -\@pnumwidth
     %\bfseries                  % Boldface removed. 2006nm
     \leavevmode          % TeX command to enter horizontal mode.
     #1\hfil \hbox to\@pnumwidth{\hss #2}\par
   \endgroup}

\def\l@chapter{\@dottedtocline{0}{1.5em}{2.3em}}  %added this line 2006nm
\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}} %changed 1 to 0 2006nm
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}


% LIST OF FIGURES AND ILLUSTRATIONS
%
\def\listoffigures{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
  \fi\chapter*{\bf{List of Figures and Illustrations}\markboth
   {}{}\addcontentsline{toc}{chapter}{List of Figures}}%(NM 2005 added List of Figures to TOC)
   \@starttoc{lof}\if@restonecol\twocolumn
  \fi}

\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}

% LIST OF TABLES
%
\def\listoftables{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
  \fi\chapter*{\bf{List of Tables}\markboth
   {}{}\addcontentsline{toc}{chapter}{List of Tables}}%(NM 2005 added List of Tables to TOC)
   \@starttoc{lot}\if@restonecol\twocolumn
  \fi}

\let\l@table\l@figure

% List of Symbols, Abbreviations and Nomenclature
%
\def\listofsymbols{\input{symbols} \clearpage}
\def\addsymbol #1: #2{$#1$ \> \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \   \parbox{5in}{#2}\\}
\def\newnot#1{\label{#1}}



%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
% The thebibliography environment executes the following commands:
%
%  \def\newblock{\hskip .11em plus .33em minus -.07em} --
%      Defines the `closed' format, where the blocks (major units of
%      information) of an entry run together.
%
%  \sloppy  -- Used because it's rather hard to do line breaks in
%      bibliographies,
%
%  \sfcode`\.=1000\relax --
%      Causes a `.' (period) not toproduce an end-of-sentence space.

\def\thebibliography#1{\altchapter{Bibliography}\list
  {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus -.07em}
    \sloppy
    \sfcode`\.=1000\relax}

\let\endthebibliography=\endlist

% \def\@biblabel#1{[#1]\hfill}  % Produces the label for a \bibitem[...]
                                % command.
% \def\@cite#1{[#1]}            % Produces the output of the \cite command.



%    ****************************************
%    *              THE INDEX               *
%    ****************************************
%
% THE THEINDEX ENVIRONMENT
% Produces double column format, with each paragraph a separate entry.
% The user commands \item, \subitem and \subsubitem are used to
% produce the entries, and \indexspace adds an extra vertical space
% that's the right size to put above the first entry with a new letter
% of the alphabet.

\newif\if@restonecol

\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35pt\twocolumn[\@makeschapterhead{Index}]
    \markboth{}{}\thispagestyle{plain}\parindent\z@
    \parskip\z@ plus .3pt\relax\let\item\@idxitem}

\def\@idxitem{\par\hangindent 40pt}

\def\subitem{\par\hangindent 40pt \hspace*{20pt}}

\def\subsubitem{\par\hangindent 40pt \hspace*{30pt}}

\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}

\def\indexspace{\par \vskip 10pt plus 5pt minus 3pt\relax}


%    ****************************************
%    *             FOOTNOTES                *
%    ****************************************
%
% \footnoterule is a macro to draw the rule separating the footnotes from
% the text.  It should take zero vertical space, so it needs a negative
% skip to compensate for any positive space taken by the rule.  (See
% PLAIN.TEX.)

\def\footnoterule{\kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}                 % The \hrule has default height of .4pt .

% \newcounter{footnote}
\@addtoreset{footnote}{chapter}  % Numbers footnotes within chapters

%   \@makefntext{NOTE} :
%        Must produce the actual footnote, using \@thefnmark as the mark
%        of the footnote and NOTE as the text.  It is called when effectively
%        inside a \parbox of width \columnwidth (i.e., with \hsize =
%        \columnwidth).
%
%        The following macro indents all lines of the footnote by 10pt, and
%        indents the first line of a new paragraph by 1em.  To change these
%        dimensions, just substitute the desired value for '10pt' [in both
%        places] or '1em'.  The mark is flushright against the footnote.
%          \long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize
%             \advance\@tempdima-10pt\parshape \@ne 10pt \@tempdima}\par
%             \parindent 1em\noindent \hbox to \z@{\hss$^{\@thefnmark}$}#1}
%
%        A simpler macro is used, in which the footnote text is
%        set like an ordinary text paragraph, with no indentation except
%        on the first line of a paragraph, and the first line of the
%        footnote.  Thus, all the macro must do is set \parindent
%        to the appropriate value for succeeding paragraphs and put the
%        proper indentation before mark.

\long\def\@makefntext#1{\parindent 1em\noindent
            \hbox to 1.8em{\hss$^{\@thefnmark}$}#1}

% \@makefnmark : A macro to generate the footnote marker that goes
%    in the text.  Default used.
%



%    ****************************************
%    *         FIGURES AND TABLES           *
%    ****************************************
%
% Float placement parameters.  See LaTeX manual for their definition.
%
\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}

% \@makecaption{NUMBER}{TEXT} : Macro to make a figure or table caption.
%      NUMBER : Figure or table number--e.g., 'Figure 3.2'
%      TEXT   : The caption text.
%  Macro should be called inside a \parbox of right width, with \normalsize.

\long\def\@makecaption#1#2{
   \vskip 10pt
   \setbox\@tempboxa\hbox{#1: #2}
   \ifdim \wd\@tempboxa >\hsize   % IF longer than one line:
       \unhbox\@tempboxa\par      %   THEN set as ordinary paragraph.
     \else                        %   ELSE  center.
       \hbox to\hsize{\hfil\box\@tempboxa\hfil}
   \fi}

% To define a float of type TYPE (e.g., TYPE = figure), the document style
% must define the following.
%
%  \fps@TYPE   : The default placement specifier for floats of type TYPE.
%
%  \ftype@TYPE : The type number for floats of type TYPE.  Each TYPE has
%                associated a unique positive TYPE NUMBER, which is a power
%                of two.  E.g., figures might have type number 1, tables type
%                number 2, programs type number 4, etc.
%
%  \ext@TYPE   : The file extension indicating the file on which the
%                contents list for float type TYPE is stored.  For example,
%                \ext@figure = 'lof'.
%
%  \fnum@TYPE  : A macro to generate the figure number for a caption.
%                For example, \fnum@TYPE == Figure \thefigure.
%
%  The actual float-making environment commands--e.g., the commands
%  \figure and \endfigure--are defined in terms of the macros \@float
%  and \end@float, which are described below.
%
%  \@float{TYPE}[PLACEMENT] : Macro to begin a float environment for a
%     single-column float of type TYPE with PLACEMENT as the placement
%     specifier.  The default value of PLACEMENT is defined by \fps@TYPE.
%     The environment is ended by \end@float.
%     E.g., \figure == \@float{figure}, \endfigure == \end@float.


% FIGURE

\newcounter{figure}[chapter]
\def\thefigure{\thechapter.\@arabic\c@figure}

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure \thefigure}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}

% TABLE
%
\newcounter{table}[chapter]
\def\thetable{\thechapter.\@arabic\c@table}

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table \thetable}
\def\table{\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}


%    ****************************************
%    *         TITLE AND ABSTRACT           *
%    ****************************************
%
%
% Uses same title and abstract format as the article style's
% Uses thesistitlepage option
% titlepage option.

% TITLEPAGE
%  In the normal environments, the titlepage environment does nothing but
%  start and end a page, and inhibit page numbers.  It also resets the
%  page number to zero.  In two-column style, it still makes a one-column
%  page.

\def\makethesistitle{\begin{titlepage}
 \let\footnotesize\small      % Local definitions to make \thanks produce
 \let\footnoterule\relax      % \normalsize footnotes with no separating rule.
\setcounter{page}{1}
 \null
 \begin{center}
%\bfseries % Turned off boldfacing for title pg NM2006 and removed word THE on the next line.
UNIVERSITY OF CALGARY \\
\vfill
   {\@title \par}        % Set title in size.
   \vfill                  % Vertical space after title.
by \\
\vfill
   {\@author \par }              % Set author
\vfill
{A \@THESIS} \par                % Allow the word dissertation to be used here
SUBMITTED TO THE FACULTY OF GRADUATE STUDIES \par
IN PARTIAL FULFILLMENT OF THE REQUIREMENTS FOR THE \par
{DEGREE OF \@degree}
\vfill
%{DEPARTMENT OF \@dept \par}
{\@dept \par}
\vfill
{CALGARY, ALBERTA \par}
{{\@monthname}, {\@year} \par}
\vfill
{\copyright\ {\@author}~~{\@year} \par}
\end{center} \par
\null
\end{titlepage}
\setcounter{footnote}{0}       % Footnotes start at zero again.
\let\thanks\relax
\gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax}


\def\titlepage{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
     \else \newpage \fi \thispagestyle{empty}\c@page\z@}

\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}
% Variables for the thesis title page
\def\dept#1{\gdef\@dept{#1}}
\def\degree#1{\gdef\@degree{#1}\gdef\Degree{#1}}
\def\monthname#1{\gdef\@monthname{#1}}
%\def\year#1{\gdef\@year{#1}} %(NM2005 interferred with latex year command for fancyhdr)
      \def\thesisyear#1{\gdef\@year{#1}} % redefined as per above comment (NM2005)
\def\thesis#1{\gdef\Thesis{#1}\gdef\@THESIS{\uppercase{#1}}}
\def\author#1{\gdef\@author{#1}\gdef\Author{#1}}


%    ****************************************
%    *            PAGE STYLES               *
%    ****************************************
%
% The page style 'foo' is defined by defining the command \ps@foo.  This
% command should make only local definitions.  There should be no stray
% spaces in the definition, since they could lead to mysterious extra
% spaces in the output.
%
% The \ps@... command defines the macros \@oddhead, \@oddfoot,
% \@evenhead, and \@evenfoot to define the running heads and
% feet---e.g., \@oddhead is the macro to produce the contents of the
% heading box for odd-numbered pages.  It is called inside an \hbox of
% width \textwidth.
%
% To make headings determined by the sectioning commands, the page style
% defines the commands \chaptermark, \sectionmark, ... , where
% \chaptermark{TEXT} is called by \chapter to set a mark, and so on.
% The \...mark commands and the \...head macros are defined with the
% help of the following macros.  (All the \...mark commands should be
% initialized to no-ops.)
%
% MARKING CONVENTIONS:
% LaTeX extends TeX's \mark facility by producing two kinds of marks
% a 'left' and a 'right' mark, using the following commands:
%     \markboth{LEFT}{RIGHT} : Adds both marks.
%     \markright{RIGHT}      : Adds a 'right' mark.
%     \leftmark  : Used in the \@oddhead, \@oddfoot, \@evenhead or \@evenfoot
%                  macro, gets the current 'left'  mark.  Works like TeX's
%                  \botmark command.
%     \rightmark : Used in the \@oddhead, \@oddfoot, \@evenhead or \@evenfoot
%                  macro, gets the current 'right'  mark.  Works like TeX's
%                  \firstmark command.
% The marking commands work reasonably well for right marks 'numbered
% within' left marks--e.g., the left mark is changed by a \chapter command and
% the right mark is changed by a \section command.  However, it does
% produce somewhat anomalous results if two \bothmark's occur on the same page.
%
%% (98/03/01) - NM Changed \rm and \sl to \rmfamily and \slshape. Removed
%%              \hbox{} also.
%
\mark{{}{}}   % Initializes TeX's marks

% \def\ps@empty{\def\@oddhead{}
%   \def\@oddfoot{}
%   \def\@evenhead{}\def\@evenfoot{}}
%
% \def\ps@plain{\def\@oddhead{}
%   \def\@oddfoot{\rmfamily\hfil\thepage\hfil}
%   \def\@evenhead{}
%   \let\@evenfoot\@oddfoot}

% Definition of 'headings' page style
%  Note the use of ##1 for parameter of \def\chaptermark inside the
%  \def\ps@headings.
%

%\if@twoside         % If two-sided printing.
%\def\ps@headings{\def\@oddfoot{}\def\@evenfoot{}%       No feet.
%\def\@evenhead{\rmfamily \thepage\hfil \slshape \leftmark}%   Left heading.
%\def\@oddhead{{\slshape \rightmark}\hfil \rmfamily\thepage}% Right heading.
%\def\chaptermark##1{\markboth {\uppercase{\ifnum \c@secnumdepth >\m@ne
%     \@chapapp\ \thechapter. \ \fi ##1}}{}}%
%\def\sectionmark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\z@
%   \thesection. \ \fi ##1}}}}
%\else               % If one-sided printing.
%\def\ps@headings{\def\@oddfoot{}\def\@evenfoot{}%     No feet.%2009m,
%\def\@oddhead{{\slshape \rightmark} \hfil \rmfamily\thepage}% Heading.%2009nm
%\def\chaptermark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\m@ne%2009nm
%  \@chapapp\ \thechapter. \ \fi ##1}}}}%2009nm
%\fi%2009nm

% Definition of 'myheadings' page style.
%
%\def\ps@myheadings{\def\@oddhead{{\slshape\rightmark} \hfil \rmfamily\thepage}%
%\def\@oddfoot{}\def\@evenhead{\rmfamily \thepage\hfil\slshape\leftmark}%
%\def\@evenfoot{}\def\sectionmark##1{}\def\subsectionmark##1{}}



%    ****************************************
%    *            MISCELLANEOUS             *
%    ****************************************
%
% DATE
%
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

% EQUATION and EQNARRAY -- put here because it must follow \chapter definition
%
% \newcounter{equation}
%
\@addtoreset{equation}{chapter}   % Makes \chapter reset 'equation' counter.

\def\theequation{\thechapter.\arabic{equation}}

% \jot = 3pt      % Extra space added between lines of an eqnarray environment

% The macro \@eqnnum defines how equation numbers are to appear in equations.
%
% \def\@eqnnum{(\theequation)}
%


%    ****************************************
%    *           INITIALIZATION             *
%    ****************************************
%
% Default initializations

\thesis{thesis}   % default thesis rather than dissertation
%\ps@plain                   % 'myheadings' page style
\pagenumbering{arabic}      % Arabic page numbers
\onecolumn                  % Single-column.
\if@twoside\else\raggedbottom\fi % Ragged bottom unless twoside option.
\setstretch{1.7}		% Initial baselinestretch


%    ****************************************
%    *           doublespace.sty             *
%    ****************************************
%% doublespace.sty
\def\baselinestretch{2}

\def\setstretch#1{\renewcommand{\baselinestretch}{#1}}

\def\singlespace{\def\baselinestretch{1}\@normalsize}
\def\endsinglespace{}

\def\@setsize#1#2#3#4{\@nomath#1\let\@currsize#1\baselineskip
 #2\baselineskip\baselinestretch\baselineskip
 \setbox\strutbox\hbox{\vrule height.7\baselineskip
 depth.3\baselineskip width\z@}
 \normalbaselineskip\baselineskip#3#4}

\skip\footins 20pt plus4pt minus4pt

\def\@xfloat#1[#2]{\ifhmode \@bsphack\@floatpenalty -\@Mii\else
 \@floatpenalty-\@Miii\fi\def\@captype{#1}\ifinner
 \@parmoderr\@floatpenalty\z@
 \else\@next\@currbox\@freelist{\@tempcnta\csname ftype@#1\endcsname
 \multiply\@tempcnta\@xxxii\advance\@tempcnta\sixt@@n
 \@tfor \@tempa :=#2\do
 {\if\@tempa h\advance\@tempcnta \@ne\fi
 \if\@tempa t\advance\@tempcnta \tw@\fi
 \if\@tempa b\advance\@tempcnta 4\relax\fi
 \if\@tempa p\advance\@tempcnta 8\relax\fi
 }\global\count\@currbox\@tempcnta}\@fltovf\fi
 \global\setbox\@currbox\vbox\bgroup
 \def\baselinestretch{1}\@normalsize
 \boxmaxdepth\z@
 \hsize\columnwidth \@parboxrestore}
\long\def\@footnotetext#1{\insert\footins{\def\baselinestretch{1}\footnotesize
 \interlinepenalty\interfootnotelinepenalty
 \splittopskip\footnotesep
 \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
 \hsize\columnwidth \@parboxrestore
 \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
 {\rule{\z@}{\footnotesep}\ignorespaces
 #1\strut}}}
