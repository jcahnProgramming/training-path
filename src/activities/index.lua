--[[
    activities/index.lua
    --------------------
    The list of activities: things the plugin helps you set up, run and
    finish. A guide method links to one with `activity = "<id>"`.
]]

local Activities = {}

Activities.byId = {
    urn_smithing = require("src/activities/urn_smithing"),
}

return Activities
