local internal = RunModsNPCsInternal
local option_fns = internal.option_fns
local patch_fns = internal.patch_fns

table.insert(option_fns,
    {
        type = "checkbox",
        configKey = "ForceMedea",
        label = "Force Medea Spawn",
        default = false,
        tooltip =
        "Forces Medea to spawn to reduce death pity reset."
    })
table.insert(patch_fns, {
    key = "ForceMedea",
    fn = function(plan)
        plan:setMany(RoomSetData.N.N_Story01, {
            ForceAtBiomeDepthMin = 0,
            ForceAtBiomeDepthMax = 1,
        })
    end
})
