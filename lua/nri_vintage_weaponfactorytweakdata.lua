Hooks:PostHook(WeaponFactoryTweakData, "init", "nri_vintage_WeaponFactoryTweakData:init", function(self)
	self.parts.wpn_fps_upg_o_vintage_reddot = {
		unit = "units/pd2_dlc_pxp4/weapons/wpn_fps_upg_o_schmidt/wpn_fps_upg_o_schmidt_magnified",
		a_obj = "a_o",
		type = "extra",
		sub_type = "second_sight",
		perks = { "second_sight" },
		stance_mod = { wpn_fps_ass_g36 = { translation = Vector3(-0.02, 0, -2.35) } },
		stats = { gadget_zoom = 1 },
	}

	self.parts.wpn_fps_ass_g36_o_vintage.has_description = true
	self.parts.wpn_fps_ass_g36_o_vintage.desc_id = self.parts.wpn_fps_upg_o_hamr.desc_id
	self.parts.wpn_fps_ass_g36_o_vintage.adds = self.parts.wpn_fps_ass_g36_o_vintage.adds or {}
	table.insert(self.parts.wpn_fps_ass_g36_o_vintage.adds, "wpn_fps_upg_o_vintage_reddot")
	table.insert(self.parts.wpn_fps_ass_g36_o_vintage.adds, "wpn_fps_ass_g36_body_standard_steelsight")
	self.parts.wpn_fps_ass_g36_o_vintage.stance_mod.wpn_fps_ass_g36.translation = Vector3(-0.02, -3, -2.35+3.15)
	self.parts.wpn_fps_ass_g36_o_vintage.stats.zoom = 6

	self.parts.wpn_fps_ass_g36_body_standard_steelsight = {
		steelsight_swap_progress_trigger = 0.85,
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_fps_ass_g36_body_optics_cut",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		steelsight_visible = true,
		steelsight_parent = "wpn_fps_ass_g36_o_vintage",
		type = self.parts.wpn_fps_ass_g36_body_standard.type,
		parent = "sight",
		a_obj = nil,
		texture_switch = self.parts.wpn_fps_ass_g36_o_vintage.texture_switch,
		material_parameters = self.parts.wpn_fps_ass_g36_o_vintage.material_parameters,
		skip_third_thq = true,
		animations = { fire = "recoil", reload = "reload", fire_steelsight = "recoil" },
		stats = { value = 1 },
	}

	self.parts.wpn_fps_ass_g36_body_standard.steelsight_visible = false
	self.parts.wpn_fps_ass_g36_body_sl8.steelsight_visible = false
	self.parts.wpn_fps_ass_g36_s_sl8.override = self.parts.wpn_fps_ass_g36_body_sl8.override or {}
	self.parts.wpn_fps_ass_g36_s_sl8.override.wpn_fps_ass_g36_body_standard_steelsight = {
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_fps_ass_g36_body_optics_sl8_cut",
	}
end)