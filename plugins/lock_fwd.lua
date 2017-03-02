--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                       ▀▄ ▄▀ 
▀▄ ▄▀    BY tetoo                           ▀▄ ▄▀ 
▀▄ ▄▀     BY nmore       (@l_l_lo)          ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY l_l_ll                 ▀▄ ▄▀ 
▀▄ ▄▀       broadcast  : قفل توجية بلتحذير       ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]

local function pre_process(msg) 
  local jalal = msg['id'] 
  local user = msg.from.id 
  local chat = msg.to.id 
  local hash = 'mate:'..chat..':'..user 
  if msg.fwd_from and not is_momod(msg) then 
    if redis:get(hash) and msg.fwd_from and not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      send_large_msg(get_receiver(msg), '🎀🎖ممنـو؏ عمـل اعـادةة توجيـةة 😻سـورس تيـتو @no_no2 \n  العـضـو : @'..msg.from.username) 
      redis:del(hash) 
   else 
      delete_msg(msg.id, ok_cb, false) 
      redis:set(hash, true) 
    end 
  end 
  return  msg 
end 

local function run(msg, matches) 
  local jalal = msg['id'] 
  if matches[1] == 'قفل اعادة توجية' then 
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
         local x = "🎀🎖اهلا عـزيزي تـم قفـل اعاده توجيـه مـع تحـذير✅" 
      reply_msg(jalal, x, ok_cb, true) 
    else 
      local asdy = '🎀🎖للمـــشـرفيـن فقـط 🏅 انتـةة دايح مو مشـرف 💃️ ️' 
      reply_msg(jalal, asdy, ok_cb, true) 
    end 
  end 
  if matches[1] == 'فتح اعادة توجية' then 
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
    local don = "ٰ🎀🎖اهلا عـزيزي تـم فـتح  اعاده توجيـه مـع تحـذير❎️" 
      reply_msg(jalal, don, ok_cb, true) 
    else 
      local jalal_aldon = '🎀🎖للمـــشـرفيـن فقـط 🏅 انتـةة دايح مو مشـرف 💃️ ' 
      reply_msg(jalal, jalal_aldon, ok_cb, true) 
    end 
  end 
end 
return { 
    patterns = { 
        "^(قفل اعادة توجية)$", 
        "^(فتح اعادة توجية)$" 
    }, 
run = run, 
    pre_process = pre_process 
}