hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "colorblind"

" Colorblind Palette
" text: #cccccc
" bold text: #cccccc
" selection: #053641
" cursor: #FF00FF
" background: #000000 (95%)
" ------------------------------------------------------------------------
" COLOR/NORMAL                    | BRIGHT/BOLD
" ------------------------------------------------------------------------
" TERM     CTERM          VALUE   |  TERM           CTERM        VALUE
" ------------------------------------------------------------------------
" Black    0 Black        #000000 |  Bright Black    8  DarkGrey  #555555
" Red      1 DarkRed      #FF0000 |  Bright Red      9  Red       #E52153
" Green    2 DarkGreen    #95FF32 |  Bright Green    10 Green     #3D9C00
" Yellow   3 Brown        #FF9500 |  Bright Yellow   11 Yellow    #FFCC00
" Blue     4 DarkBlue     #95CCFF |  Bright Blue     12 Blue      #007FFF
" Magenta  5 DarkMagenta  #FF00FF |  Bright Magenta  13 Magenta   #FF7FFF
" Cyan     6 DarkCyan     #00FFFF |  Bright Cyan     14 Cyan      #782CBD
" White    7 Grey         #999999 |  Bright White    15 White     #FFFFFF
" ------------------------------------------------------------------------

hi Cursor           ctermfg=NONE        ctermbg=Magenta     cterm=NONE
hi CursorColumn     ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi CursorLine       ctermfg=NONE        ctermbg=Cyan        cterm=NONE
hi Directory        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi DiffAdd          ctermfg=White       ctermbg=DarkGreen   cterm=NONE
hi DiffChange       ctermfg=NONE        ctermbg=Brown       cterm=NONE
hi DiffDelete       ctermfg=White       ctermbg=DarkRed     cterm=NONE
hi DiffText         ctermfg=DarkGreen   ctermbg=NONE        cterm=NONE
hi ErrorMsg         ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi Folded           ctermfg=Cyan        ctermbg=NONE        cterm=NONE
hi FoldColumn       ctermfg=Cyan        ctermbg=NONE        cterm=NONE
hi IncSearch        ctermfg=Black       ctermbg=DarkGreen   cterm=NONE
hi LineNr           ctermfg=DarkGrey    ctermbg=NONE        cterm=NONE
hi MatchParen       ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi ModeMsg          ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi MoreMsg          ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi NonText          ctermfg=Grey        ctermbg=NONE        cterm=NONE
hi Normal           ctermfg=White       ctermbg=NONE        cterm=NONE
hi Pmenu            ctermfg=Black       ctermbg=Grey        cterm=NONE
hi PmenuSel         ctermfg=White       ctermbg=Blue        cterm=NONE
hi Question         ctermfg=DarkCyan    ctermbg=NONE        cterm=NONE
hi Search           ctermfg=Black       ctermbg=Yellow      cterm=NONE
hi SpecialKey       ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi SpellBad         ctermfg=NONE        ctermbg=NONE        cterm=underline
hi SpellCap         ctermfg=NONE        ctermbg=NONE        cterm=underline
hi SpellRare        ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi StatusLine       ctermfg=White       ctermbg=Blue        cterm=NONE
hi StatusLineNC     ctermfg=Grey        ctermbg=Blue        cterm=NONE
hi TabLine          ctermfg=Grey        ctermbg=Blue        cterm=NONE
hi TabLineFill      ctermfg=Grey        ctermbg=Blue        cterm=NONE
hi TabLineSel       ctermfg=White       ctermbg=DarkBlue    cterm=NONE
hi Title            ctermfg=White       ctermbg=NONE        cterm=NONE
hi VertSplit        ctermfg=Black       ctermbg=Grey        cterm=NONE
hi Visual           ctermfg=NONE        ctermbg=Blue        cterm=NONE
hi WarningMsg       ctermfg=Yellow      ctermbg=NONE        cterm=NONE
hi WildMenu         ctermfg=Grey        ctermbg=Black       cterm=NONE

hi Boolean          ctermfg=DarkCyan    ctermbg=NONE        cterm=NONE
hi Character        ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Comment          ctermfg=Cyan        ctermbg=NONE        cterm=NONE
hi Conditional      ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Constant         ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi Debug            ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi Define           ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Delimiter        ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Error            ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi Exception        ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Float            ctermfg=Grey        ctermbg=NONE        cterm=NONE
hi Function         ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Identifier       ctermfg=Magenta     ctermbg=NONE        cterm=NONE
hi Ignore           ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Include          ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Keyword          ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Label            ctermfg=Yellow      ctermbg=NONE        cterm=NONE
hi Macro            ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Number           ctermfg=Grey        ctermbg=NONE        cterm=NONE
hi Operator         ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi PreCondit        ctermfg=Green       ctermbg=NONE        cterm=NONE
hi PreProc          ctermfg=Yellow      ctermbg=NONE        cterm=NONE
hi Repeat           ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Special          ctermfg=White       ctermbg=NONE        cterm=NONE
hi SpecialChar      ctermfg=White       ctermbg=NONE        cterm=NONE
hi SpecialComment   ctermfg=DarkMagenta ctermbg=NONE        cterm=NONE
hi Statement        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi StorageClass     ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi String           ctermfg=DarkGreen   ctermbg=NONE        cterm=NONE
hi Structure        ctermfg=Blue        ctermbg=NONE        cterm=NONE
hi Tag              ctermfg=Blue        ctermbg=NONE        cterm=NONE
hi Todo             ctermfg=White       ctermbg=DarkRed     cterm=NONE
hi Type             ctermfg=Magenta     ctermbg=NONE        cterm=NONE
hi Underlined       ctermfg=NONE        ctermbg=NONE        cterm=underline

" Language Specific Overrides
" -----------------------------------------------------------------------------
hi def link rubyInterpolationDelimiter    Error
hi def link rubyClass                     Character
hi def link rubyFunction                  Label
hi def link rubySymbol                    Structure
hi def link rubyConstant                  Error
hi def link rubyStringDelimiter           String
hi def link rubyBlockParameter            Number
hi def link rubyInstanceVariable          SpecialComment
hi def link rubyInclude                   Label
hi def link rubyGlobalVariable            Number
hi def link rubyRegexp                    Error
hi def link rubyRegexpDelimiter           Error
hi def link rubyEscape                    Character
hi def link rubyControl                   Keyword
hi def link rubyClassVariable             Structure
hi def link rubyOperator                  Keyword
hi def link rubyException                 Label
hi def link rubyPseudoVariable            Type
hi def link rubyRailsRenderMethod         Label
hi def link rubyRailsMethod               Character
hi def link rubyRailsUserClass            Include
hi def link rubyRailsARAssociationMethod           Character
hi def link rubyRailsARMethod                      Character

hi def link cucumberTags                  SpecialComment
hi def link cucumberScenario              Structure
hi def link cucumberThen                  Label
hi def link cucumberWhen                  Keyword
hi def link cucumberGiven                 Type
hi def link cucumberScenarioOutline       Error
hi def link cucumberBackground            Boolean
hi def link cucumberFeature               Error

hi def link htmlTag                       Number
hi def link htmlEndTag                    Number
hi def link htmlTagName                   Keyword
hi def link htmlSpecialChar               Error
hi def link htmlH1                        Keyword
hi def link htmlH2                        Keyword
hi def link htmlH3                        Keyword
hi def link htmlH4                        Keyword
hi def link htmlH5                        Keyword
hi def link htmlH6                        Keyword
hi def link htmlItalic                    Ignore
hi def link htmlBold                      Ignore
hi def link htmlBoldItalic                Ignore
hi htmlLink                               ctermfg=DarkCyan     ctermbg=NONE   cterm=underline
hi htmlArg                                ctermfg=DarkMagenta ctermbg=NONE cterm=NONE

hi def link cssFunctionName               Structure
hi def link cssColor                      SpecialComment
hi def link cssPseudoClassId              Character
hi def link cssClassName                  Label
hi def link cssValueLength                Number
hi def link cssImportant                  Structure
hi def link cssStringQQ                   PreCondit
hi def link cssBraces                     SpecialChar
hi def link cssURL                        htmlLink
hi def link cssCommonAttr                 Ignore

hi def link sassIdChar                    Function
hi def link sassId                        Function
hi def link sassClassChar                 Label
hi def link sassClass                     Label
hi def link sassInterpolationDelimiter    Function
hi def link sassReturn                    Identifier
hi def link sassPlaceholder               Function
hi def link sassMixing                    Function
hi def link sassMixin                     Function
hi def link sassExtend                    Function
hi def link sassFunctionDecl              Function

hi def link hamlClassChar                 Label
hi def link hamlClass                     Label
hi def link hamlIdChar                    Function
hi def link hamlId                        Function
hi def link hamlFilter                    Boolean
hi def link hamlInterpolationDelimiter    Function
hi def link hamlIEConditional             Error

hi def link slimClassChar                 Label
hi def link slimClass                     Label
hi def link slimId                        Function
hi def link slimIdChar                    Function
hi def link slimFilter                    Boolean
hi def link slimInlineTagChar             Error
hi def link slimText                      Normal
hi def link slimInterpolationDelimiter    Function
hi def link slimIEConditional             Error

hi def link javascriptNull                SpecialComment
hi def link javaScriptPrototype           Structure
hi def link javaScriptSpecial             Boolean
hi def link javaScriptGlobalObjects       Include
hi def link javaScriptHtmlEvents          Structure
hi def link javaScriptStringD             PreCondit
hi def link javaScriptBraces              SpecialChar

hi def link coffeeObjAssign               Character
hi def link coffeeSpecialVar              Identifier
hi def link coffeeRegex                   Boolean
hi def link coffeeObject                  Constant

hi def link markdownId                    Type
hi def link markdownIdDeclaration         Type
hi def link markdownCodeDelimiter         Error
hi def link markdownLinkText              String

hi def link yamlKey                       Keyword
hi def link yamlAnchor                    Number
hi def link yamlAlias                     Number
hi def link yamlDocumentHeader            Keyword

hi def link xmlTag                        Number
hi def link xmllEndTag                    Number
hi def link xmlTagName                    Keyword
hi def link xmlAttrib                     Label
hi def link xmlAttribPunct                Label
hi def link xmlCdataStart                 Character
hi def link xmlCdataEnd                   Character
hi def link xmlCdataCdata                 Structure

hi def link NERDTreeExecFile              Error

" Statline
hi User1                                  ctermfg=White       ctermbg=Blue      cterm=NONE
hi def link User4                         User1

hi link EasyMotionTarget                  Identifier
hi EasyMotionShade                        ctermfg=DarkGrey ctermbg=NONE cterm=NONE

