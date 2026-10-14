

local M = {}

local default = {
    transparent = false,

    italic = true,
    bold = true,

    colors = {
        fg = '#ffffff',
        bg = '#000000',

        fg_alt = '#000000',
        bg_alt = '#252525',

        fg_subtle = '#808080',

        color1 = '#c5c2da',
        color2 = '#b198d9', --'#67609F', --'#8f8cba',
        color3 = '#67609f', --'#8760c4', --'#544ba0',
        color4 = '#ffff99',
        color5 = '#ff964f',

        ok = '#a6e3a1',
        info = '#B4CBF0',
        warning = '#ffff99',
        error = '#ff746c'
    }
}

M.default = default
M.current = default

function M.set(opts)
    M.current = vim.tbl_deep_extend('force', vim.deepcopy(M.current), opts or {})
end

return M
