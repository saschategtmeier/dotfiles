return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    use_default_keymaps = false,
    -- TODO add new keymaps for disabled keymaps
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      -- ["<C-s>"] = "actions.select_vsplit",
      --["<C-h>"] = "actions.select_split",
      -- ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["gr"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      -- ["`"] = "actions.cd",
      -- ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      -- ["g\\"] = "actions.toggle_trash",
    },
  },
  init = function()
    vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
  end,
}
