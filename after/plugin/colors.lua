function SetTheme()
    local colors = { "rose-pine", "catppuccin-mocha", "kanagawa", "melange" }
    local colorTheme = "kanagawa"

    print("Hello from colors! What theme do you want to use today?")

    for i, color in ipairs(colors) do
        print(i, color)
    end

    local choice = tonumber(vim.fn.input("Choose a theme: "))

    if choice == "" or choice > #colors then
        print("\n No theme chosen, using default")
    else
        colorTheme = colors[choice]
    end


    vim.cmd.colorscheme(colorTheme)

    -- vim.api.nvim_set_hl(0, "Normal", {bg = none})
    -- vim.api.nvim_set_hl(0, "NormalFloat", {bg = none})
end

local function defaultTheme()
    vim.cmd.colorscheme("kanagawa")
end

defaultTheme()
