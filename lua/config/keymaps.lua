-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local P = {}

local key_map = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

local map = vim.api.nvim_set_keymap
map("i", "kj", "<Esc>", { noremap = true, silent = true })
map("i", "<Tab>", "<Tab>", { noremap = true, silent = true })

-- Java
function P.map_java_keys(bufnr)
  P.map_lsp_keys()

  local spring_boot_run = "mvn spring_boot:run -Dspring-boot.run.profiles=local"
  local command = ':lua require("toggleterm").exec("' .. spring_boot_run .. '")<CR>'
  key_map("n", "<leader>sr", command)
  key_map("n", "<leader>oi", ':lua require("jdtls").organize_imports()<CR>')
  key_map("n", "<leader>c", ':lua require("jdtls").compile("incremental")')
end

key_map("n", "<leader>da", ":lua attach_to_debug()<CR>")
return P
