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


return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = bloody

    dashboard.section.buttons.val = {
      dashboard.button("n", "  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  > Find file", ":cd $HOME/Documents| Telescope find_files<CR>"),
      dashboard.button("d", "  > Documents", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
      dashboard.button("l", "Z  > Lazy", ":Lazy<cr>"),
      dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
    }
    alpha.setup(dashboard.opts)
  end
}

