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
		inv:addItem("Base.HammerStone");
		inv:addItem("Base.AxeStone");
		inv:addItem("Base.Sledgehammer");
		inv:addItem("Base.Saw");
		inv:addItem("Base.NailsBox");
	end
	if _keyPressed == 80 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:addItem("Base.Needle");
		inv:addItem("Base.Thread");
	end
	if _keyPressed == 81 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:addItem("Base.Duffelbag");
	end
	if _keyPressed == 75 then
		local player = getSpecificPlayer(0);
		local inv = player:getInventory();
		
		inv:addItem("Base.Padlock");
		inv:addItem("Base.ElectronicsMag4");
	end
end

--[ Hooks
--[ This will be fired whenever a key is pressed.
Events.OnKeyPressed.Add(TCSpawner.addItems);	