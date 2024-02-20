return {
  n = {
    -- need to reserve \ for localleader key for tex
    ["\\"] = false,
    -- better navigation
    ["<Up>"] = "g<Up>",
    ["<Down>"] = "g<Down>",
    -- buffer switching
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      nowait = true,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      nowait = true,
      desc = "Previous buffer",
    },
    ["<Cr>"] = { "o<Esc>", desc = "New line" },
    -- show Alpha when no buffer
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        print("bufs", bufs)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    }
  },
  v = {
    ["j"] = "gj",
    ["k"] = "gk",
    ["J"] = { ":m '>+1<CR>gvgv", desc = "Shift block down" },
    ["K"] = { ":m '<-2<CR>gvgv", desc = "Shift block up" },
    ["<Up>"] = "g<Up>",
    ["<Down>"] = "g<Down>",
    -- [">"] = ">gv",
    -- ["<"] = "<gv",
    ["<S-h>"] = "<gv",
    ["<S-l>"] = ">gv"
  },
  i = {
    ["<Up>"] = "<C-o>g<Up>",
    ["<Down>"] = "<C-o>g<Down>"
  }
}
