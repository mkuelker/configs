-- Add Basic Bindings
vim.keymap.set("i", "jk", "<Esc>")
vim.opt.clipboard = 'unnamedplus'

-- Add Leader Key
vim.g.mapleader = " "

-- Indend and reselect
vim.keymap.set("v", ">", ">gv", { desc = "Indent and reselect" })
vim.keymap.set("v", "<", "<gv", { desc = "Outdent and reselect" })

vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent and reselect" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Outdent and reselect" })

-- Remap H / L to line start/end
vim.keymap.set("n", "J", "^", { desc = "Start of line (non-whitespace)"
})
vim.keymap.set("n", "L", "$", { desc = "End of line" })
vim.keymap.set("v", "L", "<End>", { desc = "End of line"})
-- Visual mode: Tab / Shift-Tab to indent with reselect
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent and reselect" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Outdent and reselect" })

-- Add CodeBlock Jumps
vim.keymap.set("n", "<leader>j", "}", { desc = "Jump to next block" })
vim.keymap.set("n", "<leader>k", "{", { desc = "Jump to previous block" })
vim.keymap.set("n", "[", "}", { desc = "Jump to next block" })
vim.keymap.set("n", "]", "{", { desc = "Jump to previous block" })
-- Make x not yank (send to black hole register)
vim.keymap.set("n", "x", '"_dd', { desc = "Delete without yanking" })