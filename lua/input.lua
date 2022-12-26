local Input = require("nui.input")
local event = require("nui.utils.autocmd").event

local input = Input({
  position = "50%",
  size = {
    width = 20,
  },
  border = {
    style = "single",
    text = {
      top = "New file",
      top_align = "center",
    },
  },
  win_options = {
    winhighlight = "Normal:Normal,FloatBorder:Normal",
  },
}, {
  prompt = "> ", 
  on_submit = function(value)
    vim.cmd("edit " .. value)
  end,
})

input:map("n", "<Esc>", function()
  input:unmount()
end, { noremap = true })

return input

