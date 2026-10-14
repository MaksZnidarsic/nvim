


local M = {}

function M.colors(config)
    local c = config.colors

    return {
        Boolean = { fg = c.color5 },
        Character = { fg = c.color1 },
        Comment = { fg = c.fg_subtle },
        Conditional = { fg = c.color2, italic = config.italic },
        Constant = { fg = c.color5 },
        Delimiter = { fg = c.fg_subtle },
        Error = { bg = c.error },
        Exception = { fg = c.color2 },
        Float = { fg = c.color5 },
        Function = { fg = c.color3 },
        Identifier = { fg = c.color4 },
        Include = { fg = c.color2 },
        Keyword = { fg = c.color2 },
        Label = { fg = c.color2 },
        Macro = { fg = c.color2 },
        Number = { fg = c.color5 },
        Operator = { fg = c.color3 },
        PreProc = { fg = c.color3 },
        Repeat = { fg = c.color2, italic = config.italic },
        Special = { fg = c.color3 },
        SpecialChar = { fg = c.color2 },
        SpecialComment  = { fg = c.color1 },
        Statement = { fg = c.color2 },
        StorageClass = { fg = c.color4 },
        String = { fg = c.color1 },
        Structure = { fg = c.color4 },
        Tag = { fg = c.fg },
        --Title = { fg = c.property },
        Todo = { fg = c.color1, bold = config.bold },
        Type = { fg = c.color5 },
        Typedef = { fg = c.color2 }
    }
end

return M
