
local M = {}
M.jukit = {
   plugin = true,
  n = {
     ["<leader>sc"] = {"<cmd> jukit#send#line() <CR>"}
  }
}

return M
