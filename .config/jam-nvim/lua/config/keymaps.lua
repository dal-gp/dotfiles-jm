local M = {}

function M.setup()
  vim.keymap.set("n", "*", "*zz")
  vim.keymap.set("n", "<C-d>", "<C-d>zz")
  vim.keymap.set("n", "<C-u>", "<C-u>zz")
  vim.keymap.set("n", "<S-Tab>", ":bp<cr>")
  vim.keymap.set("n", "<Tab>", ":bn<cr>")
  vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
  vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
  vim.keymap.set("n", "<leader>w", ':bd<cr>', { desc = "Close buffer" })
  vim.keymap.set("n", "N", "Nzz")
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
  vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
  vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
  vim.keymap.set("n", "n", "nzz")
  vim.keymap.set("v", "<C-s>", ":sort<CR>") -- Sort highlighted text in visual mode with Control+S
  vim.keymap.set("v", "<leader>rr", '"hy:%s/<C-r>h//g<left><left>',
    { desc = 'Replace all instances of highlighted words' })
  vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
  vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
  vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- Move current line up
  vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
end

return M
