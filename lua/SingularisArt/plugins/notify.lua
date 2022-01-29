local notify_status, notify = pcall(require, "notify")
local popup_status, Popup = pcall(require, "nui.popup")

if not notify_status then
	error("Please Install 'notify'")
	return
end

if not popup_status then
	error("Please Install 'nvim-ui'")
	return
end

local M = {}
local default_width = 30
local default_height = 2

local note = Popup({
  enter = false,
  focusable = false,
  position = { row = 1,  col = "100%" },
  border = { style = "none", padding = { 1, 2 } },
  size = { width = default_width, height = default_height },
  buf_options = {
    modifiable = true,
    readonly = false,
  },
})

local notify_function = function(title, content, dismiss, type, width, height)
  local heading = title
  local body = content

  local size = { width = width and width or default_width, height = height and height or default_height }

  note:set_size(size)

  if (string.len(title) > size.width) then
    heading = '...'..string.sub(title, -1*(size.width-3))
  end

  if (string.len(content) > size.width) then
    body = '...'..string.sub(content, -1*(size.width-3))
  end 

  note:mount()
  vim.defer_fn(function() note:unmount() end, dismiss or 2000)
  vim.api.nvim_buf_set_lines(note.bufnr, 0, 2, false, { heading, body })
  vim.api.nvim_buf_add_highlight(note.bufnr, -1, type, 0, 0, size.width)
  vim.api.nvim_buf_add_highlight(note.bufnr, -1, 'NotifyBody', 1, 0, size.width)
end

M.info = function(title, content, dismiss, width, height) notify_function(title, content, dismiss, 'NotifyInfo', width, height) end
M.error = function(title, content, dismiss, width, height) notify_function(title, content, dismiss, 'NotifyError', width, height) end
M.success = function(title, content, dismiss, width, height) notify_function(title, content, dismiss, 'NotifySuccess', width, height) end
vim.notify = M

vim.notify = notify

vim.notify.setup {
  -- Animation style (see below for details)
  stages = "slide",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "default",

  -- Default timeout for notifications
  timeout = 5000,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
  background_colour = "Normal",

  -- Minimum width for notification windows
  minimum_width = 50,

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
}

return vim.notify
