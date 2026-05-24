return {
  {
    "folke/snacks.nvim",
    opts = {
      styles = {
        terminal = {
          height = 25,
        },
      },
      picker = {
        enabled = true,
        actions = {
          confirm_and_close = function(picker)
            picker:action("confirm")
            picker:action("close")
          end,
          confirm_nofocus = function(picker)
            picker:action("confirm")
            picker:focus()
          end,
        },
        sources = {
          explorer = {
            auto_close = false,
            win = {
              list = {
                keys = {
                  ["L"] = "confirm_and_close",
                  ["l"] = "confirm_nofocus",
                },
              },
            },
            layout = {
              preset = "sidebar",
              preview = "main",
              layout = {
                width = 30,
                min_width = 30,
              },
            },
          },
        },
      },
    },
  },
}
