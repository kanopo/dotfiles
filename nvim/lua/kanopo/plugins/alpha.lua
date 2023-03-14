local tiles = {
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}
local bloody = {
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
  [[  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
  [[ ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
  [[ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
  [[ ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
  [[ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
  [[ ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
  [[    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
  [[          ░    ░  ░    ░ ░        ░   ░         ░    ]],
  [[                                 ░                   ]],
  [[                                                     ]],
}

local buddha = {
  [[      `       --._    `-._   `-.   `.     :   /  .'   .-'   _.-'    _.--'                   ]],
  [[        `--.__     `--._   `-._  `-.  `. `. : .' .'  .-'  _.-'   _.--'     __.--'           ]],
  [[           __    `--.__    `--._  `-._ `-. `. :/ .' .-' _.-'  _.--'    __.--'    __         ]],
  [[            `--..__   `--.__   `--._ `-._`-.`_=_'.-'_.-' _.--'   __.--'   __..--'           ]],
  [[          --..__   `--..__  `--.__  `--._`-q(-_-)p-'_.--'  __.--'  __..--'   __..--         ]],
  [[                ``--..__  `--..__ `--.__ `-'_) (_`-' __.--' __..--'  __..--''               ]],
  [[          ...___        ``--..__ `--..__`--/__/  --'__..--' __..--''        ___...          ]],
  [[                ```---...___    ``--..__`_(<_   _/)_'__..--''    ___...---'''               ]],
  [[           ```-----....._____```---...___(____|_/__)___...---'''_____.....-----'''          ]],
}

return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = tiles

    dashboard.section.buttons.val = {
      dashboard.button("d", "Documents", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "Settings", ":e $MYVIMRC | :cd %:p:h | pwd<CR>"),
      dashboard.button("l", "Lazy", ":Lazy<cr>"),
      dashboard.button("q", "Quit", ":qa<CR>"),
    }

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)

        -- local now = os.date "%d-%m-%Y %H:%M:%S"
        local version = "   v" .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch
        local fortune = require "alpha.fortune"
        local plugins = "⚡Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
        local footer = "\t" .. version .. "\t" .. plugins .. "\n"
        dashboard.section.footer.val = footer
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    alpha.setup(dashboard.opts)
  end
}
