\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{greaseproof}[2024/12/27]
\LoadClass[9pt, twoside]{extarticle}

% popular page size in Amazon's KDP
\RequirePackage[
    paperwidth=6.14in,
    paperheight=9.21in,
    left=0.82in,
    right=0.695in,
    top=0.6in,
    bottom=0.71in,
    twoside,
    headsep=0.15in,
    includehead,
    includefoot,
    showframe
]{geometry}

\RequirePackage[usenames, svgnames, table]{xcolor}
\RequirePackage{float} % [H] for figure environment:
% https://tex.stackexchange.com/questions/22012/hyperref-and-imakeidx-do-not-work-together
\RequirePackage{imakeidx}

%%%%%%%%%% FONTS
\RequirePackage[utf8]{inputenc}
\RequirePackage[LGR, T1]{fontenc}
\RequirePackage[final]{microtype}
\RequirePackage{Alegreya}
\RequirePackage[polish]{babel}
\RequirePackage{polski}

\usepackage[subtle]{savetrees}
\usepackage{titlesec}


% https://tex.stackexchange.com/questions/296056/how-to-get-a-very-compact-toc
\setcounter{tocdepth}{1}
\usepackage{titletoc}
\titlecontents*{section}             % Section
  [0em]                             % Left
  {}         % Above code
  {} % Numbered format
  {}                                % Numberless format
  { {\bfseries\thecontentspage} }           % Filler
  []                                % Separator

%%%%%%%%%% HEADERS, FOOTERS
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
% 341      Rozdział 7. Kalifat algebry | 7.2 Pierścień adeli              342 |
\fancyhead[LE]{\thepage}
\fancyhead[RE]{\nouppercase{\leftmark}}
\fancyhead[LO]{\nouppercase{\rightmark}}
\fancyhead[RO]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.0pt}

\RequirePackage{amsmath} % \DeclareMathOperator
\RequirePackage{amssymb} % \mathbb
\RequirePackage{amsthm}  % \theoremstyle, \newtheorem

\RequirePackage{siunitx}
\sisetup{inter-unit-product=\ensuremath{{}\cdot{}}}


\theoremstyle{plain}
\newcounter{counter}
\numberwithin{counter}{section}
\newtheorem{conjecture}[counter]{Hipoteza}
\newtheorem{integral}[counter]{Całka}
\newtheorem{corollary}[counter]{Wniosek}
\newtheorem{definition}[counter]{Definicja}
\newtheorem{problem}[counter]{Problem}
\newtheorem{example}[counter]{Przyk\l{}ad}
\newtheorem{lemma}[counter]{Lemat}
\newtheorem{proposition}[counter]{Fakt}
\newtheorem{theorem}{Twierdzenie}
\newtheorem{warning}[counter]{Uwaga}
\newtheorem{tobedone}[counter]{Wymaga przeredagowania}



%%%%%%%%%% HYPERLINKS
\RequirePackage[pdfusetitle]{hyperref}
% clickable links
% add [backref] for links from bib entries to citations
% add [pdfusetitle] for metadata
\hypersetup{
    colorlinks,
    linkcolor={blue},
    citecolor={blue},
    urlcolor={blue}
}

% index
\RequirePackage{makeidx}
\patchcmd{\theindex}{\MakeUppercase\indexname}{\sffamily\normalsize\bfseries\indexname}{}{}
\makeindex[title=Skorowidz]
\makeindex[name=persons,title=Indeks osób]


