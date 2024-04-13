getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = true,
    ["LocalPlayer"] = {
        ["Ken Haki"] = true,
        ["Invisible"] = true,
        ["Click Delay"] = 0.35,
        ["Panic Mode"] = {
            ["Skip Player"] = false,
            ["Run"] = 3500,
            ["Max"] = 5000,
        }
    },
    ["settings"] = {
        ["White Screen"] = false,
        ["Region_Hop"] = {
            ["Enabled"] = true,
            ["Value"] = "Singapore"
        },
        ["Webhook"] = {
            ["Enabled"] = false,
            ["URL"] = {
                ["Discord"] = "",
                ["Thumbnail"] = "default"
            }
        },
        ["Chatkill"] = {
            ["Enabled"] = false,
            ["Text"] = {
                "U suck!"
            }
        },
        ["FPS Locker"] = {
            ["Enabled"] = false,
            ["Value"] = 12
        },
        ["Bounty Lock"] = {
            ["Enabled"] = false,
            ["Value"] = 30000000
        },
        ["Ignore"] = {
            ["Buddha Users"] = true,
            ["Rumble Users"] = true,
            ['Some Annoying V4'] = true,
        },
        ["Stats"] = {
            ["Auto Reset Stat If Doesnt Match"] = false,
            ["Points"] = "Sword"
        },
    },
    ["Skills"] = {
        ["Melee"] = {
            ["Time"] = 2,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Fruit"] = {
            ["Time"] = 1,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["V"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Sword"] = {
            ["Time"] = 1,
            ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
        },
        ["Gun"] = {
            ["Time"] = 1,
            ["Enabled"] = true,
            ["GunMode"] = false,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
        }
    }
}
loadstring(game:HttpGet(("https://raw.githubusercontent.com/LeNguyenBaoPhuc/BloxFruits/main/Bounty.lua")))()
