return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- disable <leader>cA and replace w/ <leader>cs
    keys[#keys + 1] = { "<leader>cA", false }
    keys[#keys + 1] = {
      "<leader>cs",
      function()
        vim.lsp.buf.code_action({
          context = {
            only = {
              "source",
            },
            diagnostics = {},
          },
        })
      end,
      desc = "Source Action",
      has = "codeAction",
    }
  end,
}
