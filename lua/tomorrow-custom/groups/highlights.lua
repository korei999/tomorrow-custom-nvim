local M = {}
function M.highlight(palette, opts)
    return {
        Normal = {
            fg = palette.fg,
            bg = opts.transparent and palette.none or palette.bg,
        },
        SignColumn = { bg = opts.transparent and palette.none or palette.bg },
        MsgArea = {
            fg = palette.fg,
            bg = opts.transparent and palette.none or palette.bg,
        },
        ModeMsg = { fg = palette.fg, bg = palette.bg },
        MsgSeparator = { fg = palette.fg, bg = palette.bg },
        SpellBad = { sp = palette.white, undercurl = true },
        SpellCap = { sp = palette.yellow, undercurl = true },
        SpellLocal = { sp = palette.cyan, undercurl = true },
        SpellRare = { sp = palette.purple, undercurl = true },
        NormalNC = {
            fg = palette.fg,
            bg = opts.transparent and palette.none or palette.bg,
        },
        Pmenu = { fg = palette.light_gray, bg = palette.accent },
        PmenuSel = { fg = palette.blue, bg = palette.alt_bg },
        WildMenu = { fg = palette.blue, bg = palette.alt_bg },
        CursorLineNr = {
            fg = palette.light_gray,
            bold = true,
        },
        Comment = vim.tbl_extend(
        "force",
        { fg = palette.medium_gray },
        opts.styles.comments
        ),
        Folded = { fg = palette.light_gray, bg = palette.alt_bg },
        FoldColumn = { fg = palette.light_gray, bg = palette.alt_bg },
        LineNr = { fg = palette.gray },
        Whitespace = { fg = palette.gray },
        VertSplit = { fg = palette.bg, bg = palette.accent },
        CursorLine = {
            bg = palette.alt_bg,
        },
        CursorColumn = { bg = palette.alt_bg },
        ColorColumn = { bg = palette.alt_bg },
        NormalFloat = {
            bg = opts.transparent and palette.none or palette.alt_bg,
        },
        Visual = { bg = palette.gray },
        VisualNOS = { bg = palette.alt_bg },
        WarningMsg = { fg = palette.red, bg = palette.bg },
        DiffAdd = { fg = palette.cyan },
        DiffText = { fg = palette.blue },
        DiffChange = {
            fg = palette.blue,
        },
        DiffDelete = { fg = palette.red },
        QuickFixLine = { bg = palette.accent },
        PmenuSbar = { bg = palette.alt_bg },
        PmenuThumb = { bg = palette.light_gray },
        MatchWord = { underline = true },
        MatchParen = { fg = palette.red, bg = palette.bg, underline = true, bold = true },
        MatchWordCur = { underline = true },
        MatchParenCur = { underline = true },
        Cursor = { fg = palette.cursor_fg, bg = palette.cursor_bg },
        lCursor = { fg = palette.cursor_fg, bg = palette.cursor_bg },
        CursorIM = { fg = palette.cursor_fg, bg = palette.cursor_bg },
        TermCursor = {
            fg = palette.cursor_fg,
            bg = palette.cursor_bg,
            reverse = false,
        },
        TermCursorNC = {
            fg = palette.alt_bg,
            reverse = false,
        },
        Conceal = { fg = palette.medium_gray },
        Directory = { fg = palette.blue },
        SpecialKey = { fg = palette.red },
        Title = { fg = palette.red },
        ErrorMsg = { fg = palette.red, bg = palette.bg, bold = true },
        Search = { fg = palette.yellow, bg = palette.alt_bg },
        IncSearch = { fg = palette.alt_bg, bg = palette.yellow },
        Substitute = { fg = palette.alt_bg, bg = palette.yellow },
        MoreMsg = { fg = palette.cyan },
        Question = { fg = palette.cyan },
        EndOfBuffer = { fg = palette.bg },
        NonText = { fg = palette.bg },
        Variable = vim.tbl_extend("force", { fg = palette.white }, opts.styles.variables),
        String = { fg = palette.yellow },
        Character = { fg = palette.cyan },
        Constant = { fg = palette.white },
        Number = { fg = palette.purple },
        Boolean = { fg = palette.purple },
        Float = { fg = palette.purple },
        Identifier = { fg = palette.white },
        Function = vim.tbl_extend("force", { fg = palette.white }, opts.styles.functions),
        Operator = { fg = palette.red },
        Type = vim.tbl_extend("force", { fg = palette.blue }, opts.styles.type),
        StorageClass = { fg = palette.blue },
        Structure = { fg = palette.blue },
        Typedef = { fg = palette.blue },
        Keyword = vim.tbl_extend("force", { fg = palette.cyan }, opts.styles.keywords),
        Statement = { fg = palette.blue },
        Conditional = { fg = palette.cyan },
        Repeat = { fg = palette.cyan },
        Label = { fg = palette.white },
        Exception = { fg = palette.red },
        Include = { fg = palette.blue },
        PreProc = { fg = palette.green },
        Define = { fg = palette.green },
        Macro = { fg = palette.cyan },
        PreCondit = { fg = palette.green },
        Special = { fg = palette.white },
        SpecialChar = { fg = palette.blue },
        Tag = { fg = palette.white },
        Debug = { fg = palette.red },
        Delimiter = { fg = palette.light_gray },
        SpecialComment = vim.tbl_extend(
        "force",
        { fg = palette.medium_gray },
        opts.styles.comments
        ),
        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = true },
        Ignore = { fg = palette.cyan, bg = palette.bg, bold = true },
        Todo = { fg = palette.red, bg = palette.bg, bold = true },
        Error = { fg = palette.white, bg = palette.bg, bold = true },
        TabLine = { fg = palette.gray, bg = palette.alt_bg },
        TabLineSel = { fg = palette.white, bg = palette.alt_bg },
        TabLineFill = { fg = palette.white, bg = palette.alt_bg },
        WinSeparator = { fg = palette.medium_gray, bg = palette.bg },
        DiagnosticFloatingError = { fg = palette.red },
        FloatBorder = { fg = palette.light_gray },
    }
end

return M
