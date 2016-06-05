local triggers = {
    "^[!/]tex (%d+) (.+)$",
    "^[!/]tex (.+)$"
}
local function edit(txt)
if string.gmatch(txt, "~r") then
  txt = string.gsub(txt, "~r", "\\color{Red}")
end
if string.gmatch(txt, "~b") then
  txt = string.gsub(txt, "~b", "\\color{Blue}")
end
if string.gmatch(txt, "~y") then
  txt = string.gsub(txt, "~y", "\\color{Yellow}")
end
if string.gmatch(txt, "~o") then
  txt = string.gsub(txt, "~o", "\\color{Orange}")
end
if string.gmatch(txt, "~g") then
  txt = string.gsub(txt, "~g", "\\color{Green}")
end
if string.gmatch(txt, "~p") then
  txt = string.gsub(txt, "~p", "\\color{Purple}")
end
if string.gmatch(txt, "~gold") then
  txt = string.gsub(txt, "~gold", "\\color{Golden}")
end
if string.gmatch(txt, "~fun") then
  txt = string.gsub(txt, "~fun", "\\mathfrak")
end
if string.gmatch(txt, "~") then
  txt = string.gsub(txt, "~", "")
end
if string.gmatch(txt, " ") then
  txt = string.gsub(txt, " ", "~")
end
return txt
  end
local action = function(msg, matches, ln)
if matches[2] then
  local eq = edit(matches[2])
  local url = "http://latex.codecogs.com/png.download?"
  .."\\dpi{"..matches[1].."}%20\\Huge%20"..eq
    local file_path = download_to_file(url, 't2s.webp')
 api.sendSticker(msg.chat.id, file_path, msg.message_id)
else
  local eq = edit(matches[1])
  local url = "http://latex.codecogs.com/png.download?"
  .."\\dpi{500}%20\\Huge%20"..eq
    local file_path = download_to_file(url, 't2s.webp')
 api.sendSticker(msg.chat.id, file_path, msg.message_id)
  end
end
return {
	action = action,
	triggers = triggers
}
