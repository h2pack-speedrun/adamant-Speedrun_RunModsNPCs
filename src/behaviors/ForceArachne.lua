table.insert(option_fns,
    {
        type = "checkbox",
        configKey = "ForceArachne",
        label = "Force Arachne Spawn",
        default = false,
        tooltip =
        "Forces Arachne to spawn to reduce death pity reset."
    })
table.insert(patch_fns, {
    key = "ForceArachne",
    fn = function(plan)
        plan:setMany(RoomSetData.F.F_Story01, {
            ForceAtBiomeDepthMin = 4,
            ForceAtBiomeDepthMax = 8,
        })
    end
})
