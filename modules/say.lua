command_handler.register('say', 'Сказать <text>', '<text>', false, function (msg, argv, args)
	local content = msg.content:gsub(argv[1], ''):gsub('@everyone', 'everyone'):gsub('@here', 'here')
	msg.channel:broadcastTyping()
	msg:reply(content)
end)

command_handler.register('sayd', 'Сказать <text> и удалить ваше сообщение', '<text>', false, function (msg, argv, args)
	local content = msg.content:gsub(argv[1], ''):gsub('@everyone', 'everyone'):gsub('@here', 'here')
	msg.channel:broadcastTyping()
	msg:reply(content)
	msg:delete()
end)
