--loadstring
loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/pilka08/Ascend/main/UI_Library.lua'))()

--window
local Window = create:Win("Neptune")

--tabs
local tab1 = Window:Tabs("Home")
local tab2 = Window:Tabs("Greece")

--sections
local Info = tab1:newpage()
local PCInfo = tab2:newpage()
local Greece = tab3:newpage()

--info section stuff
Info:Label("Neptune Greates Greek God!")
examplesection:Line() 

Info:Button("Close UI", Color3.fromRGB(222, 46, 40), function()
 local ui = game:GetService("CoreGui"):FindFirstChild("redui")
if ui then
    ui:Destroy()
end
end)


Info:Bind("Close Keybind", _G.ToggleKey11, function(Key)
    _G.ToggleKey11 = Enum.KeyCode[Key]
end)

--pcinfo section stuff
PCInfo:Label("Computer")
PCInfo:Line()

local function Time()
    Minutes = os.date("*t")["min"]
    Hours = os.date("*t")["hour"]
    Time = "AM"
    
    if Hours > 12 then
        Hours = Hours - 12
        Time = "PM"
    end
    
    Hours = tostring(Hours)
    Minutes = tostring(Minutes)
    
    if string.len(Minutes) == 1 then
        Minutes = "0"..Minutes..""
    end

    return Hours..":"..Minutes.." "..Time
end    

local SessionID = syn.crypt.hash(game.JobId)

if string.len(syn.crypt.hash(game.JobId)) > 10 then
    SessionID = syn.crypt.hash(game.JobId):sub(1, 30)
end

local SessionExploit = "Synapse-x"

if syn then
elseif KRNL_LOADED then
    SessionExploit = "Krnl"
end

local Date = os.date("*t")

local Months = {
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
}

local CurrentData = tostring(Months[Date.month].." "..Date.day..", "..Date.year)

PCInfo:Drop("Session", false, {CurrentData, SessionID, SessionExploit, Time()}, function() end)


--greece stuff
tab3:Button("Print Greece Currency", color3.fromRGB(45, 255, 45), function()
  print("works") 
end)

tab3:Button("button that does nothing lol", color3.fromRGB(100, 45, 100), function()
  print("does nothing") 
end)
