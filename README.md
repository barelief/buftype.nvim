# buftype.nvim

A Neovim plugin for typing practice that dims buffer text and tracks your WPM and accuracy as you type.

## Features

- **Typing mode**: Activate to dim all text in the current buffer and type to reveal characters
- **WPM tracking**: Live WPM calculation with rolling 5-second window
- **Accuracy tracking**: Percentage of correct keystrokes
- **Lualine integration**: Shows WPM in statusline when active
- **Visual feedback**: Yellow cursor marker, red error highlights for incorrect keys

## Installation

### lazy.nvim

```lua
{
  'barelief/buftype.nvim',
  config = function()
    require('buftype').setup({
      show_wpm = true,
      show_mode_indicator = false,
    })
  end
}
```

### packer.nvim

```lua
use {
  'barelief/buftype.nvim',
  config = function()
    require('buftype').setup()
  end
}
```

## Usage

The plugin provides the `:BufType` command and a default keymap:

- `:BufType` or `<leader>uB` - Activate typing mode
- `<Esc>` - Exit typing mode and show session summary

## Configuration

```lua
require('buftype').setup({
  dim_hl = "BufTypeDim",           -- Highlight group for dimmed text
  error_hl = "BufTypeError",       -- Highlight group for errors
  done_hl = "BufTypeDone",         -- Highlight group for completed text
  show_wpm = true,                 -- Show WPM in lualine
  show_mode_indicator = false,     -- Set true if you don't use lualine
})
```

## License

MIT
