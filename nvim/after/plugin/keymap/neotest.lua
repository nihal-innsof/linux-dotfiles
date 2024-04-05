local status, neotest = pcall(require, "neotest")
local status2, whichkey = pcall(require, "which-key")

if (not status) or (not status2) then
  return
end

local keymap = {
  t = {
    name = "Tests",
    w = { '<cmd>lua require("neotest").summary.toggle()<cr>', "Toggle test summary window" },
    r = { '<cmd>lua require("neotest").run.run()<cr>', "Run nearest test" },
    d = { '<cmd>lua require("neotest").run.run_last({ strategy = "dap" })<cr>', "Debug last runned test" },
    o = { '<cmd>lua require("neotest").output.open()<cr>', "Toggle output" },
    O = { '<cmd>lua require("neotest").output_panel.toggle()<cr>', "Toggle output panel" },
    -- O = { neotest.output.open, "Toggle output panel" },
    c = { '<cmd>lua require("neotest").output_panel.clear()<cr>', "Clear output panel" },
  }
}

whichkey.register(keymap, {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false,
})
