require "base"
require "highlights"
require "maps"

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has 'macunix'
local is_win = has 'win32'

if is_mac then 
  require('macos')
end
if is_win then
  require('windows')
end
