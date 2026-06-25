%%% 文档类信息 %%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MyReport}[自用模板]
\def\xjtuthesis{MyReport}
\def\meta@version{4.0.0}
\def\metaversion{\meta@version}

\LoadClass[twoside]{article}

\PassOptionsToPackage{no-math}{fontspec}                        %保证mathspec在中文中的正常使用
\RequirePackage[zihao=-4]{ctex}                                 %中文设置
\RequirePackage{xunicode}                                       %
\RequirePackage[BoldFont,SlantFont,CJKchecksingle]{xeCJK}
\RequirePackage{pgfkeys,pgfopts}                                % 键值对
\RequirePackage{xpatch}                                         %可修改内部命令
\RequirePackage{float}                                          %浮动体设置
\RequirePackage[hidelinks,bookmarksnumbered=true]{hyperref}     %加超链接，需要连续编译两次
\RequirePackage{glossaries}                                     %生成主要符号表
\RequirePackage{paralist}                                       %使用inparaenum环境
\RequirePackage{pifont}                                         %带圈数字序号
\RequirePackage[flushmargin,bottom,perpage,symbol*]{footmisc}   %脚注格式设置
\RequirePackage{fancyhdr}                                       %页眉页脚
\RequirePackage{siunitx}                                        %国际单位
\RequirePackage{amsmath}                                        %多行公式
\RequirePackage{amssymb}                                        %获得额外的数学符号
\RequirePackage{esint}                                          %获得额外的数学符号
\RequirePackage{multirow}                                       %表格中单元格可以合并
\RequirePackage{makecell}                                       %表格中单元格可以强制换行
\RequirePackage{graphicx}                                       %可以插入图片
\RequirePackage{subcaption}                                     %多图，多字图
\RequirePackage{booktabs}                                       %三线表
\RequirePackage{tabu}                                           %三线表
\RequirePackage{tabularx}                                       %处理表格列宽
\RequirePackage{xltabular}                                      %长表格
\RequirePackage{titlesec}                                       %修改标题样式
\RequirePackage{changepage}                                     %过宽内容
\RequirePackage{pgfplots}
\RequirePackage{tikz}                                           %绘图用
\RequirePackage{appendix}                                       %可使用附录
\RequirePackage{titletoc}                                       %自定义目录
\RequirePackage[a4paper,left=26mm,right=26mm,top=2.1cm,bottom=2cm,includehead,includefoot,asymmetric,bindingoffset=0cm]{geometry}
\RequirePackage{pdflscape}                                      %可旋转页面
\RequirePackage{setspace}                                       % 设置行间距
\RequirePackage{cleveref}                                       %交叉引用
\RequirePackage[most]{tcolorbox}                                %颜色块
\tcbuselibrary{listings,skins,breakable,xparse}
\RequirePackage{etoolbox}                                       % 钩子工具
\RequirePackage{mathspec}                                       %必须在amsmath宏包之后，且不能加载fontspec宏包
\RequirePackage{caption}                                        % 用于定制标题样式（如果需要）

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% 段落调整 %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\baselinestretch}{1.4}
\renewcommand{\CJKglue}{\hskip 0.56pt plus 0.08\baselineskip}

\setlength{\parindent}{2.1em}
% \setlength{\parskip}{3pt plus1pt minus1pt}
\setlength{\intextsep}{9pt}
\setlength{\extrarowheight}{2pt}

\linespread{1.33}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% 自定义命令 %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\everymath{\displaystyle}%将行内公式转化为行间公式效果

\newcommand{\theFigWid}{0.74}%统一设置图片宽度，在figure环境中使用
\newcommand{\theFigWidTwo}{0.6}
\newcommand{\ful}[2][4cm]{\underline{\makebox[#1][c]{#2}}}% 设置自定义下划线

\newcommand{\Runit}[1]{{\rm ~ #1}}%一个自定义的单位输入方法
\newcommand{\cel}{~^\circ {\rm C}}%自定义℃
\newcommand{\diff}{{\rm \,d}}%定义微分号
\newcommand{\Diff}{{\rm \,D}}%定义微分号
% \newcommand{\T}{^{\rm T}}%定义转置符号
\newcommand{\e}{{\rm e}}%定义自然指数符号
\newcommand{\ii}{{\rm i}}%定义虚数符号
\renewcommand{\i}{\mathrm{i}}%定义虚数符号
\newcommand{\R}{\mathbb{R}}%定义实数域
\newcommand{\ve}[1]{\textit{\textbf{#1}}} %向量加粗
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 设置中文字体 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setCJKmainfont[AutoFakeBold={1.8}]{SimSun}
\setCJKmonofont[AutoFakeBold={1.8}]{SimSun}
\setCJKsansfont[AutoFakeBold={1.8}]{SimSun}
\setCJKmainfont[AutoFakeBold=true]{SimSun}% 宋体直接加粗

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 设置英文字体 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setmainfont[Mapping=tex-text]{Times New Roman}
% \setsansfont[Mapping=tex-text]{Times New Roman}
% \setmonofont[Mapping=tex-text]{Times New Roman}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 设置公式字体 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setmathsfont(Digits,Latin)[Numbers={Lining,Proportional}]{Times New Roman}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 报告基本信息 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\titlename[1]{\def\@titlename{#1}}%报告名称
\newcommand\stuname[1]{\def\@stuname{#1}}%姓名
\newcommand\stuID[1]{\def\@stuID{#1}}%学号
\newcommand\stuClass[1]{\def\@stuClass{#1}}%班级

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% 键值对设置 %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pgfkeys{
    /MyReport/.cd,                              % 进入族的路径
    % 英文适配，指定关键词English
    English/.is if = MyReport@English,          % 布尔开关
    English/.default = true,                    % 当用户只写 English 时，视为 true
    % 摘要类型，定义可选参数 abstractType ，可选值为none,zh,en,zhen，默认为none
    abstractType/.is choice,
    abstractType/none/.code = \def\MyReport@abstractType{0},
    abstractType/zh/.code = \def\MyReport@abstractType{1},
    abstractType/en/.code = \def\MyReport@abstractType{2},
    abstractType/zhen/.code = \def\MyReport@abstractType{3},
    abstractType/.unknown/.code = \PackageError{MyReport}{Unknown abstractType `#1'}{Please choose from none,,zh,en,zhen},
    abstractType/.default = none,
    abstractType = none,                         % 默认值：无摘要
    % section类型，定义可选参数 sectionType，可选值为 default, next,odd, 默认为 default
    sectionType/.is choice,
    sectionType/default/.code = \def\MyReport@sectionType{0},
    sectionType/next/.code = \def\MyReport@sectionType{1},
    sectionType/odd/.code = \def\MyReport@sectionType{2},
    sectionType/.unknown/.code = \PackageError{MyReport}{Unknown sectionType `#1'}{Please choose from default, next, odd},
    sectionType/.default = default,
    sectionType = default,                         % 默认值：默认 default
    % 抄录环境使用，定义可选参数 listType 可传入 minted, listings，默认为 minted
    listType/.is choice,
    listType/minted/.code = \def\MyReport@listType{0},
    listType/listings/.code = \def\MyReport@listType{1},
    listType/.unknown/.code = \PackageError{MyReport}{Unknown listType `#1'}{Please choose from minted, listings},
    listType/.default = minted,
    listType = minted,
    % 参考文献传递，使用可选参数 Reference，可传入 ref.bib ，默认为空
    Reference/.store in = \MyReport@Reference,
    Reference = {},                     % 默认空，即“没有传入”    
}
% 处理传递值
\newif\ifMyReport@English
\MyReport@Englishfalse

% 处理 \documentclass 传入的全局选项
\ProcessPgfOptions{/MyReport}

% 摘要传入接口
\newcommand{\@zhAbstractText}{默认中文摘要内容}  % 默认值
\newcommand{\zhAbstractText}[1]{%通过 \@zhAbstractText 访问
    \renewcommand{\@zhAbstractText}{#1}%
}
\newcommand{\@zhAbstractKey}{默认中文摘要关键词}  % 默认值
\newcommand{\zhAbstractKey}[1]{%通过 \@zhAbstractKey 访问
    \renewcommand{\@zhAbstractKey}{#1}%
}
\newcommand{\@enAbstractText}{默认英文摘要内容 Default English abstract content}  % 默认值
\newcommand{\enAbstractText}[1]{%通过 \@enAbstractText 访问
    \renewcommand{\@enAbstractText}{#1}%
}
\newcommand{\@enAbstractKey}{Default English abstract keywords}  % 默认值
\newcommand{\enAbstractKey}[1]{%通过 \@enAbstractKey 访问
    \renewcommand{\@enAbstractKey}{#1}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% 中文字号 %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\chuhao}{\fontsize{42pt}{42pt}\selectfont}      % 初号，1.0倍行距
\newcommand{\xiaochu}{\fontsize{36pt}{36pt}\selectfont}     % 小初，1.0倍行距
\newcommand{\yihao}{\fontsize{26pt}{26pt}\selectfont}       % 一号，1.0倍行距
\newcommand{\xiaoyi}{\fontsize{24pt}{24pt}\selectfont}      % 小一, 1.0倍行距
\newcommand{\erhao}{\fontsize{22pt}{22pt}\selectfont}       % 二号，1.0倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{18pt}\selectfont}      % 小二, 1.0倍行距
\newcommand{\sanhao}{\fontsize{16pt}{16pt}\selectfont}      % 三号, 1.0倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{15pt}\selectfont}     % 小三, 1.0倍行距
\newcommand{\sihao}{\fontsize{14pt}{14pt}\selectfont}       % 四号, 1.0倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{12pt}\selectfont}      % 小四, 1.0倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}   % 五号, 1.0倍行距
\newcommand{\xiaowu}{\fontsize{9pt}{9pt}\selectfont}        % 小五, 1.0倍行距
\newcommand{\liuhao}{\fontsize{7.5pt}{7.5pt}\selectfont}    % 六号, 1.0倍行距
\newcommand{\xiaoliu}{\fontsize{6.5pt}{6.5pt}\selectfont}   % 小六, 1.0倍行距


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 参考文献设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifx\MyReport@Reference\empty
    % 未提供 Reference → 什么也不做 
\else
    % 提供了 Reference → 
    \RequirePackage[hyperref=true,backend=biber,url=false,doi=false,sorting=none,style=gb7714-2015,gbpunctin=false,gbpub=false,gbnamefmt=lowercase,gbalign=left]{biblatex}
    \DefineBibliographyStrings{english}{in={}}
    \renewcommand{\bibfont}{\wuhao} % 设置参考文献字体
    \setlength{\bibitemsep}{0ex}
    \setlength{\bibnamesep}{0ex}
    \setlength{\bibinitsep}{0ex}
    % 处理可能逗号分隔的多个文件
    \@for\@bibfile:=\MyReport@Reference\do{%
        \addbibresource{\@bibfile}%
    }%
    \ifMyReport@English
        \renewcommand\refname{References}
    \else
        \renewcommand\refname{参考文献}
    \fi
    \AtEndDocument{
        \printbibliography[heading=bibintoc]
    }
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% 算法环境 %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[ruled,linesnumbered]{algorithm2e}
\ifMyReport@English
    \renewcommand{\algorithmcfname}{Alg.}
\else
    \renewcommand{\algorithmcfname}{算法}
    \SetKwInOut{KwIn}{输入}
    \SetKwInOut{KwOut}{输出}
\fi
\numberwithin{algocf}{section}
\renewcommand{\thealgocf}{\arabic{section}-\arabic{algocf}}
\SetKw{And}{And}
\SetKw{Or}{Or}
\SetKw{Warning}{Warning: }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% 抄录环境 %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor}
\definecolor{c_bg}{HTML}{F2F2F2}    % 背景颜色，#F2F2F2
\definecolor{c_key}{HTML}{DB5864}
\definecolor{c_str}{HTML}{0F3969}
\definecolor{c_cmt}{HTML}{717A83}
\definecolor{c_key2}{HTML}{E36209}

\ifcase\MyReport@listType\relax
    % 0， minted
    \RequirePackage[newfloat]{minted}
    \newfontfamily{\consolasfont}{Consolas}[NFSSFamily=MyConsolas]
    \setminted{style=tango, % 可选的配色方案，例如 emacs，trac
        linenos,  % 显示行号
        autogobble, % 自动删除空格
        bgcolor = c_bg, % 背景颜色
        bgcolorpadding=0em,
        baselinestretch =1.5, % 行间距
        fontfamily   = MyConsolas, % 字体
        fontsize =\xiaowu, % 字号
        frame =leftline, % 边框
        rulecolor=\color{black!70},
        framesep =2pt,framerule = 1pt,
        xleftmargin=0em,xrightmargin=0em,
        numbersep=3pt,
        breaklines} % 自动换行
    \newcounter{codecounter}[section]
    \renewcommand{\thecodecounter}{\thesection-\arabic{codecounter}}
    \pgfkeys{/code/.is family, /code,
        caption/.store in = \codecaption,
        label/.store in   = \codelabel,
        caption = {},
        label   = {},
        highlightlines/.store in = \codehighlightlines,
        highlightcolor/.store in = \codehighlightcolor,
        highlightcolor           = gray!40,   % 默认颜色
        highlightlines           = {},        % 默认为空
    }

    \renewenvironment{lstlisting}[2][]{%
        \pgfkeys{/code/.cd, #1}%
        \ifx\codecaption\empty\else
            \refstepcounter{codecounter}%
            \ifMyReport@English
                \begin{center}{Lst.~\thecodecounter: }\ \codecaption\vspace{-1.5ex}\end{center}%
            \else
                \begin{center}{程序~\thecodecounter: }\ \codecaption\vspace{-1.5ex}\end{center}%
            \fi
        \fi
        \VerbatimEnvironment
        \ifx\codehighlightlines\empty
            \def\@mintedoptions{}%
        \else
            \edef\@mintedoptions{%
                highlightlines={\codehighlightlines},%
                highlightcolor=\codehighlightcolor
            }%
        \fi
        % 使用 \minted 命令启动，并用 \expandafter 展开选项宏
        \expandafter\minted\expandafter[\@mintedoptions]{#2}%
    }{%
        \endminted
        \ifx\codelabel\empty\else\label{\codelabel}\fi
    }
    \newcommand{\hndm}[1]{ \mintinline[bgcolor=c_bg, breaklines=true, fontsize=\wuhao]{text}{#1} }
\or
    % 1， listings
    \newfontfamily\fontcode{Consolas} % Consolas, Courier New
    \RequirePackage{listings}
    \lst@Key{highlightlines}{}{\relax}
    \lst@Key{highlightcolor}{}{\relax}
    \lstdefinestyle{python}{%
        language=Python,
        morekeywords={@property,@classmethod,@staticmethod},
        % 第二类关键字（classoffset=1，使用第2个 keywordstyle）
        classoffset=1,
        morekeywords={%
                range,int,str,list,dict,set,bool,float,
                tuple,super,type,print,len,sum,min,max,
                enumerate,zip,map,filter,any,all,as,assert,
                nonlocal,with,yield,self,True,False,None,
                lambda,raise,await,async,
                marker,
            },
        classoffset=0,  % 重置回默认类别
        morestring=[b]""",
    }
    \lstset{
        basicstyle=\fontcode\xiaowu\color{black},
        keywordstyle=\color{c_key}\bfseries,
        keywordstyle=[2]\color{c_key2}\bfseries,
        commentstyle=\color{c_cmt},
        stringstyle=\color{c_str},
        backgroundcolor=\color{gray!10},
        frame=leftline,
        frameround = tttt,
        rulecolor=\color{black!70},
        showstringspaces=false,
        showspaces=false,
        breaklines=true,
        extendedchars=false,
        numbers=left,
        numberstyle=\tiny\color{black}, %数字大小，颜色调整
        numbersep=5pt, %数字右端（若为左侧显示数字）水平距离代码5pt
        xleftmargin=1em,xrightmargin=0em,aboveskip=1em,
    }
    \captionsetup[lstlisting]{justification=centering,labelsep=colon}
    \renewcommand{\lstlistingname}{程序}
    \ifMyReport@English
        \renewcommand{\lstlistingname}{Lis.}
    \else
        \renewcommand{\lstlistingname}{程序}
    \fi

    \AtBeginDocument{
        \counterwithin{lstlisting}{section}
        \renewcommand\thelstlisting{\arabic{section}-\arabic{lstlisting}}
    }
    \let\originallstlisting\lstlisting
    \let\endoriginallstlisting\endlstlisting
    \RenewDocumentEnvironment{lstlisting}{O{} m}{%
        \lstset{language=#2}%
    \originallstlisting[#1]%
    }{%
        \endoriginallstlisting
    }
    \newcommand{\hndm}[1]{ \lstinline[basicstyle=\fontcode\wuhao\color{black},backgroundcolor=\color{c_bg}, breaklines=true]|#1| }
\else
    \PackageWarning{MyReport}{Invalid arg number with listType}
\fi

% colorbox 模板说明使用
\newfontfamily\texcodefont{Consolas}
\newtcblisting{texcode}[2][]{
    #1,
    breakable,
    bicolor, colbacklower=white,
    listing options={
            style=tcblatex,
            basicstyle=\texcodefont\xiaowu,
            keywordstyle=\color{c_key},
            commentstyle=\color{c_cmt},
            numbers=none,
            numberstyle=\tiny\color{red!75!black}\emptyaccsupp,
            emptylines=1,
            escapeinside=
        },
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 修改标题样式 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}[block]
{\centering\sanhao\selectfont}{\arabic{section}}{1em}{}
\titleformat{\subsection}[block]
{\xiaosan\selectfont}{\arabic{section}.\arabic{subsection}}{7pt}{}
\titleformat{\subsubsection}[block]
{\sihao\selectfont}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{7pt}{}
\titlespacing{\section}{0pt}{3.25ex plus 1ex minus .2ex}{14pt plus .2ex}
\titlespacing{\subsection}{0pt}{1.2em plus 1ex minus .2ex}{0.6em plus .2ex}
\titlespacing{\subsubsection}
{2.1em}% 标题左侧额外空间  
{1.0ex plus .2ex minus .1ex}% 标题上方额外空间  
{0.5ex plus .2ex}% 标题下方额外空间 

\setcounter{secnumdepth}{5}
\titleformat{\paragraph}[block]
{\xiaosi\selectfont}{\arabic{paragraph}.}{1ex}{}
\titlespacing{\paragraph}
{2.1em}% 标题左侧额外空间  
{1.0ex plus .2ex minus .1ex}% 标题上方额外空间  
{0.0ex plus .0ex}% 标题下方额外空间 

\ifcase\MyReport@sectionType\relax% 默认
    \let\mysection\section \def\section{\vspace*{0ex}\mysection} %section默认
\or%next
    \let\mysection\section \def\section{\clearpage\vspace*{0ex}\mysection} %section换页
\or%odd
    \let\mysection\section \def\section{\cleardoublepage\vspace*{0ex}\mysection} %section奇数页换页
\else
    \PackageWarning{MyReport}{Invalid arg number with sectionType}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 附录格式设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\myAppendix}{%
    \appendices
    \renewcommand{\thesection}{附录\Alph{section}}
    \titleformat{\section}[block]
    {\centering\fontsize{16pt}{32pt}\selectfont}{附录\Alph{section}}{1em}{}
    \titleformat{\subsection}[block]
    {\fontsize{15pt}{15pt}\selectfont}{附录\Alph{section}.\arabic{subsection}}{7pt}{}
    \titleformat{\subsubsection}[block]
    {\fontsize{13pt}{13pt}\selectfont}{附录\Alph{section}.\arabic{subsection}.\arabic{subsubsection}}{7pt}{}
    \titlespacing{\section}{0pt}{3.25ex plus 1ex minus .2ex}{14pt plus .2ex}
    \titlespacing{\subsection}{0pt}{1.2em plus 1ex minus .2ex}{0.6em plus .2ex}
    \titlespacing*{\subsubsection}
    {2.1em}% 标题左侧额外空间  
    {3.25ex plus 1ex minus .2ex}% 标题上方额外空间  
    {0.5ex plus .2ex}% 标题下方额外空间 

    \setcounter{table}{0}   %从0开始编号，显示出来表会A1开始编号
    \setcounter{figure}{0}
    \setcounter{equation}{0}
    %定义编号格式，为“附录A-1”
    % \renewcommand{\thetable}{\thesection-\arabic{table}}
    % \renewcommand{\thefigure}{\thesection-\arabic{figure}}
    % \renewcommand{\theequation}{\thesection-\arabic{equation}}
    %定义编号格式，为“A-1”
    \renewcommand{\thetable}{\Alph{section}-\arabic{table}}
    \renewcommand{\thefigure}{\Alph{section}-\arabic{figure}}
    \renewcommand{\theequation}{\Alph{section}-\arabic{equation}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% 浮动体格式设置 %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 浮动体编号
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}
\renewcommand{\theequation}{\arabic{section}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{section}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}
% 设置三线表
\setlength{\heavyrulewidth}{1.5pt}  % \toprule \bottomrule
\setlength{\lightrulewidth}{1.0pt}  % \midrule 
\setlength{\arrayrulewidth}{0.5pt}  % \hline

\tabcolsep=1ex
\tabulinesep=\tabcolsep

\newcolumntype{Y}{>{\centering\arraybackslash}X}%居中问题
\newcolumntype{Z}{>{\raggedleft\arraybackslash}X}%居右问题

% \renewcommand{\arraystretch}{1.2}
% 修改表格上下规则线与正文的垂直间距
% \AddToHook{env/table/before}{%
%     \belowrulesep=2pt
%     \aboverulesep=0pt
% }
\captionsetup[table]{belowskip=0ex,aboveskip=0ex}
\captionsetup[subfigure]{belowskip=0pt,labelformat=simple}
\renewcommand\thesubfigure{(\alph{subfigure})}
% 设置图表标签
\let\oldcref\cref
\renewcommand{\cref}[1]{\oldcref{#1} }
%兼容英文
\ifMyReport@English
    \renewcommand{\figurename}{Fig.}
    \renewcommand{\tablename}{Table}
    \captionsetup[figure]{belowskip=-2ex,font={small}} % 设置图标题与下文之间的距离，英文
    \crefname{table}{Table}{Tables}
    \Crefname{table}{Table}{Tables}
    \crefname{algorithm}{Alg.}{Algs.}
    \Crefname{algorithm}{Alg.}{Algs.}
    \Crefname{figure}{Fig.}{Figs.}
    \crefname{figure}{Fig.}{Figs.}
    \crefname{claim}{Claim}{Claims}
    \Crefname{claim}{Claim}{Claims}
    \crefname{lemma}{Lemma}{Lemmas}
    \Crefname{lemma}{Lemma}{Lemmas}
    \crefname{lstlisting}{Lst.}{Lsts.}
    \Crefname{lstlisting}{Lst.}{Lsts.}
    \crefname{listing}{Lst.}{Lsts.}
    \Crefname{listing}{Lst.}{Lsts.}
    \crefname{codecounter}{Lst.}{Lsts.}
    \Crefname{codecounter}{Lst.}{Lsts.}
    \crefname{equation}{Eq.}{Eqs.}
    \Crefname{equation}{Eq.}{Eqs.}
    % 连接方式定义
    \newcommand{\crefpairconjunction}{~ to ~}
    \newcommand{\crefmiddleconjunction}{, }
    \newcommand{\creflastconjunction}{~ to ~}
    \newcommand{\crefpairgroupconjunction}{~ to ~}
    \newcommand{\crefmiddlegroupconjunction}{, }
    \newcommand{\creflastgroupconjunction}{~ to ~}
    \newcommand{\crefrangeconjunction}{～}
\else
    \captionsetup[figure]{belowskip=-2ex,aboveskip=1ex} % 设置图标题与下文之间的距离
    \crefname{table}{表}{表}
    \Crefname{table}{表}{表}
    \crefname{algorithm}{算法}{算法}
    \Crefname{algorithm}{算法}{算法}
    \Crefname{figure}{图}{图}
    \crefname{figure}{图}{图}
    \crefname{claim}{断言}{断言}
    \Crefname{claim}{断言}{断言}
    \crefname{lemma}{引理}{引理}
    \Crefname{lemma}{引理}{引理}
    \crefname{lstlisting}{程序}{程序}
    \Crefname{lstlisting}{程序}{程序}
    \crefname{listing}{程序}{程序}
    \Crefname{listing}{程序}{程序}
    \crefname{codecounter}{程序}{程序}
    \Crefname{codecounter}{程序}{程序}
    \crefname{equation}{式}{式}
    \Crefname{equation}{式}{式}
    % 连接方式定义
    \newcommand{\crefpairconjunction}{~和~}
    \newcommand{\crefmiddleconjunction}{、}
    \newcommand{\creflastconjunction}{~和~}
    \newcommand{\crefpairgroupconjunction}{~和~}
    \newcommand{\crefmiddlegroupconjunction}{、}
    \newcommand{\creflastgroupconjunction}{~和~}
    \newcommand{\crefrangeconjunction}{ $\sim$ }
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 定理环境设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \RequirePackage{amsthm}%定理环境
\RequirePackage{theorem}
\newtheorem{theorem}{\hspace{2em}定理}[section]
\setlength{\theorempreskipamount}{0cm} %定理后垂直距离变量
\setlength{\theorempostskipamount}{0cm} %定理后垂直距离变量
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 脚注格式设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DefineFNsymbols{circled}{
    {\ding{192}}{\ding{193}}{\ding{194}}
    {\ding{195}}{\ding{196}}{\ding{197}}
    {\ding{198}}{\ding{199}}{\ding{200}}{\ding{201}}}
\setfnsymbol{circled}

\addtolength{\footnotesep}{0pt}
\setlength{\footnotemargin}{13.5pt}

\renewcommand{\footnotesize}{\fontsize{10.5pt}{10.5pt}\selectfont}
\renewcommand{\small}{\fontsize{10.5pt}{12.6pt}\selectfont}
\renewcommand\footnotelayout{\fontsize{9pt}{11.7pt}\selectfont}

%设置脚注不上标
\def\@makefntext #1{
    \ifFN@hangfoot
        \bgroup \setbox \@tempboxa \hbox {
            \ifdim
                \footnotemargin >0pt \hb@xt@
                \footnotemargin {\hbox { \normalfont \@thefnmark}\hss }
            \else
                \hbox { \normalfont \@thefnmark}
            \fi
        }
        \leftmargin \wd \@tempboxa
        \rightmargin \z@ \linewidth \columnwidth
        \advance \linewidth -\leftmargin\parshape \@ne
        \leftmargin \linewidth \footnotesize \@setpar {{\@@par }}
        \leavevmode \llap {\box \@tempboxa }\parskip
        \hangfootparskip \relax \parindent
        \hangfootparindent \relax
    \else
        \parindent 1em \noindent
        \ifdim
            \footnotemargin >\z@ \hb@xt@
            \footnotemargin {\hss \hbox { \normalfont \@thefnmark} }
        \else
            \ifdim \footnotemargin =\z@
                \llap {\hbox { \normalfont \@thefnmark} }
            \else
                \llap {\hb@xt@ -\footnotemargin {\hbox { \normalfont \@thefnmark} \hss }}
            \fi
        \fi
    \fi
    \footnotelayout #1\ifFN@hangfoot \par \egroup
    \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 摘要格式设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 摘要加在目录前面
\newcommand{\zhAbstract}{
    \newpage
    \section*{摘~~要}
    \addcontentsline{toc}{section}{摘~~要}%将摘要部分加到目录
    \fancyhf{} % 清空默认的页眉和页脚
    \fancyhead[C]{摘~~要}
    \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
    \setlength{\headheight}{15pt}
    \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
    \renewcommand{\footrulewidth}{0pt}

    \@zhAbstractText

    \quad%空一行，这里如果使用\newline会有溢出警告，不过也不影响实际排版效果

    \textbf{关~键~词：} \@zhAbstractKey
}

\newcommand{\enAbstract}{
    \newpage
    \section*{Abstract}
    \addcontentsline{toc}{section}{Abstract}

    \fancyhf{} % 清空默认的页眉和页脚
    \fancyhead[C]{Abstract}
    \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
    \setlength{\headheight}{15pt}
    \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
    \renewcommand{\footrulewidth}{0pt}
    {    \setlength{\parindent}{0em}%设置英文不缩进
        \setlength{\parskip}{0.4\baselineskip}%增加英文的段间距
        \noindent \@enAbstractText

        \noindent\textbf{KEY WORDS:} \@enAbstractKey
    }
}
\newcommand{\myThank}{
    \newpage
    \section*{致~~谢}
    \addcontentsline{toc}{section}{致~~谢}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 目录格式设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifMyReport@English
    \renewcommand{\contentsname}{Contents}
\else
    \renewcommand{\contentsname}{目~~录}
\fi
\titlecontents{section}[0em]{\vspace{0pt}\zihao{-4}\songti}
{\thecontentslabel ~~}{}
{\hspace{0.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[1em]{\vspace{0pt}\zihao{-4}\songti}
{\thecontentslabel ~~}{}
{\hspace{0.5em}\titlerule*{.}\contentspage}
\titlecontents{subsubsection}[2em]{\vspace{0pt}\zihao{-4}\songti}
{\thecontentslabel ~~}{}
{\hspace{0.5em}\titlerule*{.}\contentspage}

\newcommand{\myContent}{%自定义目录样式
    \newpage
    \tableofcontents
    \fancyhf{} % 清空默认的页眉和页脚
    \fancyhead[C]{\contentsname}
    \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
    \setlength{\headheight}{15pt}
    \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
    \renewcommand{\footrulewidth}{0pt}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 页眉页脚设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\headsep}{0.4cm}
\ifMyReport@English
    \fancypagestyle{headfootMain}{%正文页眉页脚，兼容英文
        \clearpage
        \pagenumbering{arabic}
        \setcounter{page}{1} % 重置页码计数器 
        \fancyhf{} % 清空默认的页眉和页脚
        \fancyhead[CO]{\wuhao\@titlename}
        \fancyhead[CE]{\wuhao\leftmark}
        \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
        \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
        \renewcommand{\footrulewidth}{0pt}
    }

    \fancypagestyle{headfootBefore}{%正文之前部分页眉页脚（摘要，目录等），兼容英文
        \clearpage
        \pagenumbering{Roman}
        \setcounter{page}{1} % 显式设置页码为1
        \fancyhf{} % 清空默认的页眉和页脚
        \fancyhead[C]{\wuhao\leftmark}
        \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
        \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
        \renewcommand{\footrulewidth}{0pt}
    }
\else
    \fancypagestyle{headfootMain}{%正文页眉页脚
        \clearpage
        \pagenumbering{arabic}
        \setcounter{page}{1} % 重置页码计数器 
        \fancyhf{} % 清空默认的页眉和页脚
        \fancyhead[CO]{\@titlename}
        \fancyhead[CE]{\leftmark}
        % \fancyhead[C]{\leftmark}
        \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
        % \setlength{\headheight}{15pt}
        \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
        \renewcommand{\footrulewidth}{0pt}
    }

    \fancypagestyle{headfootBefore}{%正文之前部分页眉页脚（摘要，目录等）
        \clearpage
        \pagenumbering{Roman}
        \setcounter{page}{1} % 显式设置页码为1
        \fancyhf{} % 清空默认的页眉和页脚
        \fancyhead[C]{\leftmark}
        \fancyfoot[C]{\thepage} % 在页面中心显示当前页码
        % \setlength{\headheight}{15pt}
        \renewcommand{\headrule}{\hrule height 0.5pt \vspace{0.8pt}\hrule height 0.5pt}
        \renewcommand{\footrulewidth}{0pt}
    }
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 版权信息设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
    \hypersetup{pdfinfo = {
                Author = \@stuname,
                Title = \@titlename,
                Subject = 个人课程作业,
                Keywords = {},
                Producer = VS Code XeTeX,
                Creator = LaTeX by Zhenrong Guo,
                Version = 3.0,
                Comment = }}

    \raggedbottom%段落不会被弹性拉长
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% 首页封面设置 %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\myleng}{10em}%设置一个自定义的盒子宽度
\newcommand{\nameWid}[2]{\underline{\xiaoer\makebox[#1][c]{{\strut#2}}}}%定义一个表头的长度
\newcommand{\makeheader}{%首页封面
    \thispagestyle{empty} % 首页使用empty样式，即无页眉页脚  
    \vspace{5ex}
    \begin{figure}[H]
        \centering
        \includegraphics[width=0.7\linewidth]{XJTUlogo.png}
    \end{figure}
    \vspace*{10ex}
    % \begin{center} % 垂直模式
    %     \zihao{-0}
    %     \parbox{1em}{{\heiti \@titlename}}
    % \end{center}
    \noindent\begin{minipage}[c]{\textwidth}
        \centering
        \begin{spacing}{3.0}
            {\yihao\selectfont\textbf{\@titlename}}
        \end{spacing}
    \end{minipage}
    \vspace*{\fill} % 将内容推到页面底部

    \ifMyReport@English
        \begin{table}[b]
            \renewcommand{\arraystretch}{2}
            \centering
            \xiaoer
            \begin{tabular}{p{5em}<{\centering}p{\myleng}<{\centering}}
                \makebox[5em][c]{\strut Class}：      & \nameWid{\myleng}{\@stuClass} \\
                \makebox[5em][c]{\strut Name}：       & \nameWid{\myleng}{\@stuname}  \\
                \makebox[5em][c]{\strut Student ID}： & \nameWid{\myleng}{\@stuID}    \\
            \end{tabular}
        \end{table}
    \else
        \begin{table}[b]
            \renewcommand{\arraystretch}{2}
            \centering
            \xiaoer
            \begin{tabular}{p{4em}<{\centering}p{\myleng}<{\centering}}
                \makebox[4em][s]{\strut 班级}： & \nameWid{\myleng}{\@stuClass} \\
                \makebox[4em][s]{\strut 姓名}： & \nameWid{\myleng}{\@stuname}  \\
                \makebox[4em][s]{\strut 学号}： & \nameWid{\myleng}{\@stuID}    \\
            \end{tabular}
        \end{table}
    \fi


    \clearpage
}

\newcommand{\TheHead}{%正文前所有内容汇总
    \makeheader%封面页
    \pagestyle{headfootBefore}% 正文前面（摘要，目录等）页眉页脚
    \ifcase\MyReport@abstractType\relax%0
        % 
    \or%1
        \zhAbstract%中文摘要
    \or%2
        \enAbstract%英文摘要
    \or%3
        \zhAbstract%中文摘要
        \enAbstract%英文摘要
    \else
        \PackageWarning{MyReport}{Invalid arg number with abstractType}
    \fi
    \myContent%目录页
    \pagestyle{headfootMain} % 正文区页眉页脚
}
\AfterEndPreamble{\TheHead}
