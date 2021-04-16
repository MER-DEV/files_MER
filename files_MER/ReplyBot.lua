local function Reply(msg)
local text = msg.content_.text_
if not database:get(bot_id..'Reply:Mute'..msg.chat_id_) then
if DevBot(msg) then
-- ردود المطور -- 
if text == 'هلو' then
send(msg.chat_id_, msg.id_,'هلا مطوري')
return false
end --- if line 6
if text == 'مرحبا' then
send(msg.chat_id_, msg.id_,'ههلا كلبي')
return false
end --- if line 10
if text == 'باي' then
send(msg.chat_id_, msg.id_,'الله وياك حياتي')
return false
end --- if line 15
end --- if line 4 
-- ردود غير المطور -- 
if not DevBot(msg) then
if text == 'هلو' then
send(msg.chat_id_, msg.id_,'ههلو ، 🥳😹💞')
return false
end --- if line 21
if text == "السلام عليكم" or text == "سلام عليكم" or text == "سلامن عليكم" then
send(msg.chat_id_, msg.id_,'ياهلا وعليڪم السلام عمغي 💘","وعليڪم سلام ياڪمر 💕')
return false
end --- if line 21
if text == "شلونك" or text == "شلونكم" or text == "شونك" or text == "شلونج" or text == "شونج" then
send(msg.chat_id_, msg.id_,'تمام عمغي الحلو💘","حبيبيوالله اتس اوڪڪي وانت شحوالڪ 💘🦦')
return false
end --- if line 21
if text == 'مرحبا' then
send(msg.chat_id_, msg.id_,'ههلا كلبي')
return false
end --- if line 25
if text == 'باي' then
send(msg.chat_id_, msg.id_,'الله وياك حياتي')
return false
end --- if line 29
end --- if line 20
end --- if line 3
if text == 'تفعيل ردود البوت' and Owner(msg) then
database:del(bot_id..'Reply:Mute'..msg.chat_id_)
send(msg.chat_id_, msg.id_,'*⋄︙تم تفعيل ردود البوت*')
return false
end --- if line 35
if text == 'تعطيل ردود البوت' and Owner(msg) then
database:set(bot_id..'Reply:Mute'..msg.chat_id_,true)
send(msg.chat_id_, msg.id_,'*⋄︙تم تعطيل ردود البوت*')
return false
end --- if line 40
end --- if line 1
return {
B = Reply
}