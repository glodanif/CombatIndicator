SLASH_PREFERENCESUI1 = '/ci'
SlashCmdList.PREFERENCESUI = function()
    PreferencesScreen:Show()
end

local frame = CreateFrame('Frame')

frame:RegisterEvent('PLAYER_REGEN_DISABLED')
frame:RegisterEvent('PLAYER_REGEN_ENABLED')

local soundsPath = 'Interface\\AddOns\\CombatIndicator\\Sounds\\'

frame:SetScript('OnEvent', function(self, event, ...)
    if event == 'PLAYER_REGEN_DISABLED' then
        PlaySoundFile(soundsPath .. 'combat_enter.ogg', 'Master')
        VisualIndicator:Show()
    elseif event == 'PLAYER_REGEN_ENABLED' then
        PlaySoundFile(soundsPath .. 'combat_exit.ogg', 'Master')
        VisualIndicator:Hide()
    end
end)
