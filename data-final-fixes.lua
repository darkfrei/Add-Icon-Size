log ('my turn')

-- for prot_type_name, prot_type in pairs (data.raw) do
	-- for prot_name, prot in pairs (prot_type) do
    -- log ('data.raw["'.. prot_type_name .. '"]["' .. prot_name .. '"] = ' .. serpent.block(prot, {comment = false}))
	-- end
-- end

item_type_list = {
  "ammo",
  "armor",
  "gun",
  "item",
  "capsule",
  "repair-tool",
  "mining-tool",
  "item-with-entity-data",
  "rail-planner",
  "tool",
  "blueprint",
  "deconstruction-item",
  "blueprint-book",
  "selection-tool",
  "item-with-tags",
  "item-with-label",
  "item-with-inventory",
  "module"
}

for _, item_type in pairs (item_type_list) do
	for item_name, item_prot in pairs (data.raw[item_type]) do
    if not item_prot.icon_size then
      item_prot.icon_size = 32
      log ("Error! " .. item_name .. " hasn't item.icon_size!")
    end
	end
end
