


local config = require('color.config').current

function colors(group)
    return require('color.groups.' .. group).colors(config)
end

return {
    common = colors('common'),
    lsp = colors('lsp'),
    syntax = colors('syntax'),
    treesitter = colors('treesitter')
}
