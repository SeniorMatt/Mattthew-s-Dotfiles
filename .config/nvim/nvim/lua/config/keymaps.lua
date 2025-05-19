-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Build project with Ctrl-B from anywhere in the tree
vim.keymap.set("n", "<C-b>", function()
  -- 1) figure out where build.sh lives, starting from the file you're editing
  local buf = vim.api.nvim_buf_get_name(0)
  local dir = vim.fs.dirname(buf)
  local build_file = vim.fs.find("build.sh", { upward = true, path = dir })[1]
  if not build_file then
    print("⚠️  build.sh not found!")
    return
  end

  -- 2) run it directly by full path
  vim.cmd("!" .. vim.fn.shellescape(build_file))
end, { desc = "Build project (build.sh)" })
