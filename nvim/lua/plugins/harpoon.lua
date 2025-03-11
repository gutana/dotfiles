return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } },
        config = function()
            local harp = require("harpoon")
            harp:setup()

            -- SPACE + A: ADD CURRENT TO LIST
            vim.keymap.set("n", "<leader>a", function()
                harp:list():add()
            end)

            -- CTRL + E = SHOW QUICK MENU
            vim.keymap.set("n", "<C-e>", function()
                harp.ui:toggle_quick_menu(harp:list())
            end)

            -- CTRL + HTNS for top 4
            vim.keymap.set("n", "<C-1>", function()
                harp:list():select(1)
            end)
            vim.keymap.set("n", "<C-2>", function()
                harp:list():select(2)
            end)
            vim.keymap.set("n", "<C-3>", function()
                harp:list():select(3)
            end)
            vim.keymap.set("n", "<C-4>", function()
                harp:list():select(4)
            end)

            -- Remove mark. if current page is mark......
            -- todo: maybe there's a way to delete current selection in quick menu??
            vim.keymap.set("n", "<leader>hr", function()
                harp:list():remove()
            end)
        end
    }
}
