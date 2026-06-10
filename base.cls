\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{base}[2026/01/10]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}

\ProcessOptions \relax		% cf. hint on p. 882!

\LoadClass{amsart}
\RequirePackage{amsthm}
\RequirePackage{amsaddr} 
\RequirePackage{amssymb}
\RequirePackage{mfirstuc}
\RequirePackage{stmaryrd}
\RequirePackage{xspace} 
\RequirePackage{ifthen}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{geometry}
\RequirePackage{todonotes}
\RequirePackage{algpseudocodex}
\RequirePackage{algorithm}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{sidecap}
\renewcommand\sidecaptionsep{-10pt}		% For sidecap package
\sidecaptionvpos{figure}{c}		% For sidecap package
\RequirePackage{cleveref}


\newgeometry{vmargin={25mm, 18mm}, hmargin={20mm, 20mm}}
\setlength{\parindent}{12pt}

\def\abstractname{\scshape\bfseries Abstract}

\titleformat{\section}
{\bigskip\scshape\bfseries\filcenter}
{\thesection.}{.5em}{}

\titleformat{\subsection}
{\smallskip\scshape\bfseries}
{\thesubsection}{.5em}{}

\numberwithin{equation}{section}

\newtheoremstyle{statement} % name
{10pt}   % Space above
{3pt}   % Space below
{}  % Body font
{}  % Indent amount
{\scshape}  % Theorem head font
{} % Punctuation after theorem head
{.5em}  % Space after theorem head
{}  % Theorem head spec (can be left empty, meaning ‘normal’)

\theoremstyle{statement}
\newtheorem{definition}{Definition}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}{Corollary}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{remark}{Remark}[section]

\newenvironment{axioms}{\begin{enumerate}[label=(\alph*)]}{\end{enumerate}}
\newenvironment{pproof}{\vspace{-5pt}\begin{proof}}{\end{proof}}
\newcommand{\axiom}[2]{\item {#2} \label[axiom]{#1}}

\newcommand*{\bref}[2][]{#1~\eqref{#2}}
\newcommand*{\Bref}[2][]{\makefirstuc{#1}~\eqref{#2}}

\newcommand*{\M}[1]{\ensuremath{#1}\xspace}
\newcommand{\T}[1]{\text{#1}}
\newcommand*{\QT}[2][]{\M{\quad\T{#2}\ifthenelse{\equal{#1}{}}{\quad}{#1}}}

\newcommand*{\deq}{\M{\mathrel{\mathop:}=}}
\newcommand*{\deqr}{\M{=\mathrel{\mathop:}}}

\newcommand*{\set}[2][]{\M{\left\lbrace\ifthenelse{\equal{#1}{}}{}{#1\: \big\vert \:}{#2}\right\rbrace}}

\newcommand*{\bb}[1]{\M{\mathbb{#1}}}
\newcommand*{\mds}[1]{\M{\left\lvert{#1}\right\rvert}}
\newcommand*{\norm}[1]{\M{\left\lVert{#1}\right\rVert}}
\newcommand*{\closed}[2]{\M{\lbrack{#1,#2}\rbrack}}
\newcommand*{\open}[2]{\M{({#1,#2})}}
\newcommand*{\opclo}[2]{\M{({#1,#2}\rbrack}}
\newcommand*{\clopen}[2]{\M{\lbrack{#1,#2})}}

\newcommand*{\dd}[1]{\M{\,\mathrm{d}#1}}

\DeclareMathOperator*{\abs}{abs}
\DeclareMathOperator*{\trace}{tr\!}
\DeclareMathOperator*{\sgn}{sgn}
\DeclareMathOperator*{\LW}{LambertW}
