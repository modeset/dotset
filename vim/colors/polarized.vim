
hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "polarized"

" Polarized Palette based on the theme from http://ethanschoonover.com/solarized
" --------------------------------------------------------------------------------------------------
" COLOR/NORMAL (cterm=NONE)                       BRIGHT/BOLD (cterm=bold)
" --------------------------------------------------------------------------------------------------
" TERM     CTERM          VALUE    USAGE       |  TERM     CTERM          VALUE    USAGE
" --------------------------------------------------------------------------------------------------
" Black    0 Black        #073642  ---         |  Black    8  DarkGrey  #002B36  ---
" Red      1 DarkRed      #D30102  Error       |  Red      9  Red       #CB4B16  Include/Exception
" Green    2 DarkGreen    #859900  DString     |  Green    10 Green     #586E75  String
" Yellow   3 Brown        #B58900  Function    |  Yellow   11 Yellow    #657B83  Label
" Blue     4 DarkBlue     #268BD2  Structure   |  Blue     12 Blue      #839496  Keyword
" Magenta  5 DarkMagenta  #D33682  SpComment   |  Magenta  13 Magenta   #6C71C4  Type
" Cyan     6 DarkCyan     #2AA198  Boolean     |  Cyan     14 Cyan      #93A1A1  Comment
" White    7 Grey         #EEE8D5  Number      |  White    15 White     #FDF6E3  ---
" --------------------------------------------------------------------------------------------------

hi Normal                           guifg=#839496   guibg=#00222A gui=NONE      ctermfg=Blue        ctermbg=NONE        cterm=NONE
hi Cursor                           guifg=NONE      guibg=#D33682               ctermfg=NONE        ctermbg=DarkMagenta cterm=NONE
hi Visual                           guifg=NONE      guibg=#073642 gui=NONE      ctermfg=NONE        ctermbg=Black       cterm=NONE
hi CursorLine                       guifg=NONE      guibg=#073642 gui=NONE      ctermfg=NONE        ctermbg=Black       cterm=NONE
hi CursorColumn                     guifg=NONE      guibg=#073642 gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi LineNr                           guifg=#586E75   guibg=NONE    gui=NONE      ctermfg=Green       ctermbg=NONE        cterm=NONE
hi MoreMsg                          guifg=#268BD2   guibg=NONE    gui=NONE      ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi ModeMsg                          guifg=#268BD2   guibg=NONE    gui=NONE      ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi VertSplit                        guifg=#073642   guibg=#586E75 gui=NONE      ctermfg=Black       ctermbg=Green       cterm=NONE
hi MatchParen                       guifg=#D30102   guibg=NONE    gui=NONE      ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi StatusLine                       guifg=#EEE8D5   guibg=#586E75 gui=bold      ctermfg=White       ctermbg=Green       cterm=NONE
hi StatusLineNC                     guifg=#073642   guibg=#586E75 gui=NONE      ctermfg=Black       ctermbg=Green       cterm=NONE
hi Pmenu                            guifg=#EEE8D5   guibg=#073642 gui=NONE      ctermfg=Grey        ctermbg=Black       cterm=NONE
hi PmenuSel                         guifg=#EEE8D5   guibg=#CB4B16 gui=NONE      ctermfg=Grey        ctermbg=Red         cterm=NONE
hi IncSearch                        guifg=#FDF6E3   guibg=#859900 gui=NONE      ctermfg=White       ctermbg=DarkGreen   cterm=NONE
hi Search                           guifg=#FDF6E3   guibg=#2AA198 gui=NONE      ctermfg=White       ctermbg=DarkCyan    cterm=NONE
hi Directory                        guifg=#268BD2   guibg=NONE    gui=NONE      ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Folded                           guifg=#6C71C4   guibg=NONE    gui=NONE      ctermfg=Magenta     ctermbg=NONE        cterm=NONE
hi ErrorMsg                         guifg=#D30102   guibg=NONE    gui=NONE      ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi WarningMsg                       guifg=#B58900   guibg=NONE    gui=NONE      ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi NonText                          guifg=#586E75   guibg=NONE    gui=NONE      ctermfg=Green       ctermbg=NONE        cterm=NONE
hi SpecialKey                       guifg=#D30102   guibg=NONE    gui=NONE      ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi SpellBad                         guifg=NONE      guibg=NONE    gui=undercurl ctermfg=NONE        ctermbg=NONE        cterm=underline  guisp=Magenta
hi SpellCap                         guifg=NONE      guibg=NONE    gui=undercurl ctermfg=NONE        ctermbg=NONE        cterm=underline  guisp=Magenta
hi SpellRare                        guifg=NONE      guibg=NONE    gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE       guisp=Magenta
hi Title                            guifg=#CB4B16   guibg=NONE    gui=NONE      ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Question                         guifg=#2AA198   guibg=NONE    gui=NONE      ctermfg=DarkCyan    ctermbg=NONE        cterm=NONE
hi WildMenu                         guifg=#EEE8D5   guibg=#073642 gui=NONE      ctermfg=Grey        ctermbg=Black       cterm=NONE

hi Boolean                          guifg=#2AA198   guibg=NONE  gui=NONE        ctermfg=DarkCyan    ctermbg=NONE        cterm=NONE
hi Character                        guifg=#B58900   guibg=NONE  gui=NONE        ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Comment                          guifg=#6C71C4   guibg=NONE  gui=NONE        ctermfg=Magenta     ctermbg=NONE        cterm=NONE
hi Conditional                      guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Constant                         guifg=#D30102   guibg=NONE  gui=NONE        ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi Define                           guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Delimiter                        guifg=#B58900   guibg=NONE  gui=NONE        ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Error                            guifg=#D30102   guibg=NONE  gui=NONE        ctermfg=DarkRed     ctermbg=NONE        cterm=NONE
hi Exception                        guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Float                            guifg=#657B83   guibg=NONE  gui=NONE        ctermfg=Yellow      ctermbg=NONE        cterm=NONE
hi Function                         guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Identifier                       guifg=#D33682   guibg=NONE  gui=NONE        ctermfg=DarkMagenta ctermbg=NONE        cterm=NONE
hi Include                          guifg=#CB4B16   guibg=NONE  gui=italic      ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Keyword                          guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Label                            guifg=#B58900   guibg=NONE  gui=NONE        ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Macro                            guifg=#2AA198   guibg=NONE  gui=italic      ctermfg=DarkCyan    ctermbg=NONE        cterm=NONE
hi Number                           guifg=#657B83   guibg=NONE  gui=NONE        ctermfg=Yellow      ctermbg=NONE        cterm=NONE
hi Operator                         guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi PreCondit                        guifg=#859900   guibg=NONE  gui=italic      ctermfg=DarkGreen   ctermbg=NONE        cterm=NONE
hi PreProc                          guifg=#B58900   guibg=NONE  gui=NONE        ctermfg=Brown       ctermbg=NONE        cterm=NONE
hi Repeat                           guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Special                          guifg=#EEE8D5   guibg=NONE  gui=italic      ctermfg=White       ctermbg=NONE        cterm=NONE
hi SpecialChar                      guifg=#839496   guibg=NONE  gui=NONE        ctermfg=Blue        ctermbg=NONE        cterm=NONE
hi SpecialComment                   guifg=#D33682   guibg=NONE  gui=NONE        ctermfg=DarkMagenta ctermbg=NONE        cterm=NONE
hi Statement                        guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi StorageClass                     guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi String                           guifg=#859900   guibg=NONE  gui=italic      ctermfg=DarkGreen   ctermbg=NONE        cterm=NONE
hi Structure                        guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE        cterm=NONE
hi Tag                              guifg=#268BD2   guibg=NONE  gui=NONE        ctermfg=DarkBlue    ctermbg=NONE        cterm=NONE
hi Todo                             guifg=#EEE8D5   guibg=NONE  gui=inverse     ctermfg=White       ctermbg=DarkRed     cterm=NONE
hi Type                             guifg=#D33682   guibg=NONE  gui=NONE        ctermfg=DarkMagenta ctermbg=NONE        cterm=NONE
hi Underlined                       guifg=NONE      guibg=NONE  gui=underline   ctermfg=NONE        ctermbg=NONE        cterm=underline

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
hi rubyRailsARAssociationMethod           guifg=#CB4B16   guibg=NONE  gui=italic      ctermfg=Red    ctermbg=NONE   cterm=NONE
hi rubyRailsARMethod                      guifg=#CB4B16   guibg=NONE  gui=italic      ctermfg=Red    ctermbg=NONE   cterm=NONE

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
hi def link htmlArg                       Label
hi def link htmlSpecialChar               Error
hi def link htmlH1                        Keyword
hi def link htmlH2                        Keyword
hi def link htmlH3                        Keyword
hi def link htmlH4                        Keyword
hi def link htmlH5                        Keyword
hi def link htmlH6                        Keyword
hi htmlLink                               guifg=#2AA198   guibg=NONE  gui=underline   ctermfg=DarkCyan     ctermbg=NONE   cterm=underline
hi htmlItalic                             guifg=NONE      guibg=NONE  gui=italic      ctermfg=NONE         ctermbg=NONE   cterm=NONE
hi htmlBold                               guifg=NONE      guibg=NONE  gui=bold        ctermfg=NONE         ctermbg=NONE   cterm=NONE
hi htmlBoldItalic                         guifg=NONE      guibg=NONE  gui=bold,italic ctermfg=NONE         ctermbg=NONE   cterm=NONE

hi def link cssFunctionName               Structure
hi def link cssColor                      SpecialComment
hi def link cssPseudoClassId              Character
hi def link cssClassName                  Label
hi def link cssValueLength                Number
hi def link cssImportant                  Structure
hi def link cssStringQQ                   PreCondit
hi cssBraces                              guifg=#839496   guibg=NONE  gui=NONE        ctermfg=Blue        ctermbg=NONE   cterm=NONE
hi cssURL                                 guifg=#2AA198   guibg=NONE  gui=underline   ctermfg=DarkCyan    ctermbg=NONE   cterm=underline
hi cssCommonAttr                          guifg=NONE      guibg=NONE  gui=NONE        ctermfg=NONE        ctermbg=NONE   cterm=NONE

hi hamlIdChar                       guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE      cterm=NONE
hi hamlId                           guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE      cterm=NONE
hi def link hamlFilter              Boolean
hi def link hamlClassChar           Label
hi def link hamlClass               Label

hi sassId                           guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE      cterm=NONE
hi sassIdChar                       guifg=#CB4B16   guibg=NONE  gui=NONE        ctermfg=Red         ctermbg=NONE      cterm=NONE
hi def link sassClassChar           Label
hi def link sassClass               Label

hi def link javascriptNull          SpecialComment
hi def link javaScriptPrototype     Structure
hi def link javaScriptSpecial       Boolean
hi def link javaScriptGlobalObjects Include
hi def link javaScriptHtmlEvents    Structure
hi def link javaScriptStringD       PreCondit
hi javaScriptBraces                 guifg=NONE   guibg=NONE  gui=NONE        ctermfg=NONE    ctermbg=NONE   cterm=NONE

hi def link coffeeObjAssign         Character
hi def link coffeeSpecialVar        Identifier
hi def link coffeeRegex             Boolean
hi def link coffeeObject            Constant

hi def link markdownId              Type
hi def link markdownIdDeclaration   Type
hi def link markdownCodeDelimiter   Error
hi def link markdownLinkText        String

hi def link yamlKey                 Keyword
hi def link yamlAnchor              Number
hi def link yamlAlias               Number
hi yamlDocumentHeader               guifg=#268BD2   guibg=NONE  gui=italic      ctermfg=DarkBlue     ctermbg=NONE   cterm=NONE

hi def link xmlTag                  Number
hi def link xmllEndTag              Number
hi def link xmlTagName              Keyword
hi def link xmlAttrib               Label
hi def link xmlAttribPunct          Label
hi def link xmlCdataStart           Character
hi def link xmlCdataEnd             Character
hi def link xmlCdataCdata           Structure

hi def link NERDTreeExecFile        Error

" Statline
hi User1                       guifg=#EEE8D5   guibg=#586E75 gui=bold      ctermfg=White       ctermbg=Green     cterm=NONE
hi User4                       guifg=#EEE8D5   guibg=#586E75 gui=bold      ctermfg=White       ctermbg=Green     cterm=NONE

