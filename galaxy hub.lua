local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("Galaxy Hub (Blade ball)", "Midnight")

local Main = Window:NewTab("Main")

local ParrySection = Main:NewSection("Auto parry's")

ParrySection:NewButton("Auto parry V1", "Parry V1", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JSPSSS/ssssssssssss/main/dddddsdqfdsfesfparrytest112233'))()
end)


ParrySection:NewButton("Auto parry V2", "Best autoparry", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JSPSSS/ssssssssssss/main/prrry'))()
end)


ParrySection:NewButton("Auto parry V3", "X to spam", function()
    shared.config = {
        adjustment = 3.7, -- // Keep this between 3 to 4 \\ --
        hit_range = 0.5, -- // You can mess around with this \\ --
     
        mode = 'Toggle', -- // Hold , Toggle , Always \\ --
        deflect_type = 'Remote', -- // Key Press , Remote \\ --
        notifications = true,
        keybind = Enum.KeyCode.X
     }
     
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/cunning-sys/meowmeowscripts/main/bladeball.lua'),true))()
end)

local SpamSection = Main:NewSection("Spam Parry's")

SpamSection:NewButton("Spam parry button", "by gringo dev", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/JSPSSS/ssssssssssss/main/bladeballspamparry'))()
end)

SpamSection:NewButton("Hold block to spam", "by IIlem6II", function()
    getgenv().SpamSpeed = 0.01

    loadstring(game:HttpGet("https://raw.githubusercontent.com/JSPSSS/ssssssssssss/main/ddddddspam",true))()
end)


local Misc = Window:NewTab("Misc")

local MiscSection = Misc:NewSection("Misc")

MiscSection:NewButton("Spam Freeze ball", "Keybind = B/High chance og geting banned", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JSPSSS/ssssssssssss/main/freezing%20out%20here"))()
end)

MiscSection:NewSlider("Speed changer", "Become Sonic", 500, 0, function(Speed) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
end)

MiscSection:NewSlider("Jumppower changer", "jump to the moon", 500, 0, function(power) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Jumppower = power
end)
