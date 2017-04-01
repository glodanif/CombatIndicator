SLASH_RELOADUI1 = '/rl'
SlashCmdList.RELOADUI = ReloadUI

local soundsPath = 'Interface\\AddOns\\CombatIndicator\\Sounds\\'

local frame = CreateFrame('Frame')

frame:RegisterEvent('PLAYER_REGEN_DISABLED')
frame:RegisterEvent('PLAYER_REGEN_ENABLED')

frame:SetScript('OnEvent', function(self, event, ...)
    if event == 'PLAYER_REGEN_DISABLED' then
        PlaySoundFile(soundsPath .. 'combat_enter.ogg', 'Master')
    elseif event == 'PLAYER_REGEN_ENABLED' then
        PlaySoundFile(soundsPath .. 'combat_exit.ogg', 'Master')
    end
end)
