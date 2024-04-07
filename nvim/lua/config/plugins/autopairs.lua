return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",

  config = function()
    local autopairs = require("nvim-autopairs")

    autopairs.setup({
      check_ts = true,
      ts_config = {
        lua = { "string" }, --dont add pairs in lua string treesitter nodes
        javascript = { "template_string" }, --dont add pairs in javascript template_string treesitter nodes
        java = false, --dont check treesitter on java
      },
    })

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
}
