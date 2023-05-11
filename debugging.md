# C++

## LLDB

Need `lldb` or `gdb`

```
g++ -g myfile.cpp -o myexecutable

lldb ./myexecutable
or
lldb
file myexecutable

(lldb) breakpoint set --file myfile.cpp --line 10
(lldb) run # start the program
(lldb) continue

next or n: Step to the next line of code.
step or s: Step into a function call.
finish: Finish executing the current function and return to the caller.
print or p: Print the value of a variable.
bt or thread backtrace: Print a backtrace of the call stack.
quit or q: Quit LLDB.
```

**Pass arguments**

```
lldb -- myexecutable arg1
```

## NVIM-DAP

Need `nvim-dap`

```
brew install llvm
```

Add to `init.lua` or `nvim-dap.lua`

Find `lldb-vscode` path after installation by running `echo $(brew --prefix llvm)/bin` and add it in the `command` field below.

```lua
-- C++ --
local dap = require("dap")
dap.adapters.lldb = {
	type = "executable",
	command = "/opt/homebrew/opt/llvm/bin/lldb-vscode", -- adjust as needed, must be absolute path
	name = "lldb",
}

local dap = require("dap")
dap.configurations.cpp = {
	{
		name = "Launch",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		target = "arm64",
		-- 💀
		-- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
		--
		--    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
		--
		-- Otherwise you might get the following error:
		--
		--    Error on launch: Failed to attach to the target process
		--
		-- But you should be aware of the implications:
		-- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
		-- runInTerminal = false,
	},
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
```

Use `CMakeLists.txt` to build and then give path to the executable. Create a build folder also.

```lua
leader cm
leader mk
```

Also it is important to set `CMAKE_BUILD_TYPE Debug`.

```
cmake_minimum_required(VERSION 3.12)
project(TestProject)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_SYSTEM_PROCESSOR "arm64")
set(CMAKE_OSX_ARCHITECTURES "arm64")
set(CMAKE_BUILD_TYPE Debug)

add_executable(test test.cpp test.hpp)
```

---

# Python

Need `nvim-dap`

Need `nvm-dap-python`

```
pip3 install debugpy
```

`init.lua`

```lua
vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "🟦", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "⭐️", texthl = "", linehl = "", numhl = "" })

require("dap").configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return "/opt/homebrew/bin/python3" -- Replace with your Python interpreter path
		end,
	},
}
require("dap-python").setup("/opt/homebrew/bin/python3") -- Replace with your Python interpreter path
```

---

### NVIM-DAP Keymaps

```lua
-- nvim-dap keymaps --
vim.keymap.set("n", "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<F11>", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<leader>b", function()
	require("dap").toggle_breakpoint()
end)
-- Define keymap to stop debugging session with F8
vim.api.nvim_set_keymap("n", "<F8>", '<cmd>lua require("dap").disconnect()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>B", function()
	require("dap").set_breakpoint()
end)
vim.keymap.set("n", "<leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set("n", "<leader>dr", function()
	require("dap").repl.open()
end)
vim.keymap.set("n", "<leader>dl", function()
	require("dap").run_last()
end)

vim.keymap.set({ "n", "v" }, "<F9>", function()
	require("dap.ui.widgets").hover()
end)
-- Define keymap to close the hover window
vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)
vim.keymap.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
```
