--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY tetoo                          ▀▄ ▄▀ 
▀▄ ▄▀     BY nmore       (@l_l_lo)         ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY l_l_ll                ▀▄ ▄▀ 
▀▄ ▄▀       broadcast  : ا  اريد بوت          ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]

do 
local function mrx(msg, matches) 
 local sudo = 250062838 --هنا ايديك
 local m = get_receiver(msg)
  send_large_msg(m, "تم☑️ ارسال♻️ رسالتك الى المطور✅ اذا لم يتم الاجابه❌ على طلبك♨️ قم بمراسله المطور🌐@k4k33_bot") --هنا غير المعرف مل بوت التواصل الخاص بك
  send_large_msg("user#id"..sudo, "🎀🎖اسم المجموعه🎀🎖"..msg.to.title.." 🎀🎖  \n\n الشخص الذي طلب البوت 🎀🎖 @"..msg.from.username.." 🎀🎖  \n\n ايدي المجموعة 🎀🎖"..msg.to.id)
end 

return { 
  patterns = { 
     "^(اريد بوت)$"
  }, 
  run = mrx, 
} 

end
--The author of the idea @Bedo_Prog
