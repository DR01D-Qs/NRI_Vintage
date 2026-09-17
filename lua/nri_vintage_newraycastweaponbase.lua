function NewRaycastWeaponBase:get_steelsight_swap_progress_trigger()
	for i, k in pairs(self._parts) do
		if tweak_data.weapon.factory.parts[i].steelsight_swap_progress_trigger then
			return tweak_data.weapon.factory.parts[i].steelsight_swap_progress_trigger
		end
	end

	return NewRaycastWeaponBase.super.get_steelsight_swap_progress_trigger(self)
end