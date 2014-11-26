--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·SP扩展包文件）
]]--
--[[****************************************************************
	杨修
]]--****************************************************************
sgs.AIGenerals["yangxiu"] = {
	name = "yangxiu",
	general = "yangxiu",
	IQ = 100,
}
--[[
	技能：鸡肋
	描述：每当你受到伤害时，你可以选择一种牌的类别，伤害来源不能使用、打出或弃置其该类别的手牌，直到回合结束。
]]--
sgs.AISkills["jilei"] = {
	name = "jilei",
}
--[[
	技能：啖酪
	描述：每当一张锦囊牌指定了包括你在内的至少两名目标时，你可以摸一张牌，然后该锦囊牌对你无效。
]]--
sgs.AISkills["danlao"] = {
	name = "danlao",
}
--[[****************************************************************
	貂蝉
]]--****************************************************************
sgs.AIGenerals["sp_diaochan"] = {
	name = "sp_diaochan",
	general = "diaochan",
	IQ = 100,
}
--[[
	技能：离间
	描述：出牌阶段限一次，你可以弃置一张牌并选择两名男性角色，令其中一名男性角色视为对另一名男性角色使用一张【决斗】。
]]--
--[[
	技能：闭月
	描述：结束阶段开始时，你可以摸一张牌。
]]--
--[[****************************************************************
	公孙瓒
]]--****************************************************************
sgs.AIGenerals["gongsunzan"] = {
	name = "gongsunzan",
	general = "gongsunzan",
	IQ = 100,
}
--[[
	技能：义从（锁定技）
	描述：若你的体力值大于2，你与其他角色的距离-1；若你的体力值小于或等于2，其他角色与你的距离+1。
]]--
sgs.AISkills["yicong"] = {
	name = "yicong",
	frequency = sgs.Skill_Frequency,
}
--[[****************************************************************
	袁术
]]--****************************************************************
sgs.AIGenerals["yuanshu"] = {
	name = "yuanshu",
	general = "yuanshu",
	IQ = 100,
}
--[[
	技能：庸肆（锁定技）
	描述：摸牌阶段，你额外摸X张牌。弃牌阶段开始时，你弃置X张牌。（X为现存势力数）
]]--
sgs.AISkills["yongsi"] = {
	name = "yongsi",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：伪帝（锁定技）
	描述：你拥有且可以发动当前主公的主公技。
]]--
sgs.AISkills["weidi"] = {
	name = "weidi",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	孙尚香
]]--****************************************************************
sgs.AIGenerals["sp_sunshangxiang"] = {
	name = "sp_sunshangxiang",
	general = "sunshangxiang",
	IQ = 100,
}
--[[
	技能：结姻
	描述：出牌阶段限一次，你可以弃置两张手牌并选择一名已受伤的男性角色，你和该角色各回复1点体力。
]]--
--[[
	技能：枭姬
	描述：每当你失去一张装备区的装备牌后，你可以摸两张牌。
]]--
--[[****************************************************************
	庞德
]]--****************************************************************
sgs.AIGenerals["sp_pangde"] = {
	name = "sp_pangde",
	general = "pangde",
	IQ = 100,
}
--[[
	技能：马术（锁定技）
	描述：你与其他角色的距离-1。
]]--
--[[
	技能：猛进
	描述：你使用的【杀】被目标角色的【闪】抵消后，你可以弃置该角色的一张牌。
]]--
--[[****************************************************************
	关羽
]]--****************************************************************
sgs.AIGenerals["sp_guanyu"] = {
	name = "sp_guanyu",
	general = "guanyu",
	IQ = 100,
}
--[[
	技能：武圣
	描述：你可以将一张红色牌当【杀】使用或打出。
]]--
--[[
	技能：单骑（觉醒技）
	描述：准备阶段开始时，若你的手牌数大于体力值，且本局游戏主公为曹操，你减1点体力上限，然后获得技能“马术”。
]]--
sgs.AISkills["danji"] = {
	name = "danji",
	frequency = sgs.Skill_Wake,
}
--[[****************************************************************
	最强神话
]]--****************************************************************
sgs.AIGenerals["shenlvbu1"] = {
	name = "shenlvbu1",
	general = "lvbu",
	IQ = 100,
}
--[[
	技能：马术（锁定技）
	描述：你与其他角色的距离-1。
]]--
--[[
	技能：无双（锁定技）
	描述：每当你使用【杀】指定一名目标角色后，其需依次使用两张【闪】才能抵消。每当你使用【决斗】指定一名目标角色后，或成为一名角色使用【决斗】的目标后，其每次进行响应需依次打出两张【杀】。
]]--
--[[****************************************************************
	暴怒战神
]]--****************************************************************
sgs.AIGenerals["shenlvbu2"] = {
	name = "shenlvbu2",
	general = "lvbu",
	IQ = 100,
}
--[[
	技能：马术（锁定技）
	描述：你与其他角色的距离-1。
]]--
--[[
	技能：无双（锁定技）
	描述：每当你使用【杀】指定一名目标角色后，其需依次使用两张【闪】才能抵消。每当你使用【决斗】指定一名目标角色后，或成为一名角色使用【决斗】的目标后，其每次进行响应需依次打出两张【杀】。
]]--
--[[
	技能：修罗
	描述：准备阶段开始时，你可以弃置一张与判定区内延时类锦囊牌花色相同的手牌，然后弃置该延时类锦囊牌。
]]--
sgs.AISkills["xiuluo"] = {
	name = "xiuluo",
}
--[[
	技能：神威（锁定技）
	描述：摸牌阶段，你额外摸两张牌。你的手牌上限+2。
]]--
sgs.AISkills["shenwei"] = {
	name = "shenwei",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：神戟（锁定技）
	描述：若你的装备区没有武器牌，你使用【杀】的目标数上限+2。
]]--
sgs.AISkills["shenji"] = {
	name = "shenji",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	蔡文姬
]]--****************************************************************
sgs.AIGenerals["sp_caiwenji"] = {
	name = "sp_caiwenji",
	general = "caiyan",
	IQ = 100,
}
--[[
	技能：悲歌
	描述：每当一名角色受到一次【杀】的伤害后，你可以弃置一张牌令该角色进行一次判定：若判定结果为♥，该角色回复1点体力；♦，该角色摸两张牌；♠，伤害来源将其武将牌翻面；♣，伤害来源弃置两张牌。
]]--
--[[
	技能：断肠（锁定技）
	描述：当你死亡时，杀死你的角色失去其所有武将技能。
]]--
--[[****************************************************************
	马超
]]--****************************************************************
sgs.AIGenerals["sp_machao"] = {
	name = "sp_machao",
	general = "machao",
	IQ = 100,
}
--[[
	技能：马术（锁定技）
	描述：你与其他角色的距离-1。
]]--
--[[
	技能：铁骑
	描述：每当你指定【杀】的目标后，你可以进行一次判定，若判定结果为红色，该角色不能使用【闪】对此【杀】进行响应。
]]--
--[[****************************************************************
	贾诩
]]--****************************************************************
sgs.AIGenerals["sp_jiaxu"] = {
	name = "sp_jiaxu",
	general = "jiaxu",
	IQ = 999,
}
--[[
	技能：完杀（锁定技）
	描述：你的回合内，除濒死角色外的其他角色不能使用【桃】。
]]--
--[[
	技能：乱武（限定技）
	描述：出牌阶段，你可以令所有其他角色对距离最近的另一名角色使用一张【杀】，否则该角色失去1点体力。
]]--
--[[
	技能：帷幕（锁定技）
	描述：你不能被选择为黑色锦囊牌的目标。
]]--
--[[****************************************************************
	曹洪
]]--****************************************************************
sgs.AIGenerals["caohong"] = {
	name = "caohong",
	general = "caohong",
	IQ = 100,
}
--[[
	技能：援护
	描述：结束阶段开始时，你可以将一张装备牌置于一名角色的装备区里，根据此牌的类别执行相应效果：武器牌——你弃置该角色距离为1的一名角色的区域里的一张牌；防具牌——该角色摸一张牌；坐骑牌——该角色回复1点体力。
]]--
sgs.AISkills["yuanhu"] = {
	name = "yuanhu",
}
--[[****************************************************************
	关银屏
]]--****************************************************************
sgs.AIGenerals["guanyinping"] = {
	name = "guanyinping",
	general = "guanyinping",
	IQ = 100,
}
--[[
	技能：血祭
	描述：出牌阶段限一次，你可以弃置一张红色牌并选择你攻击范围内的至多X名其他角色，对这些角色各造成1点伤害（X为你已损失的体力值），然后这些角色各摸一张牌。
]]--
sgs.AISkills["xueji"] = {
	name = "xueji",
}
--[[
	技能：虎啸（锁定技）
	描述：每当你于出牌阶段内使用的【杀】被【闪】抵消时，你于此阶段内能额外使用一张【杀】。
]]--
sgs.AISkills["huxiao"] = {
	name = "huxiao",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：武继（觉醒技）
	描述：结束阶段开始时，若你于此回合内已造成3点或更多伤害，你加1点体力上限，回复1点体力，然后失去技能“虎啸”。
]]--
sgs.AISkills["wuji"] = {
	name = "wuji",
	frequency = sgs.Skill_Wake,
}
--[[****************************************************************
	甄姬
]]--****************************************************************
sgs.AIGenerals["sp_zhenji"] = {
	name = "sp_zhenji",
	general = "zhenji",
	IQ = 100,
}
--[[
	技能：倾国
	描述：你可以将一张黑色手牌当【闪】使用或打出。
]]--
--[[
	技能：洛神
	描述：准备阶段开始时，你可以进行一次判定，若判定结果为黑色，你获得生效后的判定牌且你可以重复此流程。
]]--
--[[****************************************************************
	刘协
]]--****************************************************************
sgs.AIGenerals["liuxie"] = {
	name = "liuxie",
	general = "liuxie",
	IQ = 100,
}
--[[
	技能：天命
	描述：每当你被指定为【杀】的目标时，你可以弃置两张牌，然后摸两张牌。若全场唯一的体力值最多的角色不是你，该角色也可以弃置两张牌，然后摸两张牌。
]]--
--[[
	技能：密诏
	描述：出牌阶段限一次，你可以将所有手牌（至少一张）交给一名其他角色：若如此做，你令该角色与另一名由你指定的有手牌的角色拼点：若一名角色赢，视为该角色对没赢的角色使用一张【杀】。
]]--
--[[****************************************************************
	灵雎
]]--****************************************************************
sgs.AIGenerals["lingju"] = {
	name = "lingju",
	general = "lingju",
	IQ = 100,
}
--[[
	技能：竭缘
	描述：每当你对一名其他角色造成伤害时，若其体力值大于或等于你的体力值，你可以弃置一张黑色手牌：若如此做，此伤害+1。每当你受到一名其他角色造成的伤害时，若其体力值大于或等于你的体力值，你可以弃置一张红色手牌：若如此做，此伤害-1。
]]--
--[[
	技能：焚心（限定技）
	描述：若你不是主公，你杀死一名非主公其他角色检验胜利条件之前，你可以与该角色交换身份牌。
]]--
--[[****************************************************************
	伏完
]]--****************************************************************
sgs.AIGenerals["fuwan"] = {
	name = "fuwan",
	general = "fuwan",
	IQ = 100,
}
--[[
	技能：谋溃
	描述：每当你指定【杀】的目标后，你可以选择一项：摸一张牌，或弃置目标角色一张牌：若如此做，此【杀】被目标角色的【闪】抵消后，该角色弃置你的一张牌。
]]--
--[[****************************************************************
	夏侯霸
]]--****************************************************************
sgs.AIGenerals["xiahouba"] = {
	name = "xiahouba",
	general = "xiahouba",
	IQ = 100,
}
--[[
	技能：豹变（锁定技）
	描述：若你的体力值为3或更低，你视为拥有技能“挑衅”。若你的体力值为2或更低，你视为拥有技能“咆哮”。若你的体力值为1或更低，你视为拥有技能“神速”。
]]--
sgs.AISkills["baobian"] = {
	name = "baobian",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	陈琳
]]--****************************************************************
sgs.AIGenerals["chenlin"] = {
	name = "chenlin",
	general = "chenlin",
	IQ = 100,
}
--[[
	技能：笔伐
	描述：结束阶段开始时，你可以将一张手牌移出游戏并选择一名其他角色，该角色的回合开始时，观看该牌，然后选择一项：交给你一张与该牌类型相同的牌并获得该牌，或将该牌置入弃牌堆并失去1点体力。
]]--
sgs.AISkills["bifa"] = {
	name = "bifa",
}
--[[
	技能：颂词
	描述：出牌阶段，你可以令一名手牌数大于体力值的角色弃置两张牌，或令一名手牌数小于体力值的角色摸两张牌。对每名角色限一次。
]]--
sgs.AISkills["songci"] = {
	name = "songci",
}
--[[****************************************************************
	大乔&小乔
]]--****************************************************************
sgs.AIGenerals["erqiao"] = {
	name = "erqiao",
	general = "daqiao+xiaoqiao",
	IQ = 100,
}
--[[
	技能：星舞
	描述：弃牌阶段开始时，你可以将一张与你本回合使用的牌颜色均不同的手牌置于武将牌上。若你有三张“星舞牌”，你将其置入弃牌堆，然后选择一名男性角色，你对其造成2点伤害并弃置其装备区的所有牌。
]]--
sgs.AISkills["xingwu"] = {
	name = "xingwu",
}
--[[
	技能：落雁（锁定技）
	描述：若你的武将牌上有“星舞牌”，你视为拥有技能“天香”和“流离”。
]]--
sgs.AISkills["luoyan"] = {
	name = "luoyan",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	吕布
]]--****************************************************************
sgs.AIGenerals["sp_shenlvbu"] = {
	name = "sp_shenlvbu",
	general = "lvbu",
	IQ = 100,
}
--[[
	技能：狂暴（锁定技）
	描述：游戏开始时，你获得两枚“暴怒”标记。每当你造成或受到1点伤害后，你获得一枚“暴怒”标记。
]]--
--[[
	技能：无谋（锁定技）
	描述：每当你使用一张非延时类锦囊牌选择目标后，你选择一项：失去1点体力，或弃一枚“暴怒”标记。
]]--
--[[
	技能：无前
	描述：出牌阶段，你可以弃两枚“暴怒”标记并选择一名其他角色，该角色的防具无效且你获得技能“无双”，直到回合结束。
]]--
--[[
	技能：神愤
	描述：出牌阶段限一次，你可以弃六枚“暴怒”标记并选择所有其他角色，对这些角色各造成1点伤害，然后这些角色先各弃置其装备区里的所有牌，再各弃置四张手牌，最后你将你的武将牌翻面。
]]--
--[[****************************************************************
	夏侯氏
]]--****************************************************************
sgs.AIGenerals["xiahoushi"] = {
	name = "xiahoushi",
	general = "xiahoujuan",
	IQ = 100,
}
--[[
	技能：燕语
	描述：一名角色的出牌阶段开始时，你可以弃置一张牌：若如此做，本回合的出牌阶段内限三次，一张与该牌类型相同的牌置入弃牌堆时，你可以令一名角色获得之。
]]--
sgs.AISkills["yanyu"] = {
	name = "yanyu",
}
--[[
	技能：孝德
	描述：每当一名其他角色死亡结算后，你可以拥有该角色武将牌上的一项技能（除主公技与觉醒技），且“孝德”无效，直到你的回合结束时。每当你失去“孝德”后，你失去以此法获得的技能。
]]--
sgs.AISkills["xiaode"] = {
	name = "xiaode",
}
--[[****************************************************************
	乐进
]]--****************************************************************
sgs.AIGenerals["sp_yuejin"] = {
	name = "sp_yuejin",
	general = "yuejin",
	IQ = 100,
}
--[[
	技能：骁果
	描述：其他角色的结束阶段开始时，你可以弃置一张基本牌，令该角色选择一项：弃置一张装备牌并令你摸一张牌，或受到你对其造成的1点伤害。
]]--
--[[****************************************************************
	张宝
]]--****************************************************************
sgs.AIGenerals["zhangbao"] = {
	name = "zhangbao",
	general = "zhangbao",
	IQ = 100,
}
--[[
	技能：咒缚
	描述：出牌阶段限一次，你可以将一张手牌移出游戏并选择一名无“咒缚牌”的其他角色：若如此做，该角色进行判定时，以“咒缚牌”作为判定牌。一名角色的回合结束后，若该角色有“咒缚牌”，你获得该牌。
]]--
sgs.AISkills["zhoufu"] = {
	name = "zhoufu",
}
--[[
	技能：影兵
	描述：每当一张“咒缚牌”成为判定牌后，你可以摸两张牌。
]]--
sgs.AISkills["yingbing"] = {
	name = "yingbing",
}
--[[****************************************************************
	曹昂
]]--****************************************************************
sgs.AIGenerals["caoang"] = {
	name = "caoang",
	general = "caoang",
	IQ = 100,
}
--[[
	技能：慷忾
	描述：每当一名距离1以内的角色成为【杀】的目标后，你可以摸一张牌，然后正面朝上交给该角色一张牌：若该牌为装备牌，该角色可以使用之。
]]--
sgs.AISkills["kangkai"] = {
	name = "kangkai",
}
--[[****************************************************************
	诸葛瑾
]]--****************************************************************
sgs.AIGenerals["sp_zhugejin"] = {
	name = "sp_zhugejin",
	general = "zhugejin",
	IQ = 100,
}
--[[
	技能：弘援
	描述：摸牌阶段，你可以少摸一张牌，令至多两名其他角色各摸一张牌。
]]--
--[[
	技能：缓释
	描述：一名角色的判定牌生效前，你可令其观看你的手牌。若如此做，该角色选择你的一张牌，令你打出此牌代替之。
]]--
--[[
	技能：明哲
	描述：你的回合外，每当你的一张红色牌使用、打出或因弃置而进入弃牌堆后，你可以摸一张牌。
]]--
--[[****************************************************************
	星彩
]]--****************************************************************
--[[
	技能：甚贤
	描述：每当其他角色于你的回合外因弃置而失去基本牌后，你可以摸一张牌。
]]--
--[[
	技能：枪舞
	描述：出牌阶段限一次，你可以进行一次判定。若如此做，则直到回合结束，你使用点数小于判定牌的【杀】时不受距离限制；且你使用点数大于判定牌的【杀】时不计入出牌阶段的使用次数。
]]--
--[[****************************************************************
	潘凤
]]--****************************************************************
--[[
	技能：狂斧
	描述：每当你使用【杀】对目标角色造成伤害后，你可以将其装备区中的一张牌移动到你的装备区或弃置之。
]]--
--[[****************************************************************
	祖茂
]]--****************************************************************
--[[
	技能：引兵
	描述：结束阶段开始时，你可以将任意数量的非基本牌置于武将牌上。每当你受到【杀】或【决斗】造成的伤害后，将你武将牌上的一张牌置入弃牌堆。
]]--
--[[
	技能：绝地
	描述：准备阶段开始时，若你的武将牌上有牌，你可以选择一项：将这些牌置入弃牌堆，然后摸等量的牌；或令体力值小于或等于你的一名其他角色回复1点体力并获得这些牌。
]]--
--[[****************************************************************
	丁奉
]]--****************************************************************
--[[
	技能：短兵（锁定技）
	描述：你使用【杀】时可以额外指定一名距离为1的角色为目标。
]]--
--[[
	技能：奋迅
	描述：出牌阶段限一次，你可以弃置一张牌并指定一名角色，你与该角色的距离始终视为1，直到回合结束。
]]--
--[[****************************************************************
	诸葛诞
]]--****************************************************************
--[[
	技能：功獒（锁定技）
	描述：每当一名角色死亡后，你增加一点体力上限，回复一点体力。
]]--
--[[
	技能：举义（觉醒技）
	描述：准备阶段开始时，若你已受伤且体力上限大于存活角色数，你须将手牌摸至体力上限，然后获得技能“崩坏”和“威严”。
]]--
--[[
	技能：威严（锁定技）
	描述：每当你的体力上限增加或减少时，你摸一张牌。
]]--
--[[****************************************************************
	何太后
]]--****************************************************************
--[[
	技能：鸩毒
	描述：其他角色的出牌阶段开始时，你可以弃置一张手牌，视为该角色使用一张【酒】，然后对该角色造成一点伤害。
]]--
--[[
	技能：戚乱
	描述：每当你杀死一名角色后，可于此回合结束后摸三张牌。
]]--
--[[****************************************************************
	孙鲁育
]]--****************************************************************
--[[
	技能：魅步
	描述：一名其他角色的出牌阶段开始时，若你不在其攻击范围内，你可以令该角色的锦囊牌均视为杀直到回合结束，若如此做，视为你在其攻击范围内直到回合结束。
]]--
--[[
	技能：穆穆
	描述：若你在出牌阶段内未造成伤害，则此回合的结束阶段开始时，你可以选择一项：弃置场上一张武器牌，然后摸一张牌；或将场上一张防具牌移动到你的装备区里（可替换原防具）。
]]--
--[[****************************************************************
	马良
]]--****************************************************************
--[[
	技能：协穆
	描述：出牌阶段限一次，你可以弃置一张【杀】并选择一个势力，然后直到你的下回合开始时，该势力的其他角色使用的黑色牌指定目标后，若你为此牌的目标，你可以摸两张牌。
]]--
--[[
	技能：纳蛮
	描述：每当其他角色打出的【杀】进入弃牌堆时，你可以获得之。
]]--
--[[****************************************************************
	程昱
]]--****************************************************************
--[[
	技能：设伏
	描述：结束阶段开始时，你可以将一张手牌移出游戏，称为“伏兵”。然后为“伏兵”记录一个基本牌或锦囊牌名称(须与其他“伏兵”记录的名称均不同)。你的回合外，当有其他角色使用与你记录的“伏兵”牌名相同的牌时，你可以令此牌无效，然后将该“伏兵”置入弃牌堆。
]]--
--[[
	技能：贲育
	描述：每当你受到伤害后，若你的手牌数不大于伤害来源手牌数，你可以将手牌摸至与伤害来源手牌数相同(最多摸至5张);否则你可以弃置大于伤害来源手牌数的手牌，然后对其造成1点伤害。
]]--
--[[****************************************************************
	甘夫人
]]--****************************************************************
--[[
	技能：淑慎
	描述：每当你回复1点体力时，你可以令一名其他角色回复1点体力或摸两张牌。
]]--
--[[
	技能：神智
	描述：准备阶段开始时，你可以弃置所有手牌，若你以此法弃置的手牌数不小于X，你回复1点体力（X为你当前体力值）。
]]--
--[[****************************************************************
	黄巾雷使
]]--****************************************************************
--[[
	技能：符箓
	描述：你可以将【杀】当雷【杀】使用。
]]--
--[[
	技能：助祭
	描述：当一名角色造成雷电伤害时，你可以令其进行一次判定，若结果为黑色，此伤害+1；若结果为红色，该角色获得此牌。
]]--
--[[****************************************************************
	文聘
]]--****************************************************************
--[[
	技能：镇卫
	描述：每当一名其他角色成为【杀】或黑色锦囊牌的唯一目标时，若该角色的体力值小于你，你可以弃置一张牌并选择一项：摸一张牌，然后你成为此牌的目标；或令词牌失效并将之移除游戏，该回合结束时令此牌的使用者收回此牌。
]]--
--[[****************************************************************
	司马朗
]]--****************************************************************
--[[
	技能：郡兵
	描述：一名角色的出牌阶段开始时，若其手牌数小于1，其可以摸一张牌，若如此做，该角色将所有手牌交给你，然后你交给其等量的牌。
]]--
--[[
	技能：去疾
	描述：出牌阶段限一次，你可以弃置X张牌（X为你已损失的体力值）。然后令至多X名已受伤的角色各回复一点体力，若你以此法弃置的牌中有黑色牌，你失去一点体力。
]]--