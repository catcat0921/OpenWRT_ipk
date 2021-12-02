--[[
luci-app-argon-config
]]--

module("luci.controller.argon-config", package.seeall)

function index()
	if not nixio.fs.access('/www/luci-static/argon_new/css/cascade.css') then
		return
	end

	entry({"admin", "system", "argon_new-config"}, form("argon_new-config"), _("argon_new Config"), 90)
end
