local input = require("input")

vim.keymap.set("n", "<leader>nf", function() 
   input:mount() 
end)
