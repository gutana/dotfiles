-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>z", "<cmd>undolist <cr>")
map("n", ";", ":")

map("i", "jk", function ()
    vim.cmd[[stopinsert]]
    if math.random(1000) == 1 then
        vim.notify("Neovim level gained!")
    end
end)
