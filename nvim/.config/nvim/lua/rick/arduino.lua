local arduino = require('arduino')
arduino.setup {
    default_fqbn = "arduino:avr:uno",

    --Path to clangd (all paths must be full)
    clangd = "~/.local/share/nvim/lsp_servers/clangd/clangd/bin/clangd",

    --Path to arduino-cli
    --arduino = "/mnt/c/arduino-cli/arduino-cli.exe",
    arduino = "/bin/arduino-cli.exe",

    --Data directory of arduino-cli

    --Extra options to arduino-language-server
}

require 'lspconfig' ['arduino_language_server'].setup {
    on_new_config = arduino.on_new_config,
}
