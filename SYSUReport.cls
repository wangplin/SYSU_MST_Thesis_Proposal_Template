%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SYSU 微电子科学与技术学院 研究生学位论文开题报告模板
% 作者：Peilin Wang
% License: Creative Commons CC BY 4.0
% GitHub: https://github.com/wangplin/SYSU_MST_Thesis_Proposal_Template
% Overleaf:
% 在SYSU_Latex_Template基础上修改而来， 原作者：NorthSecond
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SYSU 课程论文模板
% 作者：NorthSecond
% License: Creative Commons CC BY 4.0
% GitHub: https://github.com/NorthSecond/SYSU_Latex_Template
% Overleaf:
% 在UCAS_Latex_Template基础上修改而来， 原作者：jweihe
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%UCAS课程论文模板
%%作者：jweihe
%%License：Creative Commons CC BY 4.0
%%GitHub：https://github.com/jweihe/UCAS_Latex_Template
%%Overleaf：https://www.overleaf.com/latex/templates/zhong-guo-ke-xue-yuan-da-xue-ke-cheng-lun-wen-mo-ban/nphpxhhqvnds

%%最后更改于2023/06/05
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%在"北京大学课程论文模板"基础上修改而来
%%原作者：Shawn Wang
%%Overleaf地址：https://www.overleaf.com/latex/templates/bei-jing-da-xue-ke-cheng-lun-wen-mo-ban/yntmqcktrzfh


\ProvidesClass{SYSUReport}
\LoadClass[12pt,hyperref,a4paper,UTF8]{ctexart}
%%页边距
\RequirePackage[left=2.50cm, right=2.50cm, top=2.50cm, bottom=2.50cm]{geometry}

%% 设置中英文字体
\RequirePackage{xeCJK}
\setCJKmainfont{SimSun}[AutoFakeBold=2.5] % 宋体，自动伪粗体
\setCJKsansfont{SimHei}[AutoFakeBold=2.5] % 黑体
\setmainfont{Times New Roman} % 英文和数字使用Times New Roman

%% 定义隶书字体
\setCJKfamilyfont{lishu}{LiSu}[AutoFakeBold=2.5]
\newcommand{\lishu}{\CJKfamily{lishu}}

%% 设置行距为固定值22pt
\RequirePackage{setspace}
\setstretch{1.5} % 大约22pt行距（12pt字号 × 1.5 ≈ 18pt基线距，加上字高约22pt）
\linespread{1.38} % 更精确的22pt固定行距

%% 设置各级标题格式
\ctexset{
    section = {
        format = \centering\heiti\zihao{-2}\bfseries, % 章标题：小二号黑体加粗居中
        beforeskip = 1\baselineskip,
        afterskip = 1\baselineskip, % 段后1行
        number = \arabic{section}, % 章序号：1, 2, 3...
    },
    subsection = {
        format = \songti\zihao{-3}\bfseries, % 节标题：小三号宋体加粗
        indent = 2em, % 左起空两格
        beforeskip = 0.5\baselineskip, % 段前0.5行
        afterskip = 0.5\baselineskip, % 段后0.5行
        number = \arabic{section}.\arabic{subsection}, % 节序号：1.1, 1.2...
    },
    subsubsection = {
        format = \songti\zihao{4}\bfseries, % 条标题：四号宋体加粗
        indent = 2em, % 左起空两格
        beforeskip = 0.5\baselineskip, % 段前0.5行
        afterskip = 0.5\baselineskip, % 段后0.5行
        number = \arabic{section}.\arabic{subsection}.\arabic{subsubsection}, % 条序号：1.1.1...
    },
    paragraph = {
        format = \songti\zihao{-4}, % 款、项标题：小四号宋体
        indent = 2em, % 左起空两格
        beforeskip = 0pt, % 段前0行
        afterskip = 0pt, % 段后0行
        runin = false, % 不与正文同行
        number = (\arabic{paragraph}), % 项序号：(1), (2)...
    }
}

%% 设置正文字体和字号
\renewcommand{\normalsize}{\fontsize{12pt}{22pt}\selectfont} % 小四号，行距22pt


%%一些必要的宏包
\RequirePackage{latexsym,amssymb,amsmath,amsbsy,amsopn,amstext,amsthm,amsxtra,color,bm,calc,ifpdf}
\RequirePackage{graphicx}
\RequirePackage{enumerate}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{multirow}
\RequirePackage{makeidx}
\RequirePackage{xcolor}
\RequirePackage{subfigure}
\PassOptionsToPackage{hyphens}{url}
\RequirePackage[unicode=true,colorlinks,urlcolor=blue,linkcolor=blue,bookmarksnumbered=blue]{hyperref}
\RequirePackage{booktabs}
\RequirePackage{tcolorbox}

\definecolor{myteal}{cmyk}{1,0,1,0.60} % 主题色改为中大绿
%% 更改摘要二字的样式
\renewcommand{\abstractname}{\textbf{\large {摘\quad 要}}}

%可固定下划线长度
\makeatletter
\newcommand\dlmu[2][4cm]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\makeatother

% %更改主题
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=blue,
    urlcolor=magenta,
    citecolor=orange,
    linktoc=all,
}

%%对一些autoref的中文引用名作修改
\def\equationautorefname{式}
\def\footnoteautorefname{脚注}
\def\itemautorefname{项}
\def\figureautorefname{图}
\def\tableautorefname{表}
\def\partautorefname{篇}
\def\appendixautorefname{附录}
\def\chapterautorefname{章}
\def\sectionautorefname{节}
\def\subsectionautorefname{小小节}
\def\subsubsectionautorefname{subsubsection}
\def\paragraphautorefname{段落}
\def\subparagraphautorefname{子段落}
\def\FancyVerbLineautorefname{行}
\def\theoremautorefname{定理}

\newtheorem{Theorem}{定理}[section]
\newtheorem{Lemma}[Theorem]{引理}
\newtheorem{Corollary}[Theorem]{推论}
\newtheorem{Proposition}[Theorem]{命题}
\newtheorem{Definition}[Theorem]{定义}
\newtheorem{Example}[Theorem]{例}

%%文本框设置
\newcommand{\tbox}[1]{
    \begin{center}
        \begin{tcolorbox}[colback=gray!10,%gray background
                colframe=black,% black frame colour
                width=8cm,% Use 8cm total width,
                arc=1mm, auto outer arc,
                boxrule=0.5pt,
            ]
            {#1}
        \end{tcolorbox}
    \end{center}
}

\newcommand\headl[1]{\def\headl{#1}}
\newcommand\headc[1]{\def\headc{#1}}
\newcommand\headr[1]{\def\headr{#1}}
\newcommand\lessonTitle[1]{\def\lessonTitle{#1}}
\newcommand\reportTitle[1]{\def\reportTitle{#1}}
\newcommand\stuname[1]{\def\stuname{#1}}
\newcommand\stuid[1]{\def\stuid{#1}}
\newcommand\inst[1]{\def\inst{#1}}
\newcommand\major[1]{\def\major{#1}}
\newcommand\advisor[1]{\def\advisor{#1}}
\newcommand\research[1]{\def\research{#1}}
\newcommand\defensedate[1]{\def\defensedate{#1}}
\newcommand\degree[1]{\def\degree{#1}}
\renewcommand\date[1]{\def\date{#1}}

%%页眉设置
\pagestyle{fancy}
\fancyhead[L]{\fangsong {\headl}}
\fancyhead[C]{\fangsong {\headc}}
\fancyhead[R]{\fangsong {\headr}}
%% 去掉页眉横线
\renewcommand{\headrulewidth}{0pt}

%% 常用图片文件夹路径
\graphicspath{{figures/}{figure/}{pictures/}{picture/}{pic/}{pics/}{image/}{images/}}

%%在这里可更改封面logo
\newcommand{\cover}{
    %%封面校名logo，图片都在figures文件夹里
    \begin{center}
        % 顶部间距为两行楷体小二加粗的间隔
        {\kaishu \zihao{-2} \vspace*{1.4\baselineskip}}
        
        % 学院名称 - 楷体_GB2312 一号 加粗
        \kaishu \zihao{1} \textbf{中山大学微电子科学与技术学院} \par
        % \vspace{0.5cm}
        
        % 攻读X士学位研究生 - 黑体 二号
        \heiti \zihao{2} 攻读\degree 学位研究生 \par
        % \vspace{2cm}
        
        % 学位论文开题报告 - 宋体 小初 加粗
        \songti \zihao{-0} \textbf{学位论文开题报告} \par
        {\songti \zihao{3} \vspace{1.5\baselineskip}}
        
        % 题目 - 宋体 小二 加粗
        \songti \zihao{-2} \textbf{题\ 目：\dlmu[12cm]{\reportTitle}} \par
        {\songti \zihao{3} \vspace{3\baselineskip}}
        
        % 学生信息 - 宋体 三号 加粗
        \songti \zihao{3} \textbf{
        \begin{tabular}{rl}
            \makebox[4.5em][s]{姓\hfill 名} & \dlmu[8cm]{\stuname} \\[0.4cm]
            \makebox[4.5em][s]{学\hfill 号} & \dlmu[8cm]{\stuid} \\[0.4cm]
            \makebox[4.5em][s]{指导教师} & \dlmu[8cm]{\advisor} \\[0.4cm]
            \makebox[4.5em][s]{专\hfill 业} & \dlmu[8cm]{\major} \\[0.4cm]
            \makebox[4.5em][s]{研究方向} & \dlmu[8cm]{\research} \\[0.4cm]
            \makebox[4.5em][s]{答辩日期} & \dlmu[8cm]{\defensedate} \\
        \end{tabular}
        }
        
        % \vspace*{\fill}

        {\songti \zihao{3} \vspace{1.5\baselineskip}}
        
        % 底部学院名称 - 隶书 三号
        \lishu \zihao{3} 中山大学微电子科学与技术学院制 \par
        \vspace{1cm}
    \end{center}
}

