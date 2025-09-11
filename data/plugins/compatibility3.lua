--mod-version:4 --priority:-3
local core = require "core"

function core.push_clip_rect(...)
  core.active_window():push_clip_rect(...)
end

function core.pop_clip_rect(...)
  core.active_window():pop_clip_rect(...)
end

setmetatable(core, {
  __index = function(self, key)
    local root_view = core.active_window() and core.active_window().root_view
    if root_view and root_view[key] then
      core.deprecation_log("core." .. key)
      return root_view[key]
    end
    return nil
  end
});
