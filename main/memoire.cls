\ProvidesClass{memoire}[2019/01/26 Class for a memoire]

\LoadClass[12pt, twoside]{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PACKAGES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[french]{babel}
\RequirePackage[autolanguage]{numprint}
\RequirePackage{fontspec}
\RequirePackage{lastpage}
\RequirePackage{graphicx}
\RequirePackage{lipsum}
\RequirePackage[titletoc,title]{appendix}
\RequirePackage{hyperref}
\RequirePackage{xcolor} %highlight notes

% Change margins
\RequirePackage[a4paper, top=2.5cm, bottom=2.5cm, left=2cm, right=2cm]{geometry}

% Maths symbols
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Avoid linebreaks with relation and binary operators
\relpenalty=9999
\binoppenalty=9999

% Bibliographie
\usepackage[section,notlot,notlof]{tocbibind}

% Headers/footers
\setlength{\headheight}{15pt}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead[\thepage / \pageref{LastPage}]{MEEF Maths 2\up{nd} degré}
\chead[Mémoire MEEF]{Mémoire MEEF}
\rhead[MEEF Maths 2\up{nd} degré]{\thepage / \pageref{LastPage}}
\lfoot[]{}
\cfoot[]{}
\rfoot[]{}
