require("mini.basics").setup()
require("mini.comment").setup()
require("mini.pick").setup({
  -- Centered on screen
  window = {
    config = function()
      height = math.floor(0.618 * vim.o.lines)
      width = math.floor(0.618 * vim.o.columns)

      return {
        border = "rounded",
        anchor = "NW",
        height = height,
        width = width,
        row = math.floor(0.5 * (vim.o.lines - height)),
        col = math.floor(0.5 * (vim.o.columns - width)),
      }
  end,
  },
  mappings = {
    move_down = "<C-j>",
    move_up = "<C-k>",
  }
})

