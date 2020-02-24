RegisterCommand("help", funtion()
  msg("Server's Discord : discord.gg/RfN4UC5")
  msg("Server's Website : website.com")
end, false)

function msg(text)
  TriggerEvent("chatMessage", "[Server]", {255,0,0}, text)
 end
