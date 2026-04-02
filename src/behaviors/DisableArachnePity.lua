table.insert(option_fns,
    {
        type = "checkbox",
        configKey = "DisableArachnePity",
        label = "Disable Arachne Pity",
        default = false,
        tooltip =
        "Disables Arachne Pity entirely for Anyfear runs."
    })
table.insert(patch_fns, {
    key = "DisableArachnePity",
    fn = function(plan)
        plan:set(RoomSetData.F.F_Story01, "ForceIfUnseenForRuns", nil)
    end
})
