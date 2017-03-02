--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                    ▀▄ ▄▀ 
▀▄ ▄▀    BY tetoo                        ▀▄ ▄▀ 
▀▄ ▄▀     BY nmore       (@l_l_lo)       ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY l_l_ll              ▀▄ ▄▀ 
▀▄ ▄▀       kick me : مـلف مـغادره           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]

local function run(msg, matches) 
if matches[1] == 'مغادره' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return '😐 يا حبيبي ('..msg.from.print_name..')\nاذا تريد تطلع من المجموعه\nدز نعم حتى اطردك لو دز لا حتى اعوفك هنا اوكك 🖖🏿🌚' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "🎓زيـن سـويت ظلـت تـزعج بيه 😢  ") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return '🎓وك بحـي حـطردك و بعـد لا ترجـع 🙊  ('..msg.to.title..')' 
        end 
      end 
    end 

return { 
  patterns = { 
  "مغادره", 
  "^نعم$", 
  "^لا$" 
  }, 
  run = run, 
}