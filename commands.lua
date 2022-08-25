RegisterCommand("help", funtion()
  msg("Server's Discord : discord.gg/servertag")
  msg("Server's Website : website.com")
end, false)

function msg(text)
  TriggerEvent("chatMessage", "[Server]", {255,0,0}, text)
 end
