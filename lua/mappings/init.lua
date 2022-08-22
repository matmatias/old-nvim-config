local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local wk = require("which-key")

vim.g.mapleader = ' '

-- lsp actions
wk.register({
  w = { "<cmd>w<cr>", "Save File" },
  q = { "<cmd>quitall<cr>", "Quit Neovim"},
  r = { "<cmd>luafile %<cr>", "Reload File"},
  h = { "<cmd>noh<cr>", "Remove search highlight"},
  e = { "<cmd>NvimTreeToggle<cr>", "Open File Tree"},
  L = {
    name = "+LSP Actions",
    D = { vim.diagnostic.open_float, "Show diagnostic" },
    ["<S-Tab>"] = { vim.diagnostic.goto_prev, "Move to prev diagnostic" },
    ["<Tab>"] = { vim.diagnostic.goto_next, "Move to next diagnostic" },
    l = { vim.diagnostic.setloclist, "Add buffer diagnostic to location list" }
  }
}, { prefix = "<leader>" })

-- identation
map('v', '<', '<gv', opts) -- indent left
map('v', '>', '>gv', opts) -- indent right

-- line movement
map('v', 'J', ":m '>+1<CR>==gv", opts) -- swap 1 line down
map('v', 'K', ":m '<-2<CR>==gv", opts) -- swap 1 line up

-- windows
map('n', '<C-h>', '<C-w>h', opts) -- go to left window
map('n', '<C-l>', '<C-w>l', opts) -- go to right window 
map('n', '<C-j>', '<C-w>j', opts) -- go to right window 
map('n', '<C-k>', '<C-w>k', opts) -- go to right window 

-- tabs
map('n', '<S-h>', 'gT', opts) -- go to previous tab
map('n', '<S-l>', 'gt', opts) -- go to next tab

-- map('v', '<leader>a', '<Plug>(comment_toggle_blockwise)', opts)
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts) -- togle file tree
map('n', '<leader>Ps', ':PackerSync<CR>', opts) -- sync plugins
