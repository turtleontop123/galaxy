
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()

local Window = ArrayField:CreateWindow({
   Name = "Galaxy V2 (Blade Ball)",
   LoadingTitle = "Galaxy V2",
   LoadingSubtitle = "by IIlem6II💞",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "GalaxyHubProblade"
   },
   Discord = {
      Enabled = true,
      Invite = "TPptG38hDD", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Galaxy",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

ArrayField:Notify({
   Title = "Cheat Well!",
   Content = "V2 Version Made By IIlem6II💞",
   Duration = 20,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})


local Tab = Window:CreateTab("Main Cheats", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Auto Parry's",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element


local Button = Tab:CreateButton({
   Name = "Auto Parry V1",
   Interact = 'Click',
   Callback = function()
     local services = setmetatable({}, { __index = function(self, key)
    local service = game:GetService(key)
    self[key] = service
    return service
end })

local Players = services.Players
local Workspace = services.Workspace

local client = Players.LocalPlayer

local ballsFolder = Workspace.Balls

local Util = {}
do
    shared.Util = Util

    function Util.getBalls()
        local realBall, otherBall

        for i = 1, #ballsFolder:GetChildren() do
            local ball = ballsFolder:GetChildren()[i]
            if not ball:IsA("BasePart") then end

            local isRealBall = ball:GetAttribute("realBall")
            if isRealBall == nil then  end

            if isRealBall then
                realBall = ball
            else
                otherBall = ball
            end

            if realBall and otherBall then break end
        end

        return realBall, otherBall
    end

    function Util.isHunting()
        local realBall = Util.getBalls()
        if not realBall then return false end

        local target = realBall:GetAttribute("target")
        if not target then return false end

        return target == client.Name
    end
end

ballsFolder.ChildAdded:Connect(function()
    print('------------------- Ball Spawned -------------------')

    task.wait(1.5)

    local realBall, fakeBall

    for i = 1, #ballsFolder:GetChildren() do
        local ball = ballsFolder:GetChildren()[i]
        if not ball:IsA("BasePart") then  end

        local currentSpeed = ball.Velocity.Magnitude
        if currentSpeed == 0 then
            realBall = ball
        else
            fakeBall = ball
        end

        if realBall and fakeBall then break end
    end

    if realBall then
        local usedRemote = false
        local lastPosition = realBall.Position
        local lastVelocity = fakeBall.Velocity

        realBall:GetPropertyChangedSignal("Position"):Connect(function()
            if not Util.isHunting() then return end

            local playerPosition = client.Character and client.Character.PrimaryPart and client.Character.PrimaryPart.Position
            if not playerPosition then return end

            local currentSpeed = fakeBall and fakeBall.Velocity.Magnitude or 0

            local predictedPosition = lastPosition + lastVelocity
            local predictedDistance = (predictedPosition - playerPosition).Magnitude

            lastPosition = realBall.Position
            lastVelocity = realBall.Velocity

            local timeToReachPlayer = predictedDistance / (currentSpeed == 0 and 1 or currentSpeed)
            print(timeToReachPlayer)

            if timeToReachPlayer <= 0.3 and not usedRemote then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ParryButtonPress"):Fire()
                task.wait(0.1)
                usedRemote = true
            elseif timeToReachPlayer > 0.4 then
                usedRemote = false
            end
        end)
    end
end)
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto Parry V2",
   Interact = 'Click',
   Callback = function()
  getgenv().config = getgenv().config or {
  hit_time = 0.36, -- // recommended 0.25 to 0.75 \ --

  mode = 'Always', -- // Hold , Toggle , Always \ --
  deflect_type = 'Remote', -- // Key Press , Remote \ --
  notifications = false,
  keybind = Enum.KeyCode.V
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto Parry V3 (SOON)",
   Interact = 'Click',
   Callback = function()
  ArrayField:Notify({
   Title = "Soon",
   Content = "Under Creation",
   Duration = 20,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})
   -- The function that takes place when the button is pressed
   end,
})



local Section = Tab:CreateSection("Manual Spam Button's",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element


local Button = Tab:CreateButton({
   Name = "Spam Button",
   Interact = 'Click',
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/marmfjjwjw223/DownGroud/main/DOWNGROUND'))()
   -- The function that takes place when the button is pressed
   end,
})


local Button = Tab:CreateButton({
   Name = "Hold Block To Spam",
   Interact = 'Click',
   Callback = function()
  getgenv().SpamSpeed = 0.01

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()

   -- The function that takes place when the button is pressed
   end,
})




local Section = Tab:CreateSection("Misc",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element


local Button = Tab:CreateButton({
   Name = "Fly",
   Interact = 'Click',
   Callback = function()
  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "ESP (Very Laggy)",
   Interact = 'Click',
   Callback = function()
  local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(000,000,000)
local OutlineTransparency = 1

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage

    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)

   -- The function that takes place when the button is pressed
   end,
})



local Tab = Window:CreateTab("Credits", 4483362458) -- Title, Image


local Button = Tab:CreateButton({
   Name = "Creator/Coder: IIlem6II",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})


local Button = Tab:CreateButton({
   Name = "Dev/helper no body lol",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Thanks For using our script",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

ArrayField:Notify({
   Title = "THIS IS CREATED BY!IIlem6II",
   Content = "THIS IS CREATED BY IIlem6II",
   Duration = 20,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})












