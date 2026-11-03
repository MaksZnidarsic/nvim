


local M = {}

function M.colors(config)
    local c = config.colors

    return {
        ['@variable'] = { fg = c.fg },
        ['@variable.builtin'] = { fg = c.color5 },
        ['@variable.parameter'] = { fg = c.fg },
        ['@variable.parameter.builtin'] = { fg = c.color5 },
        ['@variable.member'] = { fg = c.color4 },

        ['@constant'] = { link = 'Constant' },
        ['@constant.builtin'] = { link = 'Constant' },
        ['@constant.macro'] = { link = 'Constant' },

        ['@module'] = { fg = c.fg },
        ['@module.builtin'] = { fg = c.fg, bold = config.bold },
        ['@label'] = { link = 'Label' },

        ['@string'] = { link = 'String' },
        ['@string.documentation'] = { link = 'String' },
        ['@string.regexp'] = { link = 'SpecialChar' },
        ['@string.escape'] = { link = 'SpecialChar' },
        ['@string.special'] = { link = 'String' },
        ['@string.special.symbol'] = { link = 'SpecialChar' },
        ['@string.special.url'] = { fg = c.info },
        --['@string.special.path'] = {},

        ['@character'] = { link = 'Character' },
        ['@character.special'] = { link = 'SpecialChar' },

        ['@boolean'] = { link = 'Boolean' },
        ['@number'] = { link = 'Number' },
        ['@number.float'] = { link = 'Number' },
        ['@float'] = { link = 'Number' },

        ['@type'] = { link = 'Structure' },
        ['@type.builtin'] = { fg = c.color4, bold = config.bold },
        --['@type.definition'] = {},

        ['@attribute'] = { link = 'Keyword' },
        ['@attribute.builtin'] = { fg = c.color2, bold = config.bold },
        ['@property'] = { link = 'Identifier' },

        ['@function'] = { link = 'Function' },
        ['@function.builtin'] = { fg = c.color3, bold = config.bold },
        ['@function.call'] = { link = 'Function' },
        ['@function.macro'] = { link = 'Function' },

        ['@function.method'] = { link = 'Function' },
        ['@function.method.call'] = { link = 'Function' },

        ['@constructor'] = { link = 'Function' },
        ['@operator'] = { link = 'Operator' },

        ['@keyword'] = { link = 'Keyword' },
        -- ['@keyword.coroutine'] = {},
        -- ['@keyword.function'] = {},
        ['@keyword.operator'] = { link = 'Operator' },
        ['@keyword.import'] = { link = 'Include' },
        ['@keyword.type'] = { link = 'Keyword' },
        --['@keyword.storage'] = { link = 'StorageClass' },
        ['@keyword.repeat'] = { link = 'Repeat' },
        ['@keyword.return'] = { link = 'Keyword' },
        --['@keyword.debug'] = {},
        ['@keyword.exception'] = { link = 'Exception' },

        ['@keyword.conditional'] = { link = 'Conditional' },
        ['@keyword.conditional.ternary'] = { link = 'Conditional' },

        --['@keyword.directive'] = {},
        --['@keyword.directive.define'] = {},

        --- Punctuation
        ['@punctuation.delimiter'] = { link = 'Delimiter' },
        ['@punctuation.bracket'] = { fg = c.color3 },
        ['@punctuation.special'] = { fg = c.color3 },

        --- Comments
        ['@comment'] = { link = 'Comment' },
        -- ['@comment.documentation'] = {},
        ['@comment.error'] = { fg = c.error },
        ['@comment.warning'] = { fg = c.warning },
        ['@comment.todo'] = { link = 'Todo' },
        ['@comment.hint'] = { fg = c.info },
        ['@comment.info'] = { fg = c.info },
        ['@comment.note'] = { link = 'SpecialComment' },

        --- Markup
        ['@markup.strong'] = { bold = config.bold },
        ['@markup.italic'] = { italic = config.italic },
        ['@markup.strikethrough'] = { strikethrough = true },
        ['@markup.underline'] = { underline = true },

        ['@markup.heading'] = { fg = c.color4, bold = config.bold },

        ['@markup.quote'] = { fg = c.color1 },
        ['@markup.math'] = { link = 'Special' },
        ['@markup.environment'] = { link = 'Macro' },
        ['@markup.environment.name'] = { link = '@type' },

        ['@markup.link'] = { fg = c.info, underline = true },
        ['@markup.link.label'] = { fg = c.fg },
        ['@markup.link.url'] = { fg = c.info, underline = true },

        ['@markup.raw'] = { fg = c.fg },
        ['@markup.raw.block'] = { fg = c.fg },
        ['@markup.raw.delimiter.markdown'] = { fg = c.fg_subtle },

        ['@markup.list'] = { fg = c.color5 },
        ['@markup.list.checked'] = { fg = c.color5 },
        ['@markup.list.unchecked'] = { fg = c.color4 },

        ['@diff.plus'] = { fg = c.ok },
        ['@diff.minus'] = { fg = c.error },
        ['@diff.delta'] = { bg = c.info },

        --['@tag'] = { link = 'Tag' },
        --['@tag.attribute'] = {},
        --['@tag.delimiter'] = { fg = c.subtle },

        --- Non-highlighting captures
        -- ['@none'] = {},
        ['@conceal'] = { link = 'Conceal' },
        ['@conceal.markdown'] = { link = 'Conceal' },

        -- ['@spell'] = {},
        -- ['@nospell'] = {},


        ['@lsp.type.class'] = { link = 'Structure' },
        --['@lsp.type.comment'] = { link = 'Comment' },
        ['@lsp.type.enum'] = { link = 'Structure' },
        ['@lsp.type.enumMember'] = { link = 'Identifier' },
        ['@lsp.type.function'] = { link = 'Function' },
        ['@lsp.type.generic'] = { link = 'Structure' },
        ['@lsp.type.interface'] = { link = '@interface' },
        ['@lsp.type.keyword'] = { link = 'Keyword' },
        ['@lsp.type.macro'] = { link = 'Macro' },
        ['@lsp.type.method'] = { link = 'Function' },
        --['@lsp.type.namespace'] = { link = '@namespace' },
        ['@lsp.type.parameter'] = { link = '@parameter' },
        ['@lsp.type.property'] = { link = '@property' },
        ['@lsp.type.variable'] = {},
        ['@lsp.typemod.operator.injected'] = { link = '@operator' },
        ['@lsp.typemod.string.injected'] = { link = '@string' },
        ['@lsp.typemod.variable.constant'] = { link = '@constant' },
        ['@lsp.typemod.variable.injected'] = { link = '@variable' },
    }
end

return M
