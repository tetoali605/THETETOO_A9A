--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                    ▀▄ ▄▀ 
▀▄ ▄▀    BY tetoo                        ▀▄ ▄▀ 
▀▄ ▄▀     BY nmore       (@l_l_lo)       ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY l_l_ll              ▀▄ ▄▀ 
▀▄ ▄▀       broadcast  : موقــعي           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]
do 
local function run(msg, matches) 
 if is_sudo(msg) then 
   local sudo = "حــبيبـي ♥️♥️انـته موقعـك و معلـوماتك هنـا ☻☻☹️☻ تابع من فضلك @no_no2 👇🏌"..msg.from.first_name.."\n" 
   .."🎀🎖ايديك :("..msg.from.id..")\n" 
   .."🎀🎖ايدي الكروب :("..msg.to.id..")\n" 
   .."🎀🎖معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."🎀🎖رقمك :("..(msg.from.phone or " لا يوجد")..")\n" 
   .."موقعك👤: انته مطور مالتي☂☂افـيش يا ريـحت هلي و ناسـي الله يحـفضـك 🎀🎗 " 
return reply_msg(msg.id, sudo, ok_cb, true) 
 end 
 if is_owner(msg) then 
 local owner = "♥️حـبــيبي انتــه موقعـك و معلـوماتك هنا 🎀🎗"..msg.from.first_name.."\n" 
   .."🎀🎖ايديك :("..msg.from.id..")\n" 
   .."🎀🎖ايدي الكروب :("..msg.to.id..")\n" 
   .."🎀🎖معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."🎀🎖رقمك :("..(msg.from.phone or " لا يوجد ")..")\n" 
   .."🎀🎗موقعك :انته مدير المجموعه 🚨 👥 »" 
return reply_msg(msg.id, owner, ok_cb, true) 
 end 
 if is_admin1(msg) then 
local admin1 = "♥️حــبيـبي قــلبي معـلوماتك و موقعـك 🎀🎗" 
   .."🎀🎖ايديك :("..msg.from.id..")\n" 
   .."🎀🎖ايدي الكروب :("..msg.to.id..")\n" 
   .."🎀🎖معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."🎀🎖رقمك :("..(msg.from.phone or " لايوجد ")..")\n" 
   .."🎀🎗موقعك :انته ادراي☂ 🙋» " 
return reply_msg(msg.id, admin1, ok_cb, true) 
end 
if is_momod(msg) then 
      local admin = "♥️حـبــيبي انتـه موقعـك و معلـماتك 🎀🎗" ..msg.from.first_name.. "\n" 
   .."🎀🎖ايديك :("..msg.from.id..")\n" 
   .."🎀🎖️ايدي الكروب :("..msg.to.id..")\n" 
   .."🎀🎖️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."🎀🎖️رقمك :("..(msg.from.phone or " لا يوجد ")..")\n" 
   .."🎀🎗موقعك :انته ادمن المحترم ☻🎩" 
return reply_msg(msg.id, admin, ok_cb, true) 
 end 
 if not is_momod(msg) then 
      local member = "♥️حبيــب قـلبي موقعـك و معلـوماتك هنـا 👇🏼" ..msg.from.first_name.. "\n" 
   .."🎀🎖️ايديك :("..msg.from.id..")\n" 
   .."🎀🎖️ايدي الكروب :("..msg.to.id..")\n" 
   .."🎀🎖️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."🎀🎖️رقمك :("..(msg.from.phone or "لايوجد " )..")\n" 
   .."🎀🎗موقعك :انته دايــح و مســقـط و دور بنات بهـذا كروب. ☻قصــدي عضـو 😂 😹💔» " 
return reply_msg(msg.id, member, ok_cb, true) 
 end 
end 

return { 
  patterns = { 
       "^(موقعي)$", 
       "^(me)$",
       "^(/me)$",
  }, 
  run = run, 
} 
end


