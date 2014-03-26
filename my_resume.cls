\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[11/22/2013 MyCV]

\LoadClassWithOptions{article}

% no page numbers
\pagestyle{empty}

% ensures that each package is loaded only once
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{amssymb}
\RequirePackage{hyperref}
\RequirePackage{xifthen}
\RequirePackage{fancyhdr}
\RequirePackage{multicol}
\RequirePackage[scale=0.90]{geometry}
\RequirePackage{verbatim}
\RequirePackage{helvet}
%\RequirePackage[parfill]{parskip}

\newcommand{\firstname}[1]{{#1}}
\newcommand{\middleinitial}[1]{{#1}}
\newcommand{\lastname}[1]{{#1}}
\newcommand{\streetaddress}[1]{{#1}}
\newcommand{\citystatezip}[1]{{#1}}
%EMail
%Mobilefone
\newcommand{\email}[1]{\href{mailto:#1}{#1}}
\newcommand{\mobile}[1]{\href{tel:#1}{#1}}

\newcommand{\HRule}{
    \rule{\linewidth}{0.5mm}
}
\renewcommand{\labelitemi}{\tiny$\blacksquare$}
\newcommand{\slanted}{\sl}
\newcommand{\slantedsmall}{\sl\small}

\titlespacing{\section}{0pt}{.25ex}{.25ex}
\titlespacing{\subsection}{0pt}{.0625ex}{0ex}
\titlespacing{\subsubsection}{0pt}{.0625ex}{0ex}

\titleformat{\section}
    {\large\scshape\raggedright}
    {}{0em}{}
    [\titlerule]

\titleformat{\subsection}
    {\scshape\raggedright}
    {}{0em}{}

\newcommand{\worksubsection}[6]{%
    \subsection[#1]{\href{#2}{\textbf{#1}}}
    \noindent%
    {\slantedsmall{{#3}\hfill{#4}}}
    \ifthenelse{\isempty{#5}}
            {}
            {\noindent \\*{\slantedsmall{{#5}\hfill{#6}}}}}

\newcommand{\workinputs}[3]{
    \noindent%
    \begin{itemize}[noitemsep,topsep=0pt]
        \ifthenelse{\isempty{#1}}
            {}
            {\item #1}
        \ifthenelse{\isempty{#2}}
            {}
            {\item #2}
        \ifthenelse{\isempty{#3}}
            {}
            {\item #3}
    \end{itemize}
    \vspace{0.03125cm}%
}

\newcommand{\academicsubsection}[2]{
    \noindent%
    \subsection[#1]{\textbf{#1}\hfill\slantedsmall{{#2}}} 
}

\newcommand{\academicinputs}[2]{
    \noindent%
    \begin{itemize}[noitemsep,topsep=0pt]
        \ifthenelse{\isempty{#1}}
            {}
            {\item #1}
        \ifthenelse{\isempty{#2}}
            {}
            {\item #2}
    \end{itemize}
    \vspace{0.03125cm}%
}

\newcommand{\educationsubsection}[4]{%
    \subsection[#1]{\href{#2}{\textbf{#1}}}
    \noindent%
    {{{#3}}\hfill\slantedsmall{{#4}}}
}

\newcommand{\educationmerits}[3]{
    \noindent% 
    \\* Benchmark Holder in:
    \begin{itemize}[noitemsep,topsep=0pt]
        \item #1
3       \item #2
    \end{itemize}
}

\newcommand{\leadership}[2]{
    \begin{itemize}[noitemsep,topsep=0pt]
        \item #1
        \item #2
    \end{itemize}
}

\newcommand{\references}[4]{
% [t] : Each column aligned vertically to the top
\vspace{0.0625ex}
\noindent%
\begin{minipage}[t]{0.5\textwidth}
    \begin{flushleft}
    #1 
    \end{flushleft}
\end{minipage}%
\begin{minipage}[t]{0.5\textwidth} 
    \begin{flushleft}
    #2
    \end{flushleft}
\end{minipage}

\vspace{0.5cm}%
\noindent%
\begin{minipage}[t]{0.5\textwidth}
    \begin{flushleft}
    #3
    \end{flushleft}
\end{minipage}%
\begin{minipage}[t]{0.5\textwidth} 
    \begin{flushleft}
    #4
    \end{flushleft}
\end{minipage}
}
