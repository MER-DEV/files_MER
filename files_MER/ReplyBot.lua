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
if text == "سلام عليكم"  then      
local namebot = {
'ياهلا وعليڪم السلام عمغي 💘',
'عليـگم آلسـلآم تآج رآسـي 💞',
'وعليڪم سلام ياڪمر 💕',
'وعـليـكم الـسلام يـحلو 🍇',
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end
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