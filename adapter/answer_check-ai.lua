--[[
	太阳神三国杀·幻想天使AI体系（解析模块·交互结果检验文件）
]]--
sgs.askForSuitAI["system"] = function(self, reason, result)
	if type(result) == "number" then
		if result >= 0 and result <= 3 then
			return result
		end
	end
	local map = {
		0, 0,
		1, 1,
		2, 2,
		3, 3, 3
	}
	local index = math.random(1, #map)
	return map[index]
end
sgs.askForSkillInvokeAI["system"] = function(self, skill_name, data, result)
	if type(result) == "boolean" then
		return result
	end
	local skill = sgs.Sanguosha:getSkill(skill_name)
	if skill then
		if skill:getFrequency() == sgs.Skill_Frequent then
			return true
		end
	end
	return false
end
sgs.askForChoiceAI["system"] = function(self, skill_name, choices, data, result)
	if type(result) == "string" then
		if string.match(choices, result) then
			return result
		end
	end
	local skill = sgs.Sanguosha:getSkill(skill_name)
	if skill then
		local choice = skill:getDefaultChoice(self.player)
		if type(choice) == "string" then
			if string.match(choices, choice) then
				return choice
			end
		end
	end
	local items = choices:split("+")
	local index = math.random(1, #items)
	return items[index]
end
sgs.askForDiscardAI["system"] = function(self, reason, discard_num, min_num, optional, include_equip, result)
	if type(result) == "table" then
		return result
	end
	if optional then
		return {}
	end
	min_num = min_num or discard_num
	local isExchange = self.player:hasFlag("Global_AIDiscardExchanging")
	local flags = include_equip and "he" or "h"
	local cards = self.player:getCards(flags)
	local can_discard = {}
	if isExchange then
		for _,card in sgs.qlist(cards) do
			local id = card:getEffectiveId()
			table.insert(can_discard, id)
		end
	else
		for _,card in sgs.qlist(cards) do
			local id = card:getEffectiveId()
			if self.player:canDiscard(self.player, id) then
				table.insert(can_discard, id)
			end
		end
	end
	local to_discard = {}
	for count=1, min_num, 1 do
		local length = #can_discard
		if length == 0 then
			break
		end
		local index = math.random(1, length)
		local id = can_discard[index]
		table.insert(to_discard, id)
		table.remove(can_discard, index)
	end
	return to_discard
end
sgs.scripts["SortCallbacks_askForNullificationAI"] = function()
	local callbacks = sgs.askForNullificationAI
	local compare_func = function(a, b)
		local priorityA = callbacks[a]["priority"] or 0
		local priorityB = callbacks[b]["priority"] or 0
		return priorityA > priorityB
	end
	local keynames = {}
	for key, callback in pairs(callbacks) do
		table.insert(keynames, key)
	end
	table.sort(keynames, compare_func)
	sgs.AIGlobalSystemData["KeyNames_askForNullificationAI"] = keynames
end
sgs.askForCardChosenAI["system"] = function(self, who, flags, method, result)
	local ok = ( type(result) == "number" )
	if ok and result <= 0 then
		return -1
	end
	local isDiscard = ( method == sgs.Card_MethodDiscard )
	local cards = who:getCards(flags)
	local ids = {}
	for _,card in sgs.qlist(cards) do
		local id = card:getEffectiveId()
		if not isDiscard or self.player:canDiscard(who, id) then
			if ok and id == result then
				return result
			end
			table.insert(ids, id)
		end
	end
	local length = #ids
	if length == 0 then
		return -1
	end
	local index = math.random(1, length)
	return ids[index]
end
sgs.askForCardAI["system"] = function(self, pattern, source, target, arg, arg2, data, result)
	if type(result) == "string" then
		if result == "." then
			return "."
		end
		--Waiting For More Details
		return result
	end
	return "."
end
sgs.askForUseCardAI["system"] = function(self, pattern, prompt, method, result)
	if type(result) == "string" then
		if result == "." then
			return "."
		end
		--Waiting For More Details
		return result
	end
	return "."
end
sgs.askForAGAI["system"] = function(self, card_ids, refusable, reason, result)
	if type(result) == "number" then
		if refusable and result == -1 then
			return -1
		end
		for _,id in ipairs(card_ids) do
			if result == id then
				return result
			end
		end
	end
	if refusable then
		return -1
	end
	local length = #card_ids
	if length == 0 then
		return -1
	end
	local index = math.random(1, length)
	return card_ids[index]
end
sgs.askForCardShowAI["system"] = function(self, requestor, reason, result)
	local handcards = self.player:getHandcards()
	if type(result) == "userdata" then
		local id = result:getEffectiveId()
		if type(id) == "number" then
			for _,card in sgs.qlist(handcards) do
				if card:getEffectiveId() == id then
					return result
				end
			end
		end
	end
	return self.player:getRandomHandCard()
end
sgs.askForYijiAI["system"] = function(self, card_ids, reason, resultA, resultB)
	if type(resultB) == "number" then
		if resultB <= 0 then
			return nil, -1
		end
		if type(resultA) == "userdata" then
			for _,id in ipairs(card_ids) do
				if id == resultB then
					return resultA, resultB
				end
			end
		end
	end
	return nil, -1
end
sgs.askForPindianAI["system"] = function(self, requestor, reason, result)
	if type(result) == "userdata" then
		local id = result:getEffectiveId()
		if type(id) == "number" then
			local cards = self.player:getHandcards()
			for _,card in sgs.qlist(cards) do
				if card:getEffectiveId() == id then
					return result
				end
			end
		end
	end
	return self.player:getRandomHandCard()
end
sgs.askForPlayerChosenAI["system"] = function(self, targets, reason, result)
	if type(result) == "userdata" then
		local name = result:objectName()
		if type(result) == "string" then
			for _,p in sgs.qlist(targets) do
				if p:objectName() == name then
					return result
				end
			end
		end
	end
	local length = targets:length()
	local index = math.random(0, length-1)
	return targets:at(index)
end
sgs.scripts["SortCallbacks_askForSinglePeachAI"] = function()
	local callbacks = sgs.askForSinglePeachAI
	local compare_func = function(a, b)
		local priorityA = callbacks[a]["priority"] or 0
		local priorityB = callbacks[b]["priority"] or 0
		return priorityA > priorityB
	end
	local keynames = {}
	for key, callback in pairs(callbacks) do
		table.insert(keynames, key)
	end
	table.sort(keynames, compare_func)
	sgs.AIGlobalSystemData["KeyNames_askForSinglePeachAI"] = keynames
end