SLASH_RELOADUI1 = '/rl'
SlashCmdList.RELOADUI = ReloadUI

local soundsPath = 'Interface\\AddOns\\CombatIndicator\\Sounds\\'

local indicatorFrame = CreateFrame("Frame", nil, UIParent)
indicatorFrame:SetFrameStrata('BACKGROUND')
indicatorFrame:SetWidth(128)
indicatorFrame:SetHeight(128)

local texture = indicatorFrame:CreateTexture(nil, 'BACKGROUND')
texture:SetTexture("Interface\\AddOns\\CombatIndicator\\Images\\combat.blp")
texture:SetAllPoints(indicatorFrame)
indicatorFrame.texture = texture

indicatorFrame:SetPoint('TOP', 0, -64)
indicatorFrame:Hide()

local frame = CreateFrame('Frame')

frame:RegisterEvent('PLAYER_REGEN_DISABLED')
frame:RegisterEvent('PLAYER_REGEN_ENABLED')
frame:RegisterEvent('INSTANCE_ENCOUNTER_ENGAGE_UNIT')

frame:SetScript('OnEvent', function(self, event, ...)
    if event == 'PLAYER_REGEN_DISABLED' then
        PlaySoundFile(soundsPath .. 'combat_enter.ogg', 'Master')
        indicatorFrame:Show()
    elseif event == 'PLAYER_REGEN_ENABLED' then
        PlaySoundFile(soundsPath .. 'combat_exit.ogg', 'Master')
        indicatorFrame:Hide()
    end
end)

