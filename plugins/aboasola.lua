--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                     ▀▄ ▄▀ 
▀▄ ▄▀    BY tetoo                         ▀▄ ▄▀ 
▀▄ ▄▀     BY nmore       (@l_l_lo)        ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY l_l_ll               ▀▄ ▄▀ 
▀▄ ▄▀       broadcast  : مـعرفي            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]

do 

local function sadik(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

return "اذا كنت تريد التحدث مع المطورين اضعط ع احد المعرفات التالي \n 🎀 @ll15l - @l_l_lo \n او اذا محظور اضغط هنا \n 🎀   @k4k33_bot - @k4k33_bot \n  🎀قناة الـسـورس \n   @NO_NO2\n "
  end
   
end 

-- @l_l_lo

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = sadik, 
} 

end 
-- By @l_l_lo


