-- Taken from Robot_and_Radar_MK2  module !
-- This is settings for new roboport called roboport-main
---------------------------------
-- Roboport changes
---------------------------------
roboport = data.raw.roboport["roboport"]
-- roboport.fast_replaceable_group = "roboport-main"
-- roboport.next_upgrade = "roboport"
roboport.icon = "__brave-new-oarc__/graphics/icons/roboport-main.png"
-- roboport.place_result = "roboport-main"

---------------------------------
-- Roboport main
---------------------------------
roboportmain = table.deepcopy(roboport)
roboportmain.name = "roboport-main"
roboportmain.flags = { "hidden" }
roboportmain.localised_name = { "", {"entity-name.roboport"}, " main" }
roboportmain.localised_description = { "entity-description.roboport" }
roboportmain.minable.result = "roboport-main"
-- roboportmain.fast_replaceable_group = "roboport"
roboportmain.corpse = "roboport-main-remnants"
-- double radius
roboportmain.logistics_radius = roboportmain.logistics_radius * 2
roboportmain.construction_radius = roboportmain.construction_radius * 2

-- quadruple charging capacities
-- roboportmain.energy_source.input_flow_limit = tostring(util.parse_energy(roboportmain.energy_source.input_flow_limit)*60*4) .. "W"
-- roboportmain.energy_source.buffer_capacity = tostring(util.parse_energy(roboportmain.energy_source.buffer_capacity)*4) .. "J"
-- roboportmain.energy_usage = tostring(util.parse_energy(roboportmain.energy_usage)*60*4) .. "W"
--roboportmain.charging_energy = "1MW"

roboportmain.robot_slots_count = 8
roboportmain.material_slots_count = 8
roboportmain.charging_offsets = {
  {-1.5, 1.5}, {-0.5, 1.5}, { 0.5, 1.5}, { 1.5, 1.5},
  {-1.5, 0.5}, {-0.5, 0.5}, { 0.5, 0.5}, { 1.5, 0.5},
  {-1.5,-0.5}, {-0.5,-0.5}, { 0.5,-0.5}, { 1.5,-0.5},
  {-1.5,-1.5}, {-0.5,-1.5}, { 0.5,-1.5}, { 1.5,-1.5},
}

-- new textures
roboportmain.base.layers[1].filename =						"__brave-new-oarc__/graphics/entity/roboport-main/roboport-main-base.png"
roboportmain.base.layers[1].hr_version.filename =			"__brave-new-oarc__/graphics/entity/roboport-main/hr-roboport-main-base.png"
--roboportmain.base.layers[1].width=456
--roboportmain.base.layers[1].height=554
roboportmain.collision_box = {{-3.65, -1.9}, {2.65, 3.65}}
roboportmain.selection_box = {{-3.75, -2}, {2.75, 3.75}}
roboportmain.base.layers[1].shift = util.by_pixel(-8, 40)		-- 0,44
roboportmain.base.layers[1].hr_version.shift = util.by_pixel(-8, 40)		-- this is main base
roboportmain.base.layers[1].hr_version.scale = .9

roboportmain.base.layers[2].filename = "__base__/graphics/entity/roboport/roboport-shadow.png"
--roboportmain.base.layers[2].width = 277
--roboportmain.base.layers[2].height = 149
roboportmain.base.layers[2].shift = util.by_pixel(36, 76)
roboportmain.base.layers[2].hr_version.shift = util.by_pixel(36, 76)
roboportmain.base.layers[2].hr_version.scale = .9



roboportmain.base_patch.filename =							"__brave-new-oarc__/graphics/entity/roboport-main/roboport-main-base-patch.png"
roboportmain.base_patch.hr_version.filename =				"__brave-new-oarc__/graphics/entity/roboport-main/hr-roboport-main-base-patch.png"
roboportmain.base_patch.hr_version.scale = .9
roboportmain.base_patch.hr_version.shift= util.by_pixel(-9,36)

roboportmain.door_animation_down.filename =					"__brave-new-oarc__/graphics/entity/roboport-main/roboport-main-door-down.png"
roboportmain.door_animation_down.hr_version.filename =		"__brave-new-oarc__/graphics/entity/roboport-main/hr-roboport-main-door-down.png"
roboportmain.door_animation_down.hr_version.scale = .9
roboportmain.door_animation_down.hr_version.shift = util.by_pixel(-11.5,5)

roboportmain.door_animation_up.filename =					"__brave-new-oarc__/graphics/entity/roboport-main/roboport-main-door-up.png"
roboportmain.door_animation_up.hr_version.filename =		"__brave-new-oarc__/graphics/entity/roboport-main/hr-roboport-main-door-up.png"
roboportmain.door_animation_up.hr_version.scale = .9
roboportmain.door_animation_up.hr_version.shift = util.by_pixel(-11.5,-30.5)


roboportmain.is_military_target=true
data:extend({ roboportmain })


---------------------------------
-- Roboport main remnants
---------------------------------
roboportmain_remnants = table.deepcopy(data.raw.corpse["roboport-remnants"])
roboportmain_remnants.name = "roboport-main-remnants"

-- new textures
for _,anim in pairs(roboportmain_remnants.animation) do
	anim.filename =				"__brave-new-oarc__/graphics/entity/roboport-main/remnants/roboport-main-remnants.png"
	anim.hr_version.filename =	"__brave-new-oarc__/graphics/entity/roboport-main/remnants/hr-roboport-main-remnants.png"
end

data:extend({ roboportmain_remnants })