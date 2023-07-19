return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_syntax_enabled = 1
    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_view_general_viewer = "sioyek"
    vim.g.vimtex_compiler_progname = "nvr"
    -- %1: file, %2: line number
    local options =
        string.format(
          '--inverse-search="nvr --servername %s +%%2 %%1" --forward-search-file @tex --forward-search-line @line @pdf',
          vim.v.servername)
    vim.g.vimtex_view_general_options = options
  end,
  ft = "tex"
}
