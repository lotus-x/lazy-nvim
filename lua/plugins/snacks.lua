-- lazygit's "nvim-remote" preset opens files with `--remote-tab` (one tab per
-- file). These commands open them in the current window instead:
--   1. move focus out of the lazygit terminal back to the previous editor window
--   2. `--remote` (`:drop`) the file into that window
--   3. jump to the line (if any) and quit lazygit
local remote = [[nvim --server "$NVIM" --remote-expr "v:lua.LazygitEditPrepare()" >/dev/null && ]]
  .. [[nvim --server "$NVIM" --remote %s && ]]
  .. [[nvim --server "$NVIM" --remote-expr "v:lua.LazygitEditDone(%s)" >/dev/null]]
local function lazygit_cmd(local_cmd, target, line)
  return ([[[ -z "$NVIM" ] && (%s) || (%s)]]):format(local_cmd, remote:format(target, line or ""))
end

local lazygit_buf ---@type integer?

function _G.LazygitEditPrepare()
  local cur = vim.api.nvim_get_current_win()
  if vim.bo[vim.api.nvim_win_get_buf(cur)].buftype ~= "terminal" then
    return ""
  end
  lazygit_buf = vim.api.nvim_win_get_buf(cur)
  local function usable(win)
    return win ~= 0 and win ~= cur and vim.api.nvim_win_is_valid(win) and vim.api.nvim_win_get_config(win).relative == ""
  end
  local target = vim.fn.win_getid(vim.fn.winnr("#"))
  if not usable(target) then
    target = vim.iter(vim.api.nvim_tabpage_list_wins(0)):find(usable)
  end
  if target then
    vim.api.nvim_set_current_win(target)
  end
  return ""
end

function _G.LazygitEditDone(line)
  if line and line > 0 then
    pcall(vim.api.nvim_win_set_cursor, 0, { line, 0 })
    vim.cmd("normal! zz")
  end
  if lazygit_buf and vim.api.nvim_buf_is_valid(lazygit_buf) then
    pcall(vim.fn.chansend, vim.bo[lazygit_buf].channel, "q")
  end
  lazygit_buf = nil
  return ""
end

return {
  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        config = {
          os = {
            edit = lazygit_cmd("nvim -- {{filename}}", "{{filename}}"),
            editAtLine = lazygit_cmd("nvim +{{line}} -- {{filename}}", "{{filename}}", "{{line}}"),
            openDirInEditor = lazygit_cmd("nvim -- {{dir}}", "{{dir}}"),
          },
        },
      },
      picker = {
        formatters = {
          file = {
            min_width = 80,
          },
        },
      },
      dashboard = {
        preset = {
          header = [[
 █████╗ ██╗  ██╗██╗███╗   ██╗ ██████╗ ███╗   ███╗
██╔══██╗╚██╗██╔╝██║████╗  ██║██╔═══██╗████╗ ████║
███████║ ╚███╔╝ ██║██╔██╗ ██║██║   ██║██╔████╔██║
██╔══██║ ██╔██╗ ██║██║╚██╗██║██║   ██║██║╚██╔╝██║
██║  ██║██╔╝ ██╗██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝
          ]],
        },
      },
    },
  },
}
