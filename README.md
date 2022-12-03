# ascend ui library
	
## note
main things:
* original owner is Rainn.
* i made it using leaked syntax paid i just cut out the pieces of the UI.
	
## tutorial
simple documentary on how to use it:

```lua
local Window = create:Win("Here goes the name")

local tab1 = Window:Tabs("tab1")

local examplesection1 = tab1:newpage()

examplesection:Label("label name")

examplesection:Line() --makes a line

examplesection:Button("button name", color3.fromRGB(255, 255, 255), function() --choose any color
print("works") --code here
end)

examplesection:Toggle("toggle name", false, function() --toggle
print(false)
end):lock(false) --u can lock the toggle lmao

examplesection:Bind("Close Keybind", _G.ToggleKey11, function(Key)
    print(Key)
end) --toggle
```
