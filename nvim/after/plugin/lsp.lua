
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').gopls.setup{
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
        vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer = 0})
        vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer = 0})
        vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer = 0})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer = 0})
    end,
}


-- require("mason-lspconfig").setup  {
--   ensure_installed = { "lua_ls" },
--handlers = {
--    lsp_zero.default_setup,
--tsserver = function()
--    require('lspconfig').tsserver.setup({
-- single_file_support = false,
-- on_attach = function(client, bufnr)
-- print('hello tsserver')
-- end
-- })
-- end,
-- }
--jq
-- }
