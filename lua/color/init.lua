


config = require('color.config')

local M = {}

function M.setup(opts)
    if not opts then return end
    config.set(opts)
end

function M.colorscheme()
    if vim.g.colors_name then vim.cmd.highlight("clear") end
    vim.g.colors_name = "purple-yellow"

    local groups = require('color.groups')

    for _, group in pairs(groups) do
        for hl, opts in pairs(group) do
            vim.api.nvim_set_hl(0, hl, opts)
        end
    end
end

return M
