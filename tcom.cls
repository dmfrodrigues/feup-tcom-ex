\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tcom}
\LoadClass[a4paper]{article}
% Margins
\RequirePackage[top=35mm,bottom=35mm,left=25mm,right=25mm]{geometry}
% Tables with colored cells
\RequirePackage[table]{xcolor}%
% Graphics and images
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{tikz-qtree}
\usetikzlibrary{automata, positioning, arrows}
% Encodings (to render letters with diacritics and special characters)
\RequirePackage[utf8]{inputenc}
\DeclareUnicodeCharacter{2205}{$\emptyset$}
% Language
\RequirePackage[english]{babel}
%
% Hyperreferences
\RequirePackage{hyperref}
% Section pagebreaks
\RequirePackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}
% Source code
\RequirePackage{listings}
\renewcommand{\lstlistingname}{File}
\lstset{
    frame=tb, % draw frame at top and bottom of the code
    tabsize=4, % tab space width
    numbers=left, % display line numbers on the left
	showstringspaces=false, % don't mark spaces in strings    
    commentstyle=\color{green}, % comment color
    keywordstyle=\color{blue}, % keyword color
    stringstyle=\color{red} % string color
}
\lstdefinelanguage{Maxima}{
	keywords={log,jacobian,determinant,subst,float,exp,diff,plot2d,matrix,invert},
	sensitive=true,
	comment=[n][\itshape]{/*}{*/}
}
% Tables with bold rows
\RequirePackage{tabularx}
\newcommand\setrow[1]{\gdef\rowmac{#1}#1\ignorespaces}
\newcommand\clearrow{\global\let\rowmac\relax}
\clearrow
% Tables with diagonal slashes
%\RequirePackage{slashbox}
\RequirePackage{diagbox}
\newcommand\hlinetext{\noindent\makebox[\linewidth]{\rule{\linewidth}{0.4pt}}}
% Math stuff
\RequirePackage[mathscr]{euscript}
\RequirePackage{amsmath,amssymb}
\RequirePackage{mathtools}
\RequirePackage{enumitem}
\DeclareMathOperator{\inter}{inter}
% Definitions, theorems, remarks,...
\RequirePackage{amsthm}
\newtheorem{definition}{Definition}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\renewcommand\qedsymbol{$\blacksquare$}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}
% Some work
\def\title#1{\gdef\@title{#1}\gdef\@@title{#1}}
\def\author#1{\gdef\@author{#1}\gdef\@@author{#1}}
\let\@@title\@empty
\let\@@author\@empty
% Headers and footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\ifx\@@title\@empty\else\@@title\fi}
\fancyfoot[L]{\ifx\@@author\@empty\else\@@author\fi}
\fancyfoot[R]{\thepage}
