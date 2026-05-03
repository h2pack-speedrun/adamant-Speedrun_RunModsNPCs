-- luacheck: globals RunModsNPCsInternal
local internal = RunModsNPCsInternal

internal.patch_fns = {}
internal.hook_fns = {}
internal.option_fns = {}

local PACK_ID = "speedrun"

function internal.BuildStorage()
    local storage = {}
    for _, option in ipairs(internal.option_fns) do
        if option.type == "checkbox" then
            table.insert(storage, {
                type = "bool",
                alias = option.configKey,
                configKey = option.configKey,
            })
        else
            error(("Unsupported option type '%s' in %s"):format(tostring(option.type), PACK_ID .. ".RunModsNPCs"))
        end
    end
    return storage
end

import("behaviors/DisableArachnePity.lua")
import("behaviors/DisableSeleneBeforeBoon.lua")
import("behaviors/ForceArachne.lua")
import("behaviors/ForceMedea.lua")
import("behaviors/PreventEchoScam.lua")

return internal
