local internal = RunModsNPCsInternal
local option_fns = internal.option_fns
local patch_fns = internal.patch_fns

table.insert(option_fns,
    {
        type = "checkbox",
        configKey = "PreventEchoScam",
        label = "Prevent Echo Scam",
        default = false,
        tooltip =
        "Prevents Echo scam by blocking both minibosses from spawning at room 3."
    })

table.insert(patch_fns, {
    key = "PreventEchoScam",
    fn = function(plan)
        local newReq = {
            Path = { "CurrentRun", "BiomeDepthCache" },
            Comparison = "!=",
            Value = 3,
        }
        for _, roomName in ipairs({ "H_MiniBoss01", "H_MiniBoss02" }) do
            plan:appendUnique(RoomData[roomName], "GameStateRequirements", newReq)
        end
    end
})
