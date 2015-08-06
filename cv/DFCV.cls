%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LAYOUT CLASS FOR CV  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%%% BY DAVIDE FALANGA %%%%%%%%%%%%%%%%%&&%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{DFCV}[]
\LoadClass[10pt,a4paper]{article}
\usepackage{perpage} %the perpage package
\MakePerPage{footnote}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PACKAGES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Layout pagina
\RequirePackage[a4paper,top=3cm,bottom=2cm,left=1.5cm,right=1.5cm]{geometry}

% Lingua inglese
\RequirePackage[english]{babel}

% Multicolumn sections
\RequirePackage{multicol} 

%% NON SO
\RequirePackage{scrextend}

% Evita float tabelle (floatbarrier)
\usepackage{placeins}

% Previene "a capo" parole a fine rigo
\usepackage[none]{hyphenat}

% Gestione tabelle
\RequirePackage{tabularx}

% Gestione immagini
\RequirePackage{graphicx}

% Tool avanzati tra cui \ifstrempty
\RequirePackage{etoolbox}

% Per creare box in tabelle (utile per usare \\ e andare a capo)
\RequirePackage{pbox}

% Font personalizzati
%\RequirePackage{fontspec} 

% Rimuove spazio in itemize
\RequirePackage{enumitem}

% Rimuove indentazione in itemize
\setlist[itemize]{leftmargin=*}

% Header/Footnotes
\RequirePackage{fancyhdr} 

% Package colori
\RequirePackage{color}
\RequirePackage{xcolor}

% Lets you know the number of the last page
\RequirePackage{lastpage}

% Definizione colore "linkcolour"
\definecolor{linkcolour}{rgb}{0,0.2,0.6} 
\definecolor{light-gray}{gray}{0.97}
\definecolor{dark-gray}{gray}{0.8}

% Link colorati
\RequirePackage[colorlinks = true, 
            linkcolor = linkcolour,
            urlcolor  = linkcolour,
            citecolor = linkcolour,
            anchorcolor = linkcolour]{hyperref}

% Header e piè di pagina personalizzati
\fancypagestyle{personale}{
\pagestyle{plain}
\fancyhead[LE,RO]{\cvheader}
\fancyhead[LO,RE]{}
\fancyfoot[LE,RO]{}
\fancyfoot[LO,RE]{}
\fancyfoot[C]{}%Page \thepage \ of \pageref*{LastPage}}
\renewcommand{\headrulewidth}{0pt}
}
\pagestyle{personale}


% Rimuove spazio dopo tabelle
\addtolength{\parskip}{0.55cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CUSTOM COMMANDS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Riga orizzontale
% \spacehdrule{Margine superiore}{Margine inferiore}
\newcommand{\breakvspace}[1]{\pagebreak[2]\vspace{#1}\pagebreak[2]}
\newcommand{\nobreakvspace}[1]{\nopagebreak[4]\vspace{#1}\nopagebreak[4]}
\newcommand{\spacedhrule}[2]{\breakvspace{#1}\hrule\nobreakvspace{#2}}


\newcommand{\cvheader}{
	\begin{minipage}[t]{.5\textwidth}
		\noindent \Huge \textsc{Davide Falanga} \normalsize
	\end{minipage}
	\begin{minipage}[t]{.49\textwidth}
		\flushright Last update: \today
	\end{minipage}
	\hrule
}

\newcommand{\cvsectiontitle}[1]{
	\Large \textsc{#1} \normalsize \hrulefill \vspace{-0.3cm}
}

\newcommand{\cvelement}[4]{
	\FloatBarrier
	
	\begin{minipage}[t]{.2\textwidth}
		\begin{center}\ifstrempty{#1}{\hfill}{\textsc{#1}\\} 
		\ifstrempty{#2}{}{#2}\end{center}
	\end{minipage}
	\begin{minipage}[t]{.75\textwidth}
		\ifstrempty{#3}{}{\textbf{#3}\\}
		\ifstrempty{#4}{}{#4}
	\end{minipage}

}
