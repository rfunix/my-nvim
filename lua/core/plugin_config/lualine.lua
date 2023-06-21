require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_material',
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
