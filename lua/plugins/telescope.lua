return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      --
      -- Determines how file paths are displayed.
      --
      -- path_display can be set to an array with a combination of:
      -- - "hidden"    hide file names
      -- - "tail"      only display the file name, and not the path
      -- - "absolute"  display absolute paths
      -- - "smart"     remove as much from the path as possible to only show
      --               the difference between the displayed paths.
      --               Warning: The nature of the algorithm might have a negative
      --               performance impact!
      -- - "shorten"   only display the first character of each directory in
      --               the path
      -- - "truncate"  truncates the start of the path when the whole path will
      --               not fit. To increase the gap between the path and the edge,
      --               set truncate to number `truncate = 3`
      path_display = { truncate = 3 },
    },
  },
}
