--[ We will store all global variables in this table
TCSpawner = {};

--[ We added the parameter to the function which
--[ will be passed to the function as soon as the
--[ event fires.

function TCSpawner.addItems(_keyPressed)
	print(_keyPressed); --[ print the pressed key to the console.
		
	--[ We Test if the correct key is pressed.
	if _keyPressed == 79 then
		local player = getSpecificPlayer(0); --[ Java: get player one
		local inv = player:getInventory(); --[ Java: access player's inventory
	
		--[ Java: add the actual items to the inventory
		inv:AddItem("Base.HammerStone");
		inv:AddItem("Base.AxeStone");
		inv:AddItem("Base.Sledgehammer");
		inv:AddItem("Base.Saw");
		inv:AddItem("Base.NailsBox");
	end
	if _keyPressed == 80 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("Base.Needle");
		inv:AddItem("Base.Thread");
	end
	if _keyPressed == 81 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("Base.Duffelbag");
	end
	if _keyPressed == 75 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("Base.Padlock");
		inv:AddItem("Base.ElectronicsMag4");
	end
end

--[ Hooks
--[ This will be fired whenever a key is pressed.
Events.OnKeyPressed.Add(TCSpawner.addItems);	