return {
  "rmagatti/auto-session",
  config = function()
  local autosession = require("auto-session")

  autosession.setup({
      auto_restore_enabled = false,
  })

  local keymap = vim.keymap
  keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session" })
  keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session" })
  end
}
