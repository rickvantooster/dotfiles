local dap = require("dap")
local dapui = require("dapui")
local daptext = require("nvim-dap-virtual-text")

local remap = require("rick.keymap")
local nnoremap = remap.nnoremap

daptext.setup()
dapui.setup()


dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open(1)
end

dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

require("rick.debugger.node");

nnoremap("<F5>", function()
	dap.continue()
end)

nnoremap("<F10>", function()
	dap.step_over()
end)

nnoremap("<F11>", function()
	dap.step_into()
end)

nnoremap("<F12>", function()
	dap.step_out()
end)

nnoremap("<leader>b", function()
	dap.toggle_breakpoint()
end)

nnoremap("<Leader>B", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)

nnoremap("<Leader>rc", function()
	dap.run_to_cursor()
end)

