require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
