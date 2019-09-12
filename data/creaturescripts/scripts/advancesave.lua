local config = {
	savePlayersOnAdvance = true
}

function onAdvance(cid, skill, oldLevel, newLevel)
	if(config.savePlayersOnAdvance) then
		doPlayerSave(cid, true)
	end
	if skill >= SKILL_FIST or skill <= SKILL_FISHING then
		doPlayerSetRate(cid, skill, getSkillStage(getPlayerSkillLevel(cid, skill)))
	elseif skill == SKILL__MAGLEVEL then
		doPlayerSetMagicRate(cid, getMagicLevelStage(getPlayerMagLevel(cid, true)))
	end

	return true
end
