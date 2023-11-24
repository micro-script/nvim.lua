-- tap :h bufferline configuration<CR> for more help.
-- or see https://github.com/akinsho/bufferline.nvim for more help.
vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    separator_style = "padded_slant",
    color_icons = true,
    show_buffer_icons = true,
    get_element_icon = function(element)
      local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, {default = false})
      return icon, hl
    end,
    -- get_element_icon = function(element)
    -- -- element consists of {filetype: string, path: string, extension: string, directory: string}
    -- -- This can be used to change how bufferline fetches the icon
    -- -- for an element e.g. a buffer or a tab.
    -- -- e.g.
    -- local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(opts.filetype, { default = true})
    --   return icon, hl
    --   -- or
    --   --local custom_map = {my_thing_ft: {icon = "my_thing_icon", hl}}
    --   --return custom_map[element.filetype]
    -- end,
    --numbers = "ordinal",
    numbers = function(opts)
      return string.format('%s·%s', opts.raise(opts.ordinal), opts.lower(opts.id))
    end,

    always_show_bufferline = true,
    hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
    },
    offsets = {
      filetype = "NvimTree",
      text = "File Explorer",
      text_align = "center",
      separator = true
    },
    sort_by = 'insert_after_current',

    diagnostics = "nvim_lsp",
    --- count is an integer representing total count of errors
    --- level is a string "error" | "warning"
    --- this should return a string
    --- Don't get too fancy as this function will be executed a lot
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end
  }
  
}
