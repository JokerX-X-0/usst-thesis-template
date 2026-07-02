% Shanghai University for Science and Technology master thesis template.
% Based on local files:
% - 上海理工大学博士、硕士研究生学位论文规范.pdf, 2018 revision
% - 硕士内封面格式（专业学位）.doc
% - 外封面格式（专业学位）.doc
% - 授权书及声明.doc
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ussthesis}[2026/07/02 USST master thesis template]

\LoadClass[UTF8,zihao=-4,twoside,openany]{ctexbook}

\RequirePackage[a4paper,left=3.0cm,right=3.0cm,top=3.5cm,bottom=2.5cm,headheight=15pt,headsep=0.8cm,footskip=0.5cm]{geometry}
\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{caption}
\RequirePackage{tocloft}
\RequirePackage{titlesec}
\RequirePackage{amsmath,amssymb}
\RequirePackage{enumitem}
\RequirePackage{etoolbox}
\RequirePackage{tikz}
\RequirePackage[numbers,super,square,sort&compress]{natbib}
\RequirePackage[hidelinks]{hyperref}
\AtBeginDocument{\hypersetup{pageanchor=false}}

\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Consolas}
\setCJKmainfont{SimSun}[BoldFont=SimSun,AutoFakeBold=2.0,ItalicFont=KaiTi]
\setCJKsansfont{SimHei}[BoldFont=SimHei,AutoFakeBold=2.0]
\setCJKmonofont{FangSong}[BoldFont=FangSong,AutoFakeBold=2.0]
\newcommand{\songbold}{\CJKfontspec[FakeBold=2.0]{SimSun}}
\newcommand{\kaibold}{\CJKfontspec[FakeBold=2.0]{KaiTi}}
\newcommand{\timesfakebold}{\fontspec[FakeBold=2.0]{Times New Roman}}
\IfFontExistsTF{LiSu}
  {\newCJKfontfamily\usstlishu{LiSu}}
  {\newCJKfontfamily\usstlishu{SimHei}}

\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\AtBeginDocument{\songti\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}

\makeatletter

\let\cleardoublepage\clearpage

\newcommand{\usst@cleardoublepage}{%
  \clearpage
  \if@twoside
    \ifodd\c@page
    \else
      \begingroup
        \thispagestyle{usst}%
        \null
        \newpage
      \endgroup
    \fi
  \fi
}

\newcommand{\usst@blankback}{%
  \clearpage
  \begingroup
    \thispagestyle{empty}%
    \null
    \clearpage
  \endgroup
}
\newcommand{\usst@frontblankback}{%
  \clearpage
  \begingroup
    \hypersetup{pageanchor=false}%
    \thispagestyle{empty}%
    \null
    \clearpage
  \endgroup
  \hypersetup{pageanchor=true}%
  \addtocounter{page}{-1}%
}

\newcommand{\usst@checkbox}{%
  \tikz[baseline=-0.12em]{\draw[line width=0.4pt] (0,0) rectangle (10bp,10bp);}%
}
\newcommand{\usst@bookmark}[2]{\pdfbookmark[0]{#1}{#2}}
\newcommand{\usst@coverinfo}[2]{\makebox[4\ccwd][l]{#1}：#2}
\newcommand{\usst@studentidlabel}{\makebox[4\ccwd][s]{学\hfill 号}}

\newcommand{\usst@schoolcode}{10252}
\newcommand{\usst@studentid}{}
\newcommand{\usst@classification}{}
\newcommand{\usst@degree}{硕士}
\newcommand{\usst@degreeen}{Master}
\newcommand{\usst@titlezh}{论文中文题目}
\newcommand{\usst@titleen}{English Thesis Title}
\newcommand{\usst@author}{作者姓名}
\newcommand{\usst@authoren}{Author Name}
\newcommand{\usst@department}{学院名称}
\newcommand{\usst@discipline}{学位类别/领域}
\newcommand{\usst@researchfield}{研究方向}
\newcommand{\usst@supervisor}{导师姓名\quad 职称}
\newcommand{\usst@supervisoren}{Professor Supervisor}
\newcommand{\usst@datezh}{二〇二七年四月}
\newcommand{\usst@datearabic}{2027年4月}
\newcommand{\usst@dateen}{April 2027}
\newcommand{\usst@secretyears}{}
\newcommand{\usst@degreemode}{全日制}

\newcommand{\usstSchoolCode}[1]{\gdef\usst@schoolcode{#1}}
\newcommand{\usstStudentID}[1]{\gdef\usst@studentid{#1}}
\newcommand{\usstClassification}[1]{\gdef\usst@classification{#1}}
\newcommand{\usstDegree}[1]{\gdef\usst@degree{#1}}
\newcommand{\usstDegreeEn}[1]{\gdef\usst@degreeen{#1}}
\newcommand{\usstTitle}[1]{\gdef\usst@titlezh{#1}}
\newcommand{\usstTitleEn}[1]{\gdef\usst@titleen{#1}}
\newcommand{\usstAuthor}[1]{\gdef\usst@author{#1}}
\newcommand{\usstAuthorEn}[1]{\gdef\usst@authoren{#1}}
\newcommand{\usstDepartment}[1]{\gdef\usst@department{#1}}
\newcommand{\usstDiscipline}[1]{\gdef\usst@discipline{#1}}
\newcommand{\usstResearchField}[1]{\gdef\usst@researchfield{#1}}
\newcommand{\usstSupervisor}[1]{\gdef\usst@supervisor{#1}}
\newcommand{\usstSupervisorEn}[1]{\gdef\usst@supervisoren{#1}}
\newcommand{\usstDate}[1]{\gdef\usst@datezh{#1}}
\newcommand{\usstDateArabic}[1]{\gdef\usst@datearabic{#1}}
\newcommand{\usstDateEn}[1]{\gdef\usst@dateen{#1}}
\newcommand{\usstSecretYears}[1]{\gdef\usst@secretyears{#1}}
\newcommand{\usstDegreeMode}[1]{\gdef\usst@degreemode{#1}}

\ctexset{
  chapter = {
    name = {第,章},
    number = \chinese{chapter},
    aftername = \hspace{\ccwd},
    format = \centering\heiti\zihao{-2},
    beforeskip = 24bp,
    afterskip = 18bp,
    fixskip = true
  },
  section = {
    format = \songbold\zihao{4}\setlength{\baselineskip}{20bp}\selectfont,
    aftername = \hspace{\ccwd},
    beforeskip = 24bp,
    afterskip = 6bp,
    fixskip = true
  },
  subsection = {
    format = \songbold\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont,
    aftername = \hspace{\ccwd},
    beforeskip = 12bp,
    afterskip = 6bp,
    fixskip = true
  },
  subsubsection = {
    format = \songbold\zihao{5}\setlength{\baselineskip}{20bp}\selectfont,
    aftername = \hspace{\ccwd},
    beforeskip = 12bp,
    afterskip = 6bp,
    fixskip = true
  }
}

\renewcommand{\thechapter}{\chinese{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\chaptermark}[1]{\markboth{第\chinese{chapter}章\quad #1}{}}
\renewcommand{\sectionmark}[1]{}

\newcommand{\usst@sectiontitleformat}{\songbold\fontsize{14bp}{20bp}\selectfont}
\newcommand{\usst@subsectiontitleformat}{\songbold\fontsize{12bp}{20bp}\selectfont}
\newcommand{\usst@subsubsectiontitleformat}{\songbold\fontsize{10.5bp}{20bp}\selectfont}
\titleformat{\section}[hang]
  {\usst@sectiontitleformat}
  {\thesection}{\ccwd}{}
\titlespacing{\section}{0pt}{24bp}{6bp}
\titleformat{\subsection}[hang]
  {\usst@subsectiontitleformat}
  {\thesubsection}{\ccwd}{}
\titlespacing{\subsection}{0pt}{12bp}{6bp}
\titleformat{\subsubsection}[hang]
  {\usst@subsubsectiontitleformat}
  {\thesubsubsection}{\ccwd}{}
\titlespacing{\subsubsection}{0pt}{12bp}{6bp}

\fancypagestyle{usst}{
  \fancyhf{}
  \fancyhead[CE]{\songti\zihao{5}上海理工大学\usst@degree 学位论文}
  \fancyhead[CO]{\songti\zihao{5}\nouppercase{\leftmark}}
  \fancyfoot[C]{\rmfamily\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[CE]{\songti\zihao{5}上海理工大学\usst@degree 学位论文}
  \fancyhead[CO]{\songti\zihao{5}\nouppercase{\leftmark}}
  \fancyfoot[C]{\rmfamily\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{usstfront}{
  \fancyhf{}
  \fancyhead[C]{\songti\zihao{5}\nouppercase{\leftmark}}
  \fancyfoot[C]{\rmfamily\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
}

\DeclareCaptionFont{usstcaption}{\songti\zihao{-4}\setlength{\baselineskip}{16bp}\selectfont}
\DeclareCaptionLabelSeparator{usstspace}{\quad}
\captionsetup{font=usstcaption,labelsep=usstspace}
\captionsetup[figure]{position=bottom,aboveskip=6bp,belowskip=12bp}
\captionsetup[table]{position=top,aboveskip=12bp,belowskip=6bp}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

\renewcommand{\contentsname}{目\quad 录}
\renewcommand{\cfttoctitlefont}{\hfill\heiti\zihao{-2}}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{24bp}
\setlength{\cftaftertoctitleskip}{18bp}
\renewcommand{\cftchapfont}{\songti\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}
\renewcommand{\cftchappagefont}{\rmfamily\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}
\renewcommand{\cftsecfont}{\songti\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}
\renewcommand{\cftsecpagefont}{\rmfamily\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}
\renewcommand{\cftsubsecfont}{\songti\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}
\renewcommand{\cftsubsecpagefont}{\rmfamily\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforechapskip}{0bp}
\setlength{\cftbeforesecskip}{0bp}
\setlength{\cftbeforesubsecskip}{0bp}
\setlength{\cftchapindent}{0pt}
\setlength{\cftsecindent}{\ccwd}
\setlength{\cftsubsecindent}{2\ccwd}
\setlength{\cftchapnumwidth}{4\ccwd}
\setlength{\cftsecnumwidth}{2.5\ccwd}
\setlength{\cftsubsecnumwidth}{3.5\ccwd}
\setcounter{tocdepth}{2}

\setlist{nosep,leftmargin=2em}

\newcommand{\usst@coveritem}[2]{%
  {\heiti\zihao{4}\makebox[4.5em][s]{#1}}\quad{\songti\zihao{4}#2}\par\vspace{0.7em}}

\newcommand{\usst@place}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node[anchor=north west,inner sep=0pt,outer sep=0pt]
      at ([xshift=#1,yshift=-#2]current page.north west) {#3};
  \end{tikzpicture}%
}

\newcommand{\makeoutercover}{%
  \begin{titlepage}
  \thispagestyle{empty}
  \usst@bookmark{外封面}{usst.outercover}%
  \null
  \usst@place{3.9cm}{4.6cm}{%
    \parbox{5cm}{\fontsize{10bp}{14bp}\selectfont
      {\songbold 中图分类号：}\\{\timesfakebold \usst@classification}}}
  \usst@place{5.8cm}{18.0cm}{%
    \parbox{10.5cm}{\centering\kaibold
      {\fontsize{18bp}{30bp}\selectfont \usst@titlezh\par}
      {\fontsize{18bp}{28bp}\selectfont \usst@discipline\par}
      {\fontsize{18bp}{28bp}\selectfont \usst@degreemode\par}
      {\fontsize{18bp}{28bp}\selectfont \usst@author\par}
      {\fontsize{18bp}{28bp}\selectfont \usst@supervisor\par}
      {\fontsize{18bp}{28bp}\selectfont \usst@datezh\par}}}
  \end{titlepage}
  \usst@blankback
}

\newcommand{\makeinnercover}{%
  \begin{titlepage}
  \thispagestyle{empty}
  \usst@bookmark{内封面（中文）}{usst.innercover.zh}%
  \null
  \usst@place{14.15cm}{4.15cm}{%
    \parbox{5.0cm}{\raggedright\heiti\fontsize{10.5bp}{15.6bp}\selectfont
      \usst@coverinfo{学校代码}{\usst@schoolcode}\\
      \usst@coverinfo{\usst@studentidlabel}{\usst@studentid}}}
  \usst@place{0cm}{6.55cm}{%
    \parbox{\paperwidth}{\centering\heiti\fontsize{16bp}{24bp}\selectfont 上海理工大学\usst@degree 学位论文}}
  \usst@place{3.1cm}{10.85cm}{%
    \parbox{14.8cm}{\centering\usstlishu\fontsize{26bp}{42bp}\selectfont \usst@titlezh}}
  \usst@place{7.5cm}{16.9cm}{%
    \begin{tabular}{@{}p{3.2cm}p{7.5cm}@{}}
      {\songbold\fontsize{15bp}{35bp}\selectfont 姓\hspace{2em}名} &
      {\kaishu\fontsize{16bp}{35bp}\selectfont \usst@author}\\[16bp]
      {\songbold\fontsize{15bp}{35bp}\selectfont 系\hspace{2em}别} &
      {\kaishu\fontsize{16bp}{35bp}\selectfont \usst@department}\\[16bp]
      {\songbold\fontsize{12bp}{35bp}\selectfont 学位类别/领域} &
      {\kaishu\fontsize{16bp}{35bp}\selectfont \usst@discipline}\\[16bp]
      {\songbold\fontsize{15bp}{35bp}\selectfont 研究方向} &
      {\kaishu\fontsize{16bp}{35bp}\selectfont \usst@researchfield}\\[16bp]
      {\songbold\fontsize{15bp}{35bp}\selectfont 指导教师} &
      {\kaishu\fontsize{16bp}{35bp}\selectfont \usst@supervisor}
    \end{tabular}}
  \usst@place{0cm}{26.15cm}{%
    \parbox{\paperwidth}{\centering\songti\fontsize{16bp}{24bp}\selectfont
      学位论文完成日期\hspace{2.0em}\usst@datearabic}}
  \end{titlepage}
  \usst@blankback
  \begin{titlepage}
  \thispagestyle{empty}
  \usst@bookmark{内封面（英文）}{usst.innercover.en}%
  \null
  \usst@place{2.5cm}{7.05cm}{%
    \parbox{16cm}{\centering\rmfamily\fontsize{16bp}{32bp}\selectfont
      \MakeUppercase{\usst@titleen}}}
  \usst@place{0cm}{10.35cm}{%
    \parbox{\paperwidth}{\centering\rmfamily\fontsize{16bp}{24bp}\selectfont by}}
  \usst@place{0cm}{11.45cm}{%
    \parbox{\paperwidth}{\centering\rmfamily\fontsize{16bp}{24bp}\selectfont \usst@authoren}}
  \usst@place{2.4cm}{13.7cm}{%
    \parbox{16.2cm}{\centering\rmfamily\fontsize{14bp}{24bp}\selectfont
      A Thesis Submitted to University of Shanghai for Science \& Technology in\\
      Partial Fulfillment of the Requirements for\\
      the Degree of \usst@degreeen}}
  \usst@place{0cm}{19.35cm}{%
    \parbox{\paperwidth}{\centering\rmfamily\fontsize{14bp}{24bp}\selectfont
      Under the Supervision of\\\usst@supervisoren}}
  \usst@place{0cm}{24.85cm}{%
    \parbox{\paperwidth}{\centering\rmfamily\fontsize{14bp}{24bp}\selectfont
      University of Shanghai for Science \& Technology\\\usst@dateen}}
  \end{titlepage}
  \usst@blankback
}

\newcommand{\makeauthorization}{%
  \begin{titlepage}
  \thispagestyle{empty}
  \usst@bookmark{学位论文版权使用授权书}{usst.authorization}%
  \null
  \usst@place{0cm}{3.75cm}{%
    \parbox{\paperwidth}{\centering\heiti\fontsize{18bp}{30bp}\selectfont 学位论文版权使用授权书}}
  \usst@place{3.0cm}{6.0cm}{%
    \parbox{15.0cm}{\songti\fontsize{14bp}{24bp}\selectfont\setlength{\parindent}{2em}
      本学位论文作者完全了解学校有关保留、使用学位论文的规定，同意学位论文保留并向国家有关部门或机构送交论文的复印件和电子版。允许论文被查阅和借阅。本人授权上海理工大学可以将本学位论文的全部内容或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。}}
  \usst@place{3.99cm}{13.7cm}{%
    \parbox{4.5cm}{\songti\fontsize{14bp}{24bp}\selectfont 本学位论文属于}}
  \usst@place{8.65cm}{13.25cm}{%
    \parbox{5.0cm}{\songti\fontsize{14bp}{24bp}\selectfont
      秘\hspace{1.0em}密\hspace{0.4em}\rule[-0.15em]{2.2em}{0.4pt}\hspace{0.4em}年\hspace{1.65em}\usst@checkbox\\
      校\hspace{1.0em}内\hspace{0.4em}\rule[-0.15em]{2.2em}{0.4pt}\hspace{0.4em}年\hspace{1.65em}\usst@checkbox\\
      公\hspace{1.0em}开\hspace{5.65em}\usst@checkbox}}
  \usst@place{3.0cm}{19.2cm}{%
    \parbox{6.0cm}{\songti\fontsize{14bp}{24bp}\selectfont 学位论文作者签名：}}
  \usst@place{10.41cm}{19.2cm}{%
    \parbox{6.0cm}{\songti\fontsize{14bp}{24bp}\selectfont 指导教师签名：}}
  \usst@place{5.96cm}{20.32cm}{%
    \parbox{4.0cm}{\songti\fontsize{14bp}{24bp}\selectfont 年\hspace{1.0em}月\hspace{1.0em}日}}
  \usst@place{12.39cm}{20.32cm}{%
    \parbox{4.0cm}{\songti\fontsize{14bp}{24bp}\selectfont 年\hspace{1.0em}月\hspace{1.0em}日}}
  \end{titlepage}
  \usst@blankback
}

\newcommand{\makedeclaration}{%
  \begin{titlepage}
  \thispagestyle{empty}
  \usst@bookmark{声明}{usst.declaration}%
  \null
  \usst@place{0cm}{3.75cm}{%
    \parbox{\paperwidth}{\centering\heiti\fontsize{18bp}{30bp}\selectfont 声\quad 明}}
  \usst@place{3.0cm}{6.0cm}{%
    \parbox{15.0cm}{\songti\fontsize{14bp}{24bp}\selectfont\setlength{\parindent}{2em}
      本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已注明引用的内容外，本论文不包含任何其他个人或集体已经公开发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。\\
      本声明的法律责任由本人承担。}}
  \usst@place{10.4cm}{13.7cm}{%
    \parbox{8.5cm}{\songti\fontsize{14bp}{24bp}\selectfont
      学位论文作者签名：\\
      \hspace*{4.0cm}年\hspace{1.4em}月\hspace{1.4em}日}}
  \end{titlepage}
  \usst@blankback
}

\newif\ifusst@abstractintoc
\usst@abstractintoctrue
\newcommand{\usstAbstractInToc}{\usst@abstractintoctrue}
\newcommand{\usstAbstractNotInToc}{\usst@abstractintocfalse}

\newenvironment{cnabstract}{%
  \clearpage
  \hypersetup{pageanchor=true}
  \pagestyle{usstfront}
  \pagenumbering{Roman}
  \setcounter{page}{1}
  \phantomsection
  \usst@bookmark{摘要}{usst.abstract.zh}%
  \chapter*{摘\quad 要}
  \markboth{摘要}{摘要}
  \thispagestyle{usstfront}
  \songti\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont
}{\par\usst@frontblankback}

\newcommand{\cnkeywords}[1]{%
  \par\vspace{1em}\noindent{\songbold\zihao{4}关键词：#1}\par}

\newenvironment{enabstract}{%
  \clearpage
  \phantomsection
  \usst@bookmark{ABSTRACT}{usst.abstract.en}%
  \chapter*{ABSTRACT}
  \markboth{ABSTRACT}{ABSTRACT}
  \thispagestyle{usstfront}
  \rmfamily\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont
}{\par\usst@frontblankback}

\newcommand{\enkeywords}[1]{%
  \par\vspace{1em}\noindent{\rmfamily\bfseries\zihao{4}Key Word：#1}\par}

\newcommand{\ussttableofcontents}{%
  \clearpage
  \phantomsection
  \usst@bookmark{目录}{usst.contents}%
  \markboth{目录}{目录}
  \chapter*{\contentsname}
  \markboth{目录}{目录}
  \thispagestyle{usstfront}
  \ifusst@abstractintoc
    {\songti\zihao{-4}\setlength{\baselineskip}{20bp}\selectfont
      \noindent 中文摘要\par
      \noindent ABSTRACT\par}%
  \fi
  \@starttoc{toc}
  \markboth{目录}{目录}
  \usst@frontblankback
}

\newcommand{\usstmainmatter}{%
  \clearpage
  \let\cleardoublepage\usst@cleardoublepage
  \@openrighttrue
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \pagestyle{usst}
}

\renewcommand{\bibname}{参考文献}
\AtBeginEnvironment{thebibliography}{%
  \songti\zihao{-4}\setlength{\baselineskip}{16bp}\selectfont
  \setlength{\itemsep}{3bp}
  \markboth{参考文献}{参考文献}
}
\newcommand{\usstbibliography}[1]{%
  \clearpage
  \phantomsection
  \markboth{参考文献}{参考文献}
  \addcontentsline{toc}{chapter}{参考文献}
  \bibliographystyle{gbt7714-numeric}
  \bibliography{#1}
}

\newcommand{\usstappendix}{%
  \clearpage
  \appendix
  \ctexset{
    chapter = {
      name = {附录,},
      number = \Alph{chapter},
      aftername = \hspace{\ccwd},
      format = \centering\heiti\zihao{-2},
      beforeskip = 24bp,
      afterskip = 18bp,
      fixskip = true
    }
  }
  \renewcommand{\chaptermark}[1]{\markboth{附录\hspace{0.5\ccwd}\Alph{chapter}\hspace{\ccwd}##1}{}}
  \renewcommand{\thefigure}{\Alph{chapter}.\arabic{figure}}
  \renewcommand{\thetable}{\Alph{chapter}.\arabic{table}}
  \renewcommand{\theequation}{\Alph{chapter}-\arabic{equation}}
}

\newcommand{\usstbackmatter}{%
  \clearpage
  \backmatter
  \ctexset{
    chapter = {
      name = {},
      number = {},
      aftername = {},
      format = \centering\heiti\zihao{-2},
      beforeskip = 24bp,
      afterskip = 18bp,
      fixskip = true
    }
  }
  \renewcommand{\chaptermark}[1]{\markboth{##1}{}}
}

\newcommand{\usstAchievementSection}[1]{%
  \par\vspace{24bp}%
  \noindent{\usst@sectiontitleformat #1}\par\vspace{6bp}}

\makeatother
