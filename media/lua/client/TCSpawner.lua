--[ We will store all global variables in this table
TCSpawner = {};

--[ We added the parameter to the function which
--[ will be passed to the function as soon as the
--[ event fires.

function TCSpawner.addItems(_keyPressed)
	print(_keyPressed); --[ print the pressed key to the console.
		
	--[ We Test if the correct key is pressed.
	if _keyPressed == 79 then --[ NumPad 1
		local player = getSpecificPlayer(0); --[ Java: get player one
		local inv = player:getInventory(); --[ Java: access player's inventory
	
		--[ Java: add the actual items to the inventory
		inv:AddItem("TCSpawner.Duffelbag"); --[ Give Custom Duffelbag
	end
	if _keyPressed == 80 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("Base.ElectronicsMag4");
		inv:AddItem("Base.Generator");
	end
	if _keyPressed == 81 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("Base.PetrolCan");
	end
	if _keyPressed == 75 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("Base.NailsBox");
	end
	if _keyPressed == 76 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
	
		inv:AddItem("TCSpawner.AxeStone");
		inv:AddItem("TCSpawner.HuntingKnife");
		inv:AddItem("TCSpawner.Hammer");
		inv:AddItem("TCSpawner.Sledgehammer");
		inv:AddItem("TCSpawner.Screwdriver");
		inv:AddItem("Base.Saw");
	end
	if _keyPressed == 77 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:AddItem("TCSpawner.Shovel");
		inv:AddItem("Base.WateredCan");
	end
end

--[ Hooks
--[ This will be fired whenever a key is pressed.
Events.OnKeyPressed.Add(TCSpawner.addItems);	