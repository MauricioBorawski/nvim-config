local colors = { "rose-pine", "catppuccin-mocha", "kanagawa", "melange" }

function SetTheme(color)
    local colorTheme = color or 'catppuccin-mocha'

    if color == 'random' then
        colorTheme = colors[math.random(#colors)]
    end

    vim.cmd.colorscheme(colorTheme)

    -- vim.api.nvim_set_hl(0, "Normal", {bg = none})
    -- vim.api.nvim_set_hl(0, "NormalFloat", {bg = none})
end

