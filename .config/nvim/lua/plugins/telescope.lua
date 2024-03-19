local keymap = vim.keymap
local opts = { silent = true, noremap = true }

local config = function()
  require("telescope").setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = true,
        hidden = true,
      },
      live_grep = {
        theme = "dropdown",
        previewer = true,
      },
      buffers = {
        theme = "dropdown",
        previewer = true,
      },
    },
  })
end

return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = config,
  keys = {
    keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts),
    keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts),
    keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts),
    keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", opts),
    keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts),
  },
}
