-- terminal mode navigation
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w><C-h>", {})
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w><C-j>", {})
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w><C-k>", {})
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w><C-l>", {})

-- normal mode navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

local function multiline_dup_up()
  local s = vim.fn.getpos("v")
  local e = vim.fn.getpos(".")

  local sp = math.min(s[2], e[2])
  local ep = math.max(s[2], e[2])

  vim.cmd(sp .. "," .. ep .. "t " .. (sp - 1))

  vim.cmd("normal! :noh")
  vim.api.nvim_win_set_cursor(0, { s[2], s[1] })
  vim.cmd("normal V")
  vim.api.nvim_win_set_cursor(0, { e[2], e[1] })
end

local function multiline_dup_down()
  local s = vim.fn.getpos("v")
  local e = vim.fn.getpos(".")

  local sp = math.min(s[2], e[2])
  local ep = math.max(s[2], e[2])

  vim.cmd(sp .. "," .. ep .. "t " .. ep)

  vim.cmd("normal! :noh")
  vim.api.nvim_win_set_cursor(0, { ep + 1, 0 })
  vim.cmd("normal V")
  vim.api.nvim_win_set_cursor(0, { 2 * ep - sp + 1, 0 })
end

-- move / duplicate lines
vim.keymap.set("n", "<M-J>", "<cmd>t .<CR>", {})
vim.keymap.set("v", "<M-J>", multiline_dup_down, {})
vim.keymap.set("n", "<M-K>", "<cmd>t .-1<CR>", {})
vim.keymap.set("v", "<M-K>", multiline_dup_up, {})

-- add empty lines
vim.keymap.set("n", "\\", "o<Esc>k", {})
vim.keymap.set("n", "|", "O<Esc>j", {})
