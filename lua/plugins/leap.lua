return {
  "ggandor/leap.nvim",
  lazy = true,
  event = "BufReadPost",
  config = function()
    require("leap").opts.highlight_unlabeled_phase_one_targets = true
    require("leap").add_default_mappings()
    vim.keymap.set({ "x", "o", "n" }, "E", "<Plug>(leap-forward-to)")
    vim.keymap.set({ "x", "o", "n" }, "W", "<Plug>(leap-backward-to)")
  end,
}
