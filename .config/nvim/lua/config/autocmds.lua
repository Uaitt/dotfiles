-- Auto format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  group = lsp_fmt_group,
  callback = function()
    local clients = vim.lsp.get_clients()
    for _, client in pairs(clients) do
      if client.name == "efm" or client.name == "ruby_ls" then
        vim.lsp.buf.format({ name = client.name, async = false })
        return
      end
    end
  end,
})
