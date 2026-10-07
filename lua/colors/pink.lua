


local M = {}

function highligths()

    local palette = {
        white = '#ffffff',
        black = '#000000',

        pink_pastel = '#ffc5d3',
        pink = '#ff809f',
        purple = '#b198d9',
        yellow = '#ffff99',
        orange = '#ff964f',

        gray = '#808080',
        dark_gray = '#252525',
        red = '#ff746c',

        green = '#a6e3a1',
        blue = '#B4CBF0'
    }


    local highlights = {
        --ColorColumn = { bg = palette.surface },

        Normal = { fg = palette.white, bg = 'none' },
        Conceal = { bg = 'none' },

        --[[DiffAdd = { bg = groups.git_add, blend = 20 },
        DiffChange = { bg = groups.git_change, blend = 20 },
        DiffDelete = { bg = groups.git_delete, blend = 20 },
        DiffText = { bg = groups.git_text, blend = 40 },
        diffAdded = { link = "DiffAdd" },
        diffChanged = { link = "DiffChange" },
        diffRemoved = { link = "DiffDelete" },--]]
        Directory = { fg = palette.purple, bold = true },
        EndOfBuffer = { fg = palette.gray },

        Search = { fg = palette.black, bg = palette.yellow, blend = 20 },
        CurSearch = { fg = palette.black, bg = palette.orange, blend = 20 },
        IncSearch = { link = 'CurSearch' },
        Substitute = { link = 'Search' },
        WildMenu = { link = 'CurSearch' },

        LineNr = { fg = palette.gray },
        SignColumn = { fg = palette.white },

        MatchParen = { fg = palette.white },
        NonText = { fg = palette.gray },

        Pmenu = { fg = palette.white, bg = palette.black },
        PmenuSel = { fg = palette.pink },
        PmenuSbar = { bg = palette.dark_gray },
        PmenuThumb = { bg = palette.white },

        StatusLine = { fg = palette.white },
        StatusLineNC = { fg = palette.white },

        --Question = { fg = palette.gold },
        --QuickFixLine = { fg = palette.foam },

        SpecialKey = { fg = palette.foam },

        Title = { fg = palette.white, bold = true },

        Visual = { bg = palette.dark_gray, blend = 15 },

        OkMsg = { fg = palette.green },
        WarningMsg = { fg = palette.yellow },
        ErrorMsg = { fg = palette.red },

        healthSuccess = { fg = palette.green },
        healthWarning = { fg = palette.yellow },
        healthError = { fg = palette.red },

        NvimInternalError = { link = "ErrorMsg" },


        DiagnosticInfo = { fg = palette.blue },
        DiagnosticHint = { fg = palette.blue },
        DiagnosticOk = { fg = palette.green },
        DiagnosticWarn = { fg = palette.yellow },
        DiagnosticError = { fg = palette.red },

        DiagnosticDefaultInfo = { link = "DiagnosticInfo" },
        DiagnosticDefaultHint = { link = "DiagnosticHint" },
        DiagnosticDefaultOk = { link = "DiagnosticOk" },
        DiagnosticDefaultWarn = { link = "DiagnosticWarn" },
        DiagnosticDefaultError = { link = "DiagnosticError" },

        DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
        DiagnosticFloatingHint = { link = "DiagnosticHint" },
        DiagnosticFloatingOk = { link = "DiagnosticOk" },
        DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
        DiagnosticFloatingError = { link = "DiagnosticError" },

        DiagnosticSignInfo = { link = "DiagnosticInfo" },
        DiagnosticSignHint = { link = "DiagnosticHint" },
        DiagnosticSignOk = { link = "DiagnosticOk" },
        DiagnosticSignWarn = { link = "DiagnosticWarn" },
        DiagnosticSignError = { link = "DiagnosticError" },

        DiagnosticUnderlineInfo = { sp = palette.blue, undercurl = true },
        DiagnosticUnderlineHint = { sp = palette.blue, undercurl = true },
        DiagnosticUnderlineOk = { sp = palette.green, undercurl = true },
        DiagnosticUnderlineWarn = { sp = palette.yellow, undercurl = true },
        DiagnosticUnderlineError = { sp = palette.red, undercurl = true },

        DiagnosticVirtualTextInfo = { fg = palette.blue, blend = 10 },
        DiagnosticVirtualTextHint = { fg = palette.blue, blend = 10 },
        DiagnosticVirtualTextOk = { fg = palette.green, blend = 10 },
        DiagnosticVirtualTextWarn = { fg = palette.yellow, blend = 10 },
        DiagnosticVirtualTextError = { fg = palette.red, blend = 10 },


        Boolean = { fg = palette.orange },
        Character = { fg = palette.gold },
        Comment = { fg = palette.gray },
        Conditional = { fg = palette.pink, italic = true },
        Constant = { fg = palette.orange },
        Debug = { fg = palette.red },
        Define = { fg = palette.purple },
        Delimiter = { fg = palette.gray },
        Error = { fg = palette.red },
        Exception = { fg = palette.yellow },
        Float = { fg = palette.orange },
        Function = { fg = palette.purple },
        Identifier = { fg = palette.purple },
        Include = { fg = palette.pink },
        Keyword = { fg = palette.pink },
        Label = { fg = palette.pink },
        --[[LspCodeLens = { fg = palette.subtle },
        LspCodeLensSeparator = { fg = palette.muted },
        LspInlayHint = { fg = palette.muted, bg = palette.muted, blend = 10 },
        LspReferenceRead = { bg = palette.highlight_med },
        LspReferenceText = { bg = palette.highlight_med },
        LspReferenceWrite = { bg = palette.highlight_med },--]]
        Macro = { fg = palette.purple },
        Number = { fg = palette.orange },
        Operator = { fg = palette.purple },
        PreCondit = { fg = palette.pink_pastel },
        PreProc = { link = "PreCondit" },
        Repeat = { fg = palette.pink, italic = true },
        Special = { fg = palette.purple },
        SpecialChar = { link = "Special" },
        SpecialComment = { fg = palette.pink_pastel, bold = true },
        Statement = { fg = palette.pink },
        StorageClass = { fg = palette.yellow },
        String = { fg = palette.pink_pastel },
        Structure = { fg = palette.yellow },
        Tag = { fg = palette.white },
        Todo = { fg = palette.pink_pastel, bold = true },
        Type = { fg = palette.yellow },
        TypeDef = { link = "Type" },
        Underlined = { fg = palette.pink_pastel, underline = true },
        --[[Added = { fg = groups.git_add },
        Changed = { fg = groups.git_change },
        Removed = { fg = groups.git_delete },--]]
    }


    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

end


function M.colorscheme()
	if vim.g.colors_name then
		vim.cmd("hi clear")
		vim.cmd("syntax reset")
	end
    vim.g.colors_name = 'pink'

    highligths()
end

return M
