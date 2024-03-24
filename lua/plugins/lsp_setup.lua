return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "clangd",
          "cssls",
          "eslint",
          "gopls",
          "html",
          "hls",
          "jdtls",
          "lua_ls",
          "marksman",
          "ocamllsp",
          "jedi_language_server",
          "pyright",
          "rubocop",
          "solargraph",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconf = require("lspconfig")

      lspconf.bashls.setup({ capabilities = capabilities })
      lspconf.clangd.setup({ capabilities = capabilities })
      lspconf.cssls.setup({ capabilities = capabilities })
      lspconf.eslint.setup({ capabilities = capabilities })
      lspconf.gopls.setup({ capabilities = capabilities })
      lspconf.html.setup({ capabilities = capabilities })
      lspconf.hls.setup({ capabilities = capabilities })
      lspconf.jdtls.setup({ capabilities = capabilities })
      lspconf.lua_ls.setup({ capabilities = capabilities })
      lspconf.marksman.setup({ capabilities = capabilities })
      lspconf.ocamllsp.setup({ capabilities = capabilities })
      lspconf.jedi_language_server.setup({ capabilities = capabilities })
      lspconf.pyright.setup({ capabilities = capabilities })
      lspconf.rubocop.setup({ capabilities = capabilities })
      lspconf.solargraph.setup({ capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "§", vim.lsp.buf.rename, {})
      vim.keymap.set("n", "<leader>K", vim.lsp.buf.signature_help, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
