--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                    ▀▄ ▄▀ 
▀▄ ▄▀    BY tetoo                        ▀▄ ▄▀ 
▀▄ ▄▀     BY nmore       (@l_l_lo)       ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY l_l_ll              ▀▄ ▄▀ 
▀▄ ▄▀       helo  : التــرحــيب               ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]


do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = ' 🎀🎖اهــلا بـك فـي المجـموعه 😍'..'\n'..'\n'
    ..'🎀🎖اســمك:  '..msg.action.user.print_name..'\n'
    ..'🎀🎖مــعـرفك 😻 : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'🎀🎖ايـديك 😻 : '..msg.action.user.id..'\n'
    ..'🎀🎖رقــمك 😻 : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'🎀🎖اســم لـضافك 😻 : '..msg.from.print_name..'\n'
    ..'🎀🎖مـعـرف لـضافك 😻 : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'🎀🎖التــاريـخ 😻 : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🎀🎖الــوقـت 😻  : '..os.date(' %T*', os.time())..'\n'  
     
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
      local text = ' 🎀🎖اهــلا بـك فـي المجـموعه 😍 '..'\n'..'\n'
     ..'🎀🎖اســمك :  '..msg.from.print_name..'\n'
    ..'🎀🎖مــعـرفك 😻 : @'..(msg.from.username or "لا يوجد")..'\n'
    .. '🎀🎖ايـديك 😻 : '..msg.from.id..'\n'
    ..'🎀🎖رقــمك 😻 : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'🎀🎖اســم المجمــوعةة 😻 : '..msg.to.title..'\n'
    ..'🎀🎖ايـدي المجمــوعةة😻 : '..msg.to.id..'\n'
    ..'🎀🎖التــاريـخ 😻 : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🎀🎖الــوقـت 😻 : '..os.date(' %T*', os.time())..'\n'  
     
        return reply_msg(msg.id, text, ok_cb, false)
  end
      if matches[1] == "chat_del_user" then
       return "🎀🎖الله الله الله وويــ( @no_no2 )ــاك/ــج ♥تعــيش بدون كـروبـنا شـلون احنه ووياك وتزحـف و تخـون 🙊😻    "..msg.action.user.first_name
end
end
 
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",        
        "^!!tgservice (chat_del_user)$"
        
    },
 run = run
}
end
