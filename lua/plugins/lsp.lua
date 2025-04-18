return {
  -- nvim-lspconfig plugin setup
  { "nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {},
      },
      inlay_hints = { enabled = true },
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      vim.diagnostic.config({
          virtual_text = {
              prefix = '♦',
              spacing = 2
          },
          signs = true,
          underline = true,
          update_in_insert = false,
          severity_sort = true,
      })

      -- Configure clangd (C/C++)
      lspconfig.clangd.setup({
        capabilities = capabilities,
        on_attach = function(_, bufnr)
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
          local opts = { noremap=true, silent=true, buffer=bufnr }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end,
      })

      -- Configure lua_ls (Lua)
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      })

      -- Configure rust_analyzer (Rust)
      lspconfig.rust_analyzer.setup({
        on_attach = function(_, bufnr)
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end,
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" }
          }
        }
      })

      -- Configure pylsp (Python)
      lspconfig.pylsp.setup({ capabilities = capabilities })

      -- Configure asm_lsp (Assembly)
      lspconfig.asm_lsp.setup({ capabilities = capabilities })

      -- Configure zls (Zig)
      lspconfig.zls.setup({ capabilities = capabilities })
    end
  },
}
