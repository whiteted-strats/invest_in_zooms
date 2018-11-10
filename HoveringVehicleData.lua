-- Populating HoveringVehicleData from Henrik's Data/PD/ObjectData.lua

HoveringVehicleData.type = 0x37
HoveringVehicleData.size = 0x3C
HoveringVehicleData.metadata = 
{
	{["offset"] = 0x00, ["size"] = 0x4, ["type"] = "hex", ["name"] = "action_block_pointer"},
	{["offset"] = 0x04, ["size"] = 0x2, ["type"] = "unsigned", ["name"] = "action_block_offset"},
	-- GAP : offset 0x06 could be the subroutine?
	--     seemingly always FFFF anyway
	{["offset"] = 0x08, ["size"] = 0x4, ["type"] = "float", ["name"] = "speed"},
	{["offset"] = 0x0C, ["size"] = 0x4, ["type"] = "float", ["name"] = "target_speed"},
	{["offset"] = 0x10, ["size"] = 0x4, ["type"] = "float", ["name"] = "time_to_max_speed"},
	-- In decreasing order of certainty
	{["offset"] = 0x14, ["size"] = 0x4, ["type"] = "float", ["name"] = "azimuth_derivative"},
	{["offset"] = 0x18, ["size"] = 0x4, ["type"] = "float", ["name"] = "inclination_derivative"},
	{["offset"] = 0x1C, ["size"] = 0x4, ["type"] = "float", ["name"] = "roll_derivative"},

	{["offset"] = 0x20, ["size"] = 0x4, ["type"] = "float", ["name"] = "azimuth_angle"},
	{["offset"] = 0x24, ["size"] = 0x4, ["type"] = "float", ["name"] = "inclination_angle"},
	-- Essentially a guess
	{["offset"] = 0x28, ["size"] = 0x4, ["type"] = "float", ["name"] = "roll_angle"},
	
	{["offset"] = 0x2C, ["size"] = 0x4, ["type"] = "hex", ["name"] = "path_pointer"},
		-- > path object is size 0x8.
		--   	First 0x4 is pointer to list of pads, terminated by FFFFFFFF or the like
		--   	Second 0x4 is some kind of flags?
		--			0x00040000 could be 'active' or similar
	
    -- GAP : offset 0x30 (size 0x2) seems to just be zero. Could be part of this:
	{["offset"] = 0x32, ["size"] = 0x2, ["type"] = "unsigned", ["name"] = "path_pad_index"}, -- very useful
	
	-- GAP: Final 8 bytes only seen zeros
}