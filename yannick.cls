\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yannick}[2021/05/16 Yannick's LaTeX class]
\LoadClass[11pt, a4paper, english]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
	\DeclareMathOperator*{\argmax}{arg\,max}
	\DeclareMathOperator*{\argmin}{arg\,min}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage[most]{tcolorbox}
\newcounter{testexample}
\RequirePackage{xparse}
\RequirePackage{bbding} % Pencil
\RequirePackage{vietnam}
\RequirePackage{mathtools} % Move align MoveEqLeft
\RequirePackage{harmony}
\RequirePackage{varwidth}
\RequirePackage{faktor} % Quotient of sets
\RequirePackage{color}
\RequirePackage{shuffle} % Shuffle Product
\RequirePackage{amssymb}
\RequirePackage{float}
\RequirePackage{bbm} % doubled one
\RequirePackage{bm} % bold math symbols
\RequirePackage{fancyhdr}

\RequirePackage[list=true]{subcaption} % captions in tabulars
\RequirePackage{tikz}
	\usetikzlibrary{arrows,chains,matrix,positioning,scopes}
	\usetikzlibrary{intersections}
 	\usetikzlibrary{plotmarks}
    \usetikzlibrary{angles,quotes,babel}
    \usetikzlibrary{calc}
    \usetikzlibrary{cd} %Comm. diagrams
	\usetikzlibrary{shapes.misc}
	\usetikzlibrary{fadings,decorations.pathreplacing}
	\RequirePackage[arrow, matrix, curve]{xy}
	\tikzset{
  symbol/.style={
    draw=none,
    every to/.append style={
      edge node={node [sloped, allow upside down, auto=false]{$#1$}}}
  }
}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.10}
\RequirePackage{subfiles}
\RequirePackage{stmaryrd}
\RequirePackage{enumerate}
\RequirePackage{algorithmicx} %Pythoncode
\RequirePackage[Algorithmus]{algorithm}
\RequirePackage{algpseudocode}%Pseudocode 
\RequirePackage{graphicx}
\RequirePackage{enumitem}
\RequirePackage[outer=2cm,inner=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{tikz}
\RequirePackage{imakeidx}
\RequirePackage[
	colorlinks=true,
	urlcolor=blue,
	linkcolor=blue,
	citecolor=Citefarbe
]{hyperref}

\usepackage{setspace}
\setstretch{1.4}


	%%%%%%%%%%%%%%%%
	% Commands %%%%%
	%%%%%%%%%%%%%%%%
	
\newcommand{\falsch}[1]{\colorbox{red}{#1}}
	
\newcommand{\bsp}{\begin{center}
{\scshape\large{ - Example -}}
\end{center}}	
\newcommand{\bsps}{\begin{center}
{\scshape\large{ - Examples -}}
\end{center}}

\setlength\jot{10pt}
\newcommand{\beweis}{\ \\[-0.2cm]
					\textbf{\scshape\large Proof: }}

\newcommand{\rg}{\mathrm{rang}}

\newcommand{\hdm}{\mathcal{H}}	
\newcommand{\alternative}{\ \\[0.3cm]  \begin{center}
 		\textit{------ Alternativer Beweis ------}\end{center}}					
\newcommand{\eig}{
{\scshape\textcolor{darkgray}{\ \\ \textit{ Eigenschaften.}\\ }}
}
\newcommand{\C}{
\complement_{\frac{2}{3}}
}
\newcommand{\cd}{{\zeta}}

\newcommand{\bigslant}[2]{{\raisebox{.2em}{$#1$}\left/\raisebox{-.2em}{$#2$}\right.}}
			
				
\renewcommand{\labelitemi}{$\blacktriangleright$}
\renewcommand{\labelitemii}{$\rhd$}
\renewcommand{\labelenumi}{(\roman{enumi})}	
	

\newcommand{\Smash}{{\wedge}}
\newcommand{\Wedge}{{\vee}}



\newcommand{\s}{\mathsf{S}}
\newcommand{\pfad}{^\curvearrowright}
\def\dsqcup{\sqcup\mathchoice{\mkern-7mu}{\mkern-7mu}{\mkern-3.2mu}{\mkern-3.8mu}\sqcup}


\def\Xint#1{\mathchoice
   {\XXint\displaystyle\textstyle{#1}}%
   {\XXint\textstyle\scriptstyle{#1}}%
   {\XXint\scriptstyle\scriptscriptstyle{#1}}%
   {\XXint\scriptscriptstyle\scriptscriptstyle{#1}}%
   \!\int}
\def\XXint#1#2#3{{\setbox0=\hbox{$#1{#2#3}{\int}$}
     \vcenter{\hbox{$#2#3$}}\kern-.5\wd0}}
\def\ddashint{\Xint=}
\def\dashint{\Xint-}

	%%%%%%%%%%%%%%%%
	% Counter %%%%%%
	%%%%%%%%%%%%%%%%

\newcounter{foo}[section]
\renewcommand*\thefoo{\thesection .\arabic{foo}}
\newcommand\numberthis{\addtocounter{equation}{1}\tag{\theequation}}

\renewcommand\theequation{\arabic{equation}}

	%%%%%%%%%%%%%%%%
	% Colors %%%%%%%
	%%%%%%%%%%%%%%%%
	
\definecolor{Lemmafarbe}{rgb}{0.78, 0.255, 0}
\definecolor{Satzfarbe}{RGB}{0,58,125}
\definecolor{Beispielfarbe}{RGB}{130,90,40}
\definecolor{Korollarfarbe}{RGB}{170,20,20}
\definecolor{Definitionsfarbe}{rgb}{0.306, 0.6, 0.2}
\definecolor{Textboxfarbe}{rgb}{0.42,0.20,0.05}
\definecolor{Textboxfarbe2}{RGB}{119,0,203}
\definecolor{Citefarbe}{RGB}{0,40,0}

	%%%%%%%%%%%%%%%%
	% Styls %%%%%%%%
	%%%%%%%%%%%%%%%%
	
\newtheoremstyle{meindef}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{:}{\newline}{\scshape\large\textcolor{Definitionsfarbe}{\textbf{#1\,#2}}}
%{\rmfamily}{:}{\newline}{\scshape\textcolor{black}{#1\,#2}}
\theoremstyle{meindef}
\newtheorem{defi}{Definition}[section]

\newtheoremstyle{meinlemma}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{:}{\newline}{\scshape\large\textcolor{Lemmafarbe}{\textbf{#1\,#2}}}
\theoremstyle{meinlemma}
\newtheorem{lemi}[defi]{Lemma}

\newtheoremstyle{meinlemn}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{\textcolor{black}{:}}{\newline}{\scshape\large\textcolor{Lemmafarbe}{\textbf{#1\,#2}}\,\textcolor{black}{(#3)}}
\theoremstyle{meinlemn}
\newtheorem{lemni}[defi]{Lemma}

\newtheoremstyle{meinlemmab}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{:}{\newline}{\scshape\large\textcolor{Lemmafarbe}{\textbf{#1\,#2}}}
\theoremstyle{meinlemmab}
\newtheorem{lembi}[defi]{Lemma}

\newtheoremstyle{meinsatz}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{:}{\newline}{\scshape\large\textcolor{Satzfarbe}{\textbf{#1\,#2}}}
\theoremstyle{meinsatz}
\newtheorem{satzi}[defi]{Theorem}

\newtheoremstyle{meinkorollar}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{:}{\newline}{\scshape\large\textcolor{Korollarfarbe}{\textbf{#1\,#2}}}
\theoremstyle{meinkorollar}
\newtheorem{korollari}[defi]{Korollar}

\newtheoremstyle{meinsatzn}{1cm}{1cm}{\rmfamily}{}
{\rmfamily}{\textcolor{black}{:}}{\newline}{\scshape\large\textcolor{Satzfarbe}{\textbf{#1\,#2}}\,\textcolor{black}{(#3)}}
\theoremstyle{meinsatzn}
\newtheorem{satzni}[defi]{Theorem}
\newcommand{\no}[1]{
	\begin{tikzpicture}
	\draw (0,0) rectangle (1.5,1.5);
	\node (hi) at (0.75,0.75){#1}; 
	\end{tikzpicture}}


	%%%%%%%%%%%%%%%%
	% Environments %
	%%%%%%%%%%%%%%%%
	
	\newtcolorbox{sidebar}[2]{empty, 
	title={#1  \ }, attach boxed title to top left, minipage boxed title,
    	boxed title style= 	
    		{empty,size=minimal,toprule=0pt,top=4pt,left=3mm,overlay={}},
    	coltitle=#2,fonttitle=\bfseries,
    	before=\par\medskip\noindent,parbox=false,boxsep=0pt,left=3mm,right=0mm,top=-5pt,breakable,pad at 			break=0mm,
       	before upper=\csname @totalleftmargin\endcsname0pt, % Use instead of parbox=true. This ensures 				parskip is inherited by box.
    	% Handles box when it exists on one page only
    	overlay unbroken={\draw[#2,line width=.5pt] ([xshift=-0pt]title.north west) -- 						([xshift=-0pt]frame.south west); },
    	% Handles multipage box: first page
    	overlay first={\draw[#2,line width=.5pt] ([xshift=-0pt]title.north west) -- 							([xshift=-0pt]frame.south west); },
    	% Handles multipage box: middle page
    	overlay middle={\draw[#2,line width=.5pt] ([xshift=-0pt]frame.north west) -- 							([xshift=-0pt]frame.south west); },
   		 % Handles multipage box: last page
  		  overlay last={\draw[#2,line width=.5pt] ([xshift=-0pt]frame.north west) -- 							([xshift=-0pt]frame.south west); },%
   			 }	
	

	
\NewDocumentEnvironment{dfn}{ O{} }
	{\begin{sidebar}{\defi }{Definitionsfarbe}\ \refstepcounter{foo} \\[-0.6cm] }
		{\end{sidebar}}
		
\newenvironment{satz}[1]{ 
	\begin{sidebar}{\satzi }{Satzfarbe}\ \refstepcounter{foo} \\[-0.6cm]  #1  \refstepcounter{foo}
	\end{sidebar}\beweis }{\ \\ \qed }	
	
\NewDocumentEnvironment{satzb}{ O{} }
	{\begin{sidebar}{\satzi }{Satzfarbe}\ \refstepcounter{foo} \\[-0.6cm] }
		{\end{sidebar}}	
		
\newenvironment{satzn}[2]{ 
	\begin{sidebar}{\satzni[#1] }{Satzfarbe}\ \refstepcounter{foo} \\[-0.6cm]  #2 \refstepcounter{foo}
	\end{sidebar}\beweis }{\ \\ \qed }	
	
\newenvironment{satznb}[1] 
	{\begin{sidebar}{\satzni[#1] }{Satzfarbe}\ \refstepcounter{foo} \\[-0.6cm] }
		{\end{sidebar}}	
		
\newenvironment{lem}[1]{ 
	\begin{sidebar}{\lemi }{Lemmafarbe}\ \refstepcounter{foo} \\[-0.6cm]  #1  \refstepcounter{foo}
	\end{sidebar}\beweis }{\ \\ \qed }	
	
\NewDocumentEnvironment{lemb}{ O{} }
	{\begin{sidebar}{\lemi }{Lemmafarbe}\ \refstepcounter{foo} \\[-0.6cm] }
		{\end{sidebar}}	
		
\newenvironment{lemn}[2]{ 
	\begin{sidebar}{\lemni[#1] }{Lemmafarbe}\ \refstepcounter{foo} \\[-0.6cm]  #2 \refstepcounter{foo}
	\end{sidebar}\beweis }{\ \\ \qed }	
	
\newenvironment{lemnb}[1]
	{\begin{sidebar}{\lemni[#1] }{Lemmafarbe}\ \refstepcounter{foo} \\[-0.6cm] }
		{\end{sidebar}}	
	
 		
\NewDocumentEnvironment{korollar}{ O{} }
	{\begin{sidebar}{\korollari }{Korollarfarbe}\ \refstepcounter{foo} \\[-0.6cm] }
		{\end{sidebar}}	

\newenvironment{aufgabe}[1]{\ \\ \ \\ \no{#1} }{}

	
\usetikzlibrary{shapes,snakes}
\usepackage{amsmath,amssymb}
\tikzstyle{mybox} = [draw=Textboxfarbe, fill=Textboxfarbe!10, very thick,
    rectangle, rounded corners, inner sep=10pt, inner ysep=20pt]
\tikzstyle{fancytitle} =[fill=Textboxfarbe, text=white]

\newenvironment{yannick}[1]{\ \\ \begin{tikzpicture}
\node [mybox] (box){%
    \begin{minipage}{0.96\textwidth}
       #1
    \end{minipage}
};
\node[fancytitle, rounded corners, right=10pt, minimum size=0.8cm] at (box.north west) { \,\textsf{\,Remark}\,\, };
\node[fancytitle, rounded corners, minimum size=0.7cm] at (box.east) {\PencilLeftDown\  };
\end{tikzpicture}}{}
\tikzstyle{mybox2} = [draw=Textboxfarbe2, fill=Textboxfarbe2!10, very thick,
    rectangle, rounded corners, inner sep=10pt, inner ysep=20pt]
\tikzstyle{fancytitle2} =[fill=Textboxfarbe2, text=white]

\newenvironment{problem}[2]{\ \\ \begin{center}
\begin{tikzpicture}
\node [mybox2] (box){%
    \begin{minipage}{0.7\textwidth}
        #2
    \end{minipage}
};
\node[fancytitle2, rounded corners, right=-50pt, minimum size=0.8cm] at (box.north) { \,\textsf{\,#1}\,\, };
\node[fancytitle2, rounded corners, minimum size=0.7cm] at (box.east) {\OrnamentDiamondSolid\  };
\node[fancytitle2, rounded corners, minimum size=0.7cm] at (box.west) {\OrnamentDiamondSolid\  };
\end{tikzpicture}
\end{center}}{}

\usepackage[english]{babel}
\selectlanguage{english}

	
	
	%%%%%%%%%%%%%%%%
	% Python %%%%%%%
	%%%%%%%%%%%%%%%%	
	
	
\lstdefinestyle{mystyle}{
    basicstyle=\ttfamily\small,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

