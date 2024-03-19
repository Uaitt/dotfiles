local M = {}

M.on_attach = function(_, bufnr)
  local keymap = vim.keymap
  local opts = { noremap = true, silent = true, buffer = bufnr }

  keymap.set("n", "<leader>fd", ":Lspsaga finder<CR>", opts)
  keymap.set("n", "<leader>gd", ":Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "<leader>gD", ":Lspsaga goto_definition<CR>", opts)
  keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
  keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts)
  keymap.set("n", "<leader>D", ":Lspsaga show_line_diagnostics<CR>", opts)
  keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap.set("n", "<leader>pd", ":Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap.set("n", "<leader>nd", ":Lspsaga diagnostic_jump_next<CR>", opts)
  keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts)
end

return M
