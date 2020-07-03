\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tcom_test1}
\LoadClass{tcom}

\RequirePackage{xkeyval}

\def\docid{NULL}
\define@key{tcom_test1.cls}{docid}[NULL]{%
  \def\docid{#1}%
}

\ExecuteOptionsX{docid}
\ProcessOptionsX%

\RequirePackage{import}
\RequirePackage{hyperref}

\author{Diogo Miguel Ferreira Rodrigues \\ \href{mailto:dmfrodrigues2000@gmail.com}{dmfrodrigues2000@gmail.com}}
\title{TCOM - Test 1 \docid}
