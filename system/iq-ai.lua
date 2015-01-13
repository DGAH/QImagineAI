--[[
	太阳神三国杀·幻想天使AI体系（系统模块·智商控制文件）
	思想：由于幻想天使AI体系是以模拟未来为主旨的思考类AI体系，所以一个不得不提的概念就是思考深度。
		武将的智商就是与思考深度直接相关的最关键因素，表现为武将思考未来所需的消耗。
		一名武将的智商越高，其思考深度就越大，所作的决定也就更可能符合即时环境。
		目前的设定是，将每段代码，包括技能效果、卡牌效果、规则效果等，都挂有一个智商消费量，或者说，准入资格。
		如果当前角色的智商足够，则将当前代码加入思考范围进行模拟，同时消耗等量的智商。
		如果智商不足，则思考结束，产生思考结果，并将智商重置，恢复为初始水平。
]]--
--获取武将名为name的武将的智商
function getGeneralIQ(name)
	if type(name) == "string" and name ~= "" then
		local IQ = nil
		local details = sgs.AIGenerals[name]
		if type(details) == "table" then
			IQ = details["IQ"] --若该武将定义了智商数值，则智商为定义的数值
		end
		IQ = IQ or 100 --否则取默认智商：100
		return IQ
	end
	return 0 --若武将名不存在，智商取默认值：0
end
--计算一名主将名为name、副将名为name2的角色的综合智商
function getPlayerIQ(name, name2)
	local IQ1 = getGeneralIQ(name)
	local IQ2 = getGeneralIQ(name2)
	--如果存在主将，则将副将智商以40%权重计入综合智商
	if type(name) == "string" and name ~= "" then
		IQ2 = IQ2 * 0.4
	end
	--如果存在副将，则将主将智商以60%权重计入综合智商
	if type(name2) == "string" and name2 ~= "" then
		IQ1 = IQ1 * 0.6
	end
	local IQ = math.ceil( IQ1 + IQ2 )
	return IQ
end
--AI智商级别选择
function chooseIQLevel()
	if sgs.AIGlobalSystemData["IQLevelSelected"] then
		return 
	end
	sgs.AIGlobalSystemData["IQLevelSelected"] = true
	local choices = {
		"LevelA", --菜鸟（%10 × 智商）
		"LevelB", --路人（%40 × 智商）
		"LevelC", --凑合（%90 × 智商）
		"LevelD", --高端（%120× 智商）
		"LevelE", --大神（%150× 智商）
		"LevelX", --参差不齐（全随机）
		"cancel", --正常（%100× 智商）
	}
	choices = table.concat(choices, "+")
	local alives = global_room:getAlivePlayers()
	for _,p in sgs.qlist(alives) do
		if p:getState() ~= "robot" then
			local choice = global_room:askForChoice(p, "ChooseIQLevel", choices)
			if choice == "cancel" then
				for name, ai in pairs(sgs.ais) do
					if type(ai) == "table" then
						ai.IQ = ai.IQ or getPlayerIQ(ai.name1, ai.name2)
						ai.player:speak("我的智商是"..ai.IQ.."！")
					end
				end
			elseif choice == "LevelX" then
				for name, ai in pairs(sgs.ais) do
					if type(ai) == "table" then
						local IQ = ai.IQ or getPlayerIQ(ai.name1, ai.name2)
						local rate = math.random(10, 200) / 100
						IQ = math.min( 1000, math.ceil( IQ * rate ) )
						ai.IQ = IQ
						ai.player:speak("我的智商是"..IQ.."！")
					end
				end
			else
				local rate = 1
				if choice == "LevelA" then
					rate = 0.1
				elseif choice == "levelB" then
					rate = 0.4
				elseif choice == "LevelC" then
					rate = 0.9
				elseif choice == "LevelD" then
					rate = 1.2
				elseif choice == "LevelE" then
					rate = 1.5
				end
				for name, ai in pairs(sgs.ais) do
					if type(ai) == "table" then
						local IQ = ai.IQ or getPlayerIQ(ai.name1, ai.name2)
						IQ = math.min( 1000, math.ceil( IQ * rate ) )
						ai.IQ = IQ
						ai.player:speak("我的智商是"..IQ.."！")
					end
				end
			end
			return 
		end
	end
end