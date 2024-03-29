require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}) 

require("mason-lspconfig").setup {
    -- ensure_installed = { "clangd", "gopls", "cmake", "python"}
    ensure_installed = { "clangd", "cmake", "pyright"}
}
