


local M = {}

function M.colors(config)
    local c = config.colors

    return {
        ColorColumn        = { bg = c.bg },
        --Conceal            = { fg = c.func },
        CurSearch          = { fg = c.fg_alt, bg = c.color5 },
        --CursorColumn       = { bg = c.bg },
        --CursorLine         = { bg = c.bg },
        --CursorLineNr       = { fg = c.fg },
        --Debug              = { fg = c.constant },
        --debugPC            = { fg = c.bg, bg = c.fg },
        --debugBreakpoint    = { fg = c.bg, bg = c.operator },
        Directory          = { fg = c.color2, bold = config.bold },
        OkMsg              = { fg = c.ok },
        ErrorMsg           = { fg = c.error },
        FloatTitle         = { link = 'NormalFloat' },
        --FloatShadow        = { bg = c.visual },
        --FloatShadowThrough = { bg = c.visual },
        --Folded             = { fg = c.fg_subtle, bg = not config.transparent and c.line or nil },
        --FoldColumn         = { fg = c.fg_subtle },
        IncSearch          = { link = 'CurSearch' },
        LineNr             = { fg = c.fg_subtle },
        MatchParen         = { fg = c.fg },
        ModeMsg            = { fg = c.color2, bold = config.bold},
        --MoreMsg            = { fg = c.func, bold = config.bold },
        --MsgSeparator       = { fg = c.string, bg = not config.transparent and c.line or nil, bold = config.bold },
        NonText            = { fg = c.fg_subtle },
        Normal             = { fg = c.fg, bg = not config.transparent and c.bg or nil },
        NormalFloat        = { fg = c.fg, bg = not config.transparent and c.bg_alt or nil },
        Pmenu              = { fg = c.fg, bg = not config.transparent and c.line or nil },
        PmenuThumb         = { bg = c.fg_subtle },
        --Question           = { fg = c.constant },
        --QuickFixLine       = { bg = c.inactiveBg },
        --qfError            = { fg = c.error },
        Search             = { fg = c.fg_alt, bg = c.color4, blend = 20 },
        SignColumn         = { fg = c.fg_subtle },
        SpecialKey         = { fg = c.fg_alt },
        SpellBad           = { sp = c.error, undercurl = true },
        --SpellCap           = { sp = c.delta, undercurl = true },
        SpellLocal         = { sp = c.info, undercurl = true },
        --SpellRare          = { sp = c.constant, undercurl = true },
        StatusLine         = { fg = c.fg, bg = not config.transparent and c.bg or nil },
        StatusLineTerm     = { fg = c.fg, bg = not config.transparent and c.bg or nil },
        StatusLineNC       = { fg = c.fg_subtle },
        StatusLineTermNC   = { fg = c.fg_subtle },
        Substitute         = { link = 'Search' },
        --TabLine            = { fg = c.fg_subtle, bg = not config.transparent and c.bg_alt or nil },
        Visual             = { bg = c.bg_alt },
        VisualNOS          = { bg = c.bg_alt, underline = true },
        WarningMsg         = { fg = c.warning },
        Whitespace         = { fg = c.fg_subtle },
        WildMenu           = { link = 'CurSearch' },
        --WinSeparator       = { fg = c.floatBorder },
        --WinBar             = { fg = c.fg, bg = c.inactiveBg },
        --WinBarNC           = { fg = c.fg_subtle },
    }
end

return M
