--[[
	太阳神三国杀·幻想天使AI体系（系统模块·智商控制文件）
]]--
--获取武将名为name的武将的智商
function getGeneralIQ(name)
	if type(name) == "string" and name ~= "" then
		local IQ = nil
		local details = sgs.AIGenerals[name]
		if type(details) == "table" then
			IQ = details["IQ"]
		end
		IQ = IQ or 100
		return IQ
	end
	return 0
end
--计算一名主将名为name、副将名为name2的角色的综合智商
function getPlayerIQ(name, name2)
	local IQ1 = getGeneralIQ(name)
	local IQ2 = getGeneralIQ(name2)
	if type(name) == "string" and name ~= "" then
		IQ2 = IQ2 * 0.4
	end
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
						ai.player:speak("我的智商是"..IQ.."！")
					end
				end
			end
			return 
		end
	end
end