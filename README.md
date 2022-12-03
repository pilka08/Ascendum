# ascend ui library
	
## note
main things:
* original owner is Rainn.
* i made it using leaked syntax paid i just cut out the pieces of the UI.
	
## tutorial
simple documentary on how to use it:

```
local Window = create:Win("Here goes the name")

local tab1 = Window:Tabs("tab1")

local examplesection1 = tab1:newpage()

examplesection:Label("label name")

examplesection:Line() 
(it makes a line under label)

examplesection:Button("button name", color3.fromRGB(255, 255, 255), function()
print("works") 
(u can choose the button color just search "rgb color picker" in google.)
end)

examplesection:Toggle("toggle name", false, function()
    
end):lock(false) (if its true players cant turn it on and off.)

examplesection:Bind("Close Keybind", _G.ToggleKey11, function(Key)
    _G.ToggleKey11 = Enum.KeyCode[Key]
end) (ui toggle keybind)
```
