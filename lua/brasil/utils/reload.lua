function _G.ReloadConfig()
  for name,_ in pairs(package.loaded) do
    if name:match('^brasil') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
  vim.notify("Brasil's config reloaded!", vim.log.levels.INFO)
end
