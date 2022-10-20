\ProvidesClass{SYSUslide1}
\LoadClass[10pt]{ctexbeamer}
\RequirePackage{sysucode}
\RequirePackage[utf8]{inputenc}
\RequirePackage{xeCJK}
\RequirePackage{graphicx}
\RequirePackage{mathtools}
\RequirePackage{utopia} %font utopia imported
\RequirePackage{hyperref}
\RequirePackage{subfigure}
\usetheme{CambridgeUS}
\usecolortheme{dolphin}


% 中山大学视觉形象识别系统暂行管理规定 https://www.docin.com/p-240585637.html
\definecolor{sysugreen}{cmyk}{1.0,0,1.0,0.6} %100 0 100 60
\definecolor{sysured}{cmyk}{0.3,1.0,1.0,0.5} %30 100 100 50
\definecolor{sysublack}{cmyk}{0,0,0,1.0} % 0 0 0 100
\definecolor{sysugreen2}{HTML}{005826}  %005826 from website


%使用南邮的配色设置内容
\setbeamercolor*{palette primary}{bg=sysugreen2}
\setbeamercolor*{palette secondary}{bg=sysured, fg = white}
\setbeamercolor*{palette tertiary}{bg=sysugreen, fg = white}
\setbeamercolor*{titlelike}{fg=sysugreen}
\setbeamercolor*{title}{bg=sysugreen, fg = white}
\setbeamercolor*{item}{fg=sysugreen}
\setbeamercolor*{caption name}{fg=sysugreen}
\usefonttheme{professionalfonts}

% 增加参考文献引用支持
\RequirePackage[backend=biber,autolang=hyphen,style=gb7714-2015,
gbtype=true,gbalign=gb7714-2015,
doi=false,url=false,isbn=false]{biblatex}
% 引入参考文献数据库
\addbibresource[location=local]{ref.bib}

%增加指导老师
\newcommand{\theadvisor}{}
\newcommand{\advisor}[1]{
  \renewcommand{\theadvisor}{#1}
}

%------------------------------------------------------------
% \logo{\includegraphics[width=.13\textwidth]{pic/SYSULogo.pdf}}

% 设置段落首行缩进
\setlength\parindent{20pt}
\setlength\parskip{0pt}

%设置标题页
\setbeamertemplate{title page}{%
\includegraphics[height=1cm]{pic/SYSULogo.pdf}\par
\vspace*{10pt}
\centering
  \songti\selectfont
    {%
    \usebeamerfont{title}
        \heiti
        \inserttitle
    }\par
    {%
    \usebeamerfont{subtitle}
        \insertsubtitle
    }\par\medskip
    {%
    \color{sysugreen}
        \rule{\linewidth}{1pt}
        \vspace*{0.5cm}
    }\par\medskip
    
    {%
    \usebeamercolor[fg]{author}
    \usebeamerfont{author}
      汇报人：\insertauthor\par\smallskip
      指导老师：\theadvisor\par\smallskip
    }
    \vspace*{10pt}
    {%
    \usebeamercolor[fg]{institute}
    \usebeamerfont{institute}
        \insertinstitute
    }\par\medskip
    \vspace*{10pt}
    {%
    \usebeamercolor[fg]{date}
    \usebeamerfont{date}
        \insertdate
    }\par
}

%------------------------------------------------------------
%This block of commands puts the table of contents at the 
%beginning of each section and highlights the current section:
% \AtBeginSection[]
% {
%  \begin{frame}
%    \frametitle{Contents}
%    \tableofcontents[currentsection]
%  \end{frame}
% }
\AtBeginSection[]{
  \setbeamertemplate{background} 
  {
    \centering
    % \includegraphics[trim=0 100 0 0,height=\paperheight,angle=0]{pic/njupt.flower.pdf}
  }
  \begin{frame}
  \vfill
  \centering
  \begin{beamercolorbox}[sep=8pt,center,shadow=true,rounded=true]{title}
    \usebeamerfont{title}\insertsectionhead\par%
  \end{beamercolorbox}
  \vfill
  \end{frame}
  \setbeamertemplate{background}{}
}

%可以为不同的部分设置不同的字体
% %设置不同部分的字体，注意不同设备中安装的字体会不同
% \renewcommand{\normalfont}{\fangsong}
% \setbeamerfont{title}{family=\heiti,series=\bfseries}
% %帧标题字体
% \setbeamerfont{frametitle}{family=\heiti,series=\bfseries}
% %帧子标题字体
% \setbeamerfont{framesubtitle}{family=\kaishu,series=\bfseries}
% \setbeamerfont{footline}{family=\kaishu,size=\tiny}

%设置字号大小
\setbeamerfont{title}{size=\zihao{3},}
\setbeamerfont{subtitle}{size=\fontsize{9.8pt}{10pt}\selectfont,series=\ttfamily}
\setbeamerfont{author}{size=\small}
\setbeamerfont{date}{size=\tiny}
\setbeamerfont{institute}{size=\small}