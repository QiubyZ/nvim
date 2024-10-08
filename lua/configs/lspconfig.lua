local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "clangd" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- Python Config
lspconfig.pyright.setup({
	on_init = on_init,
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "off", -- Default: off
				autoSearchPaths = true, -- Default: true
				useLibraryCodeForTypes = true, -- Default: true
				diagnosticMode = "off", -- Default: 'workspace'
				reportGeneralTypeIssues = true, -- Default: true
				reportUnboundVariable = true, -- Default: true
				reportPrivateUsage = true, -- Default: true,
				reportUnknownParameterType = true, -- Default: true
				reportUnknownArgumentType = true, -- Default: true
				reportMissingParameterType = true, -- Default: true
				reportMissingTypeArgument = true, -- Default: true
				reportFunctionMemberAccess = "check", -- Default: 'check'
				reportPropertyTypeMismatch = "strict", -- Default: 'strict'
				reportOverlappingOverload = "check", -- Default: 'check'
				reportUninitializedInstanceVariable = "always", -- Default: 'always'
			},
		},
	},
})


lspconfig.jedi_language_server.setup{
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = { "jedi-language-server" },
    types = { "python" },
    single_file_support = true,
}

--lspconfig.ruff_lsp.setup({
--  capabilities = capabilities,
--  on_attach = on_attach,
--  handlers = handlers,
--  init_options = {
--    settings = {
--      args = {
--        "--extend-select=W,COM,ICN",
--        "--ignore=E501,E722,COM812",
--      },
--    },
--  },
--})
