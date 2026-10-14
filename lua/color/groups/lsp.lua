


local M = {}

function M.colors(config)
    local c = config.colors

    return {
        DiagnosticError = { fg = c.error },
        DiagnosticHint = { fg = c.info },
        DiagnosticInfo = { fg = c.info },
        DiagnosticOk = { fg = c.ok },
        DiagnosticWarn = { fg = c.warning, bold = config.bold },

        DiagnosticDefaultError = { link = "DiagnosticError" },
        DiagnosticDefaultHint = { link = "DiagnosticHint" },
        DiagnosticDefaultInfo = { link = "DiagnosticInfo" },
        DiagnosticDefaultOk = { link = "DiagnosticOk" },
        DiagnosticDefaultWarn = { link = "DiagnosticWarn" },

        DiagnosticFloatingError = { link = "DiagnosticError" },
        DiagnosticFloatingHint = { link = "DiagnosticHint" },
        DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
        DiagnosticFloatingOk = { link = "DiagnosticOk" },
        DiagnosticFloatingWarn = { link = "DiagnosticWarn" },

        DiagnosticUnderlineError = { sp = c.error, undercurl = true },
        DiagnosticUnderlineHint = { sp = c.info, undercurl = true },
        DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
        DiagnosticUnderlineOk = { sp = c.ok, undercurl = true },
        DiagnosticUnderlineWarn = { sp = c.warning, undercurl = true },

        DiagnosticSignError = { link = "DiagnosticError" },
        DiagnosticSignHint = { link = "DiagnosticHint" },
        DiagnosticSignInfo = { link = "DiagnosticInfo" },
        DiagnosticSignOk = { link = "DiagnosticOk" },
        DiagnosticSignWarn = { link = "DiagnosticWarn" },

        LspCodeLens = { fg = c.bg_subtle, italic = config.italic },
    }
end

return M
