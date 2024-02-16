


require("nvim-tree").setup{
    sort_by = "case_sensitive",
    view = {
        width = 30,
        number = false,
    },
    renderer = {
        add_trailing = true,
        group_empty = true,
        indent_width = 2,
        indent_markers = {
            inline_arrows = true,
        },
        icons = {
            webdev_colors = false,
            padding = " ",
            show = {
                file = false,
                folder = true,
                folder_arrow = false,
                git = false,
                modified = true,
            },
            glyphs = {
                modified = "*",
                folder = {
                    default = ">",
                    open = "v",
                    empty = "~",
                    empty_open = "~",
                },
            },
        },
    },
}





