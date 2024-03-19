local config = function()
  require("lualine").setup({
    options = {
      theme = "onenord",
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = { "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    tabline = {},
  })
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
