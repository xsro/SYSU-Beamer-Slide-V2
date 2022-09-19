\ProvidesClass{SYSUslide}
\LoadClass{beamer}

\RequirePackage{ctex, hyperref}
\RequirePackage[T1]{fontenc}

% other packages
\RequirePackage{latexsym,amsmath,xcolor,multicol,booktabs,calligra}
\RequirePackage{graphicx,pstricks,listings,stackengine}

\RequirePackage{sysubeamer}
\RequirePackage{sysucode}

% defs
\def\cmd#1{\texttt{\color{red}\footnotesize $\backslash$#1}}
\def\env#1{\texttt{\color{blue}\footnotesize #1}}
\definecolor{deepblue}{rgb}{0,0,0.5}
\definecolor{deepred}{rgb}{0.6,0,0}
\definecolor{deepgreen}{rgb}{0,0.5,0}
\definecolor{halfgray}{gray}{0.55}

\lstset{
    basicstyle=\ttfamily\small,
    keywordstyle=\bfseries\color{deepblue},
    emphstyle=\ttfamily\color{deepred},    % Custom highlighting style
    stringstyle=\color{deepgreen},
    numbers=left,
    numberstyle=\small\color{halfgray},
    rulesepcolor=\color{red!20!green!20!blue!20},
    frame=shadowbox,
}