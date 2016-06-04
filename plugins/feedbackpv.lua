do
 function run(msg, matches)
 
 local fuse = '鉁夛笍 倬蹖丕賲蹖 噩丿蹖丿 : \n\n馃啍 丌蹖丿蹖 : ' .. msg.from.id .. '\n\n馃懁 賳丕賲 : ' .. msg.from.print_name ..'\n\n馃敘 蹖賵夭乇賳蹖賲 : @' .. msg.from.username .. '\n\n馃摤 倬蹖丕賲 :\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local chat = "user#id"..95205943
   --like : local chat = "channel#id"..12345678
   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return '倬蹖丕賲 卮賲丕 丕乇爻丕賱 卮丿 亘丕 鬲卮讴乇'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[!#/][Ff]eedback (.*)$"
 
  },
  run = run
 }
