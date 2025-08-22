return {
  "ShinKage/idris2-nvim",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  config = function ()
    require('idris2').setup({})
  end
}
