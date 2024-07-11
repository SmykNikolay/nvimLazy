return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = { eslint = {} },
    setup = {
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
          elseif client.name == "tsserver" then
            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
    },
  },
}

-- Если ваш проект использует eslint с eslint-plugin-prettier,
-- то это автоматически исправит ошибки eslint и отформатирует с помощью prettier при сохранении.
-- Важно: убедитесь, что вы не добавили prettier к null-ls, иначе это не сработает!
