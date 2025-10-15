local M = {}

function M.build()
  vim.cmd("split | terminal pio run")
end

function M.upload()
  vim.cmd("split | terminal pio run -t upload")
end

function M.monitor()
  vim.cmd("split | terminal pio device monitor")
end

return M

