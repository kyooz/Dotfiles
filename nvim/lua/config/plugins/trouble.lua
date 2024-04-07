return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  keys = {
    { "<leader>xx", function() require("trouble").toggle() end, { desc = "Toggle trouble list" } },
    { "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Workplace diagnostics"} },
    { "<leader>xd", function() require("trouble").toggle("document_diagnostics") end, { desc = "Document diagnostics"} },
    { "<leader>xq", function() require("trouble").toggle("quickfix") end, { desc = "Open trouble quick fix list" } },
    { "<leader>xl", function() require("trouble").toggle("loclist") end, { desc = "Open trouble location list" } },
    { "gR", function() require("trouble").toggle("lsp_references") end, { desc = "Open trouble lsp ref"} },
    { "<leader>xt", "<cmd>TodoTrouble<CR>", { desc = "Open todos in trouble" } },
  }
}
