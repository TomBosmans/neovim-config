local Utils = {}

function Utils.logo()
  return ""
end

function Utils.tabCount()
  return " " .. vim.fn.tabpagenr() .. "/" .. vim.fn.tabpagenr("$")
end

return Utils
