local actions = require "telescope.actions"

require('telescope').setup{
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        -- ["<Down>"] = "cycle_history_next",
        -- ["<Up>"] =  "cycle_history_prev",
         ["<C-j>"] = "move_selection_next",
         ["<C-k>"] = "move_selection_previous",
      },
    },
  },
}


local keymap = vim.keymap.set
local opts = { silent = true }

keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

keymap("n", "<leader>fs", ":Telescope lsp_document_symbols<CR>", opts)
keymap("n", "<leader>ft", ":Telescope treesitter<CR>", opts)

