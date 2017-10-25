SLASH_PREFERENCESUI1 = '/ci'
SlashCmdList.PREFERENCESUI = function()

    IconCheckButton:SetChecked(CI_Preferences.notifyViaIcon)
    SoundCheckButton:SetChecked(CI_Preferences.notifyViaSound)

    PreferencesScreen:Show()
end

SaveButton:SetScript("OnClick", function(self, ...)

    local isIconChecked = IconCheckButton:GetChecked()
    local isSoundChecked = SoundCheckButton:GetChecked()

    CI_Preferences = {
        notifyViaIcon = isIconChecked,
        notifyViaSound = isSoundChecked
    }

    PreferencesScreen:Hide()
end)
