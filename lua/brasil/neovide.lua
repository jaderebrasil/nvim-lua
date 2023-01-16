-- local notify = require("notify")

Neovide_fullscreen = function()
    if vim.g.neovide_fullscreen then
        vim.g.neovide_fullscreen = false
    else
        vim.g.neovide_fullscreen = true
    end
end

local _isempty = function(s)
    return s == nil or string.len(s) == 0
end

Neovide_fontsize = function(s)
    if _isempty(s) then
        return
    end

    local font, size = string.match(tostring(vim.opt.guifont._value), "([^,]*),:h([^,]*)")
    local op = string.sub(s, 1, 1)
    local n = tonumber(s)

    if n == nil then
        return
    end

    if op == "+" or op == "-" then
        size = tonumber(size) + n
    else
        size = n
    end

    vim.opt.guifont = {font, ":h" .. size}
end
