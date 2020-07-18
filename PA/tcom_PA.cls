\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tcom_PA}
\LoadClass{tcom}

\RequirePackage{xkeyval}

\def\docid{NULL}
\define@key{tcom_PA.cls}{docid}[NULL]{%
  \def\docid{#1}%
}

\ExecuteOptionsX{docid}
\ProcessOptionsX%

\RequirePackage{import}
\RequirePackage{hyperref}

\author{Diogo Miguel Ferreira Rodrigues \\ \href{mailto:dmfrodrigues2000@gmail.com}{dmfrodrigues2000@gmail.com}}
\title{TCOM Preparation Activities (PA) - \docid}

% Macros
\renewcommand\thechapter{PA\padzeroes[2]{\decimal{chapter}}}
\usepackage{titlesec}
\titleformat{\chapter}[display]
{\normalfont\huge\bfseries}{Preparation activity \decimal{chapter}}{20pt}{\Huge}
\makeatletter
\let\newtitle\@title
\renewcommand{\chaptermark}[1]{\markboth{\newtitle}{\thechapter. #1}}
\makeatother
