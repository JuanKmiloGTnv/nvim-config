local jdtls = require("jdtls")

-- Carpeta de Workspace 

local workspace_dir = vim.fn.stdpath("data") .."/jdtls-workspace]/" ..vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local config = {
	cmd = {
		"jdtls",
		"-data", workspace_dir,
	},
	root_dir = require("jdtls.setup").find_root({".git","mvnw","gradlew","pom.xml","build.gradle"}),
}

--Iniciar JDTLS SOLO si se está en en un buffer de JAVA
jdtls.start_or_attach(config)
