local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/useranewrff/roblox/main/%E9%BB%91%E9%87%91.lua"))()

local Window = OrionLib:MakeWindow({Name = "力量传奇<导管自制>", HidePremium = false, SaveConfig = true,IntroText = "原神启动", ConfigFolder = "原神启动"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "原神启动"; Text ="原神启动"; Duration = 5; })

local about = Window:MakeTab({
    Name = "大玉导师制作",
    Icon = "rbxassetid://13519683179",
    PremiumOnly = false

})

about:AddParagraph("支持fluxus,Delta注入器,更新时间2024.10.3")
about:AddParagraph("支持17个服务器","极速传奇,力量传奇,忍者传奇,战争大亨,强壮传奇,起重模拟器,吃掉世界,超级大力士模拟器,短信模拟器,造船寻宝,在51区生存,每秒跳跃加1,地板是熔岩,雪人模拟器,河北唐县,餐厅大亨2,鬼灭小队")
about:AddParagraph("脚本为免费脚本","请勿拿去圈钱,圈钱的人我操你妈")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")
about:AddParagraph("这次更新游戏","力量传奇,造船寻宝,增加通用快速互动,增加注入器网址")

local Tab =Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制大玉导师QQ群",
	Callback = function()
     setclipboard("855219798")
  	end
})

Tab:AddButton({
	Name = "大玉导师快手号",
	Callback = function()
     setclipboard("dayundaoshiyyds")
    end
})

Tab:AddButton({
	Name = "大玉导师哔哩哔哩名字和UID",
	Callback = function()
    setclipboard("中国的kun,UID:3493083681393072")
    end
})

local Tab =Window:MakeTab({
	Name = "PC和手机注入器网址(进不去就开vpn)",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "solara",
	Callback = function()
    setclipboard("getsolara.dev")
    end
})

Tab:AddButton({
	Name = "scythex",
	Callback = function()
    setclipboard("https://scythex.lol")
    end
})

Tab:AddButton({
	Name = "celery",
	Callback = function()
    setclipboard("celery.zip")
    end
})

local Section = Tab:AddSection({
	Name = "以下是手机注入器↓"
})

Tab:AddButton({
	Name = "fluxus",
	Callback = function()
    setclipboard("https://fluxteam.cc")
    end
})

Tab:AddButton({
	Name = "vage",
	Callback = function()
    setclipboard("VegaX.gg")
    end
})

Tab:AddButton({
	Name = "Arceus x(阿尔宙斯)",
	Callback = function()
    setclipboard("https://spdmteam.com")
    end
})

Tab:AddButton({
	Name = "Delta(忍者)",
	Callback = function()
    setclipboard("https://deltaexector.com/")
    end
})

Tab:AddButton({
	Name = "codex",
	Callback = function()
    setclipboard("https://codex.lol/")
    end
})

local Tab =Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "以下是扣字对骂,连续7条消息要冷却↓"
})

Tab:AddToggle({
    Name = "三字经",
    Default = false,
    Callback = function(Value)
        if Value then
            _G.CollectOrbToggle = true
            spawn(function()
                while _G.CollectOrbToggle do
                    local messages = {
                        "行不行",
                        "别急眼",
                        "停下来",
                        "动不动",
                        "大不大",
                        "捏来子",
                        "粉鲍鱼"
                    }

                    for _, message in ipairs(messages) do
                        local args = {
                            [1] = message,
                            [2] = "All"
                        }

                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
                        wait(1)
                    end
                end
            end)
        else
            _G.CollectOrbToggle = false
        end
    end
})

Tab:AddToggle({
    Name = "恶俗",
    Default = false,
    Callback = function(Value)
        if Value then
            _G.CollectOrbToggle = true
            spawn(function()
                while _G.CollectOrbToggle do
                    local messages = {
                        "光宗耀祖",
                        "笑得我肚子痛",
                        "耀武扬威",
                        "别逗我笑",
                        "抓耳挠腮",
                        "底层入",
                        "井底之蛙"
                    }

                    for _, message in ipairs(messages) do
                        local args = {
                            [1] = message,
                            [2] = "All"
                        }
                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
                        wait(1)
                    end
                end
            end)
        else
            _G.CollectOrbToggle = false
        end
    end
})

local Section = Tab:AddSection({
	Name = "以下是通用↓"
})

Tab:AddSlider({
	Name = "速度",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "跳跃高度",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "按钮快速互动",
	Callback = function()
    game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(v)
    v.HoldDuration = 0
end)
    end
})

Tab:AddButton({
	Name = "飞行v3",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/GLaG6BGf"))()
    end
})

Tab:AddButton({
	Name = "通用aimbot",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Neutron.lua/main/MainSetUp_V1.0.1.txt"))()
    end
})

Tab:AddButton({
	Name = "infiniteyield",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end
})

Tab:AddButton({
	Name = "点击复制现在位置",
	Callback = function()
setclipboard("CFrame.new("..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)..")")
    end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

Tab:AddButton({
	Name = "全图甩飞",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/0JjNXtgN"))()
    end
})

Tab:AddButton({
	Name = "范围",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/w5dTQRqr"))()
    end
})

Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

Tab:AddButton({
    Name = "工具包",	
    Callback = function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	
     end
})

Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

Tab:AddButton({
	Name = "飞车",
	Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/useranewrff/roblox/main/%E9%A3%9E%E8%A1%8C%E9%80%9F%E5%BA%A650(%E4%B8%AD%E6%96%87).txt"))()
	end
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end
})

Tab:AddButton({
     Name = "阿尔宙斯V3.0 UI",
     Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
    end
})

Tab:AddButton({
	Name = "死亡笔记",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yuihghghg/siwangbook/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0(1).txt"))()
    end
})

local Tab =Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "个人属性修改,退出游戏消失[虚假]"
})

Tab:AddTextbox({
	Name = "修改重生",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.leaderstats["Rebirths"].Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改重生倍数",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.rebirthMulitiplier.Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改力量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.leaderstats["Strength"].Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改耐力",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Durability.Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改敏捷",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Agility.Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改宝石",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Gems.Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改坏人业报",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.evilKarma.Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改好人业报",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.goodKarma.Value = Value
	end	  
})

Tab:AddTextbox({
	Name = "修改总业报",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Kills.Value = Value
	end	  
})

local Section = Tab:AddSection({
	Name = "自动功能↓"
})

Tab:AddToggle({
    Name = "挥拳无间隔",
    Default = false,
    Callback = function(Value)
        if Value then
            _G.CollectOrbToggle = true
            spawn(function()
                while _G.CollectOrbToggle do
                    wait()
                    lol = Value
		            if lol then
			            game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = 0
		            else
			            game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = punchCooldown
		            end
                end
            end)
        else
            _G.CollectOrbToggle = false
        end
    end
})

Tab:AddToggle({
    Name = "刷业报（配合挥拳）",
    Default = false,
    Callback = function(Value)
        if Value then
            _G.CollectOrbToggle = true
            spawn(function()
                while _G.CollectOrbToggle do
                    wait(0.2)
                    local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
                    if randomPlayer and randomPlayer.Character and randomPlayer.Character:FindFirstChild("Head") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(
                                Vector3.new(
                                    randomPlayer.Character.Head.Position.X,
                                    randomPlayer.Character.Head.Position.Y,
                                    randomPlayer.Character.Head.Position.Z
                                )
                            )
                    end
                end
            end)
        else
            _G.CollectOrbToggle = false
        end
    end
})

Tab:AddToggle({
    Name = "自动物品栏锻炼",
    Default = false,
    Callback = function(Value)
        if Value then
            _G.CollectOrbToggle = true
            spawn(function()
                while _G.CollectOrbToggle do
                    wait()
                    local args = {
                        [1] = "rep"
                    }
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer(unpack(args))
                end
            end)
        else
            _G.CollectOrbToggle = false
        end
    end
})

Tab:AddToggle({
    Name = "自动重生",
    Default = false,
    Callback = function(Value)
        if Value then
            _G.CollectOrbToggle = true
            spawn(function()
                while _G.CollectOrbToggle do
                    wait(30)
                    local args = {
                        [1] = "rebirthRequest"
                    }
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer(unpack(args))
                end
            end)
        else
            _G.CollectOrbToggle = false
        end
    end
})

Tab:AddButton({
	Name = "获取所有宝箱",
	Callback = function()
        game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace")["wonderChest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").wonderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Workspace.Part.CFrame
    end
})

local Section = Tab:AddSection({
	Name = "以下是石头传送↓"
})

Tab:AddButton({
	Name = "小岛石头(0耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.855016708374023, 4.456159591674805, 2118.202880859375)
    end
})

Tab:AddButton({
	Name = "中等石头(10耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-151, 3.626858949661255, 438.5)
    end
})

Tab:AddButton({
	Name = "大石头(100耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.8000030517578, 3.6268584728240967, -137.1999969482422)
    end
})

Tab:AddButton({
	Name = "沙滩石头(5k耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(299.8999938964844, 3.625337839126587, -563.5999755859375)
    end
})

Tab:AddButton({
	Name = "冰霜健身房石头(150k耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2557.699951171875, 3.6268656253814697, -202.3000030517578)
    end
})

Tab:AddButton({
	Name = "神话健身房石头(400k耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2182.300048828125, 3.6268668174743652, 1292.699951171875)
    end
})

Tab:AddButton({
	Name = "永恒健身房石头(750k耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7263.5, 3.6268653869628906, -1217.199951171875)
    end
})

Tab:AddButton({
	Name = "传奇健身房石头(1.5m耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4144.2998046875, 987.8298950195312, -4032.199951171875)
    end
})

Tab:AddButton({
	Name = "肌肉之王健身房石头(5m耐力)",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8966.7109375, 13.526894569396973, -5988.02880859375)
    end
})

local Section = Tab:AddSection({
	Name = "以下是水晶,无动画看背包↓"
})

Tab:AddButton({
	Name = "蓝色水晶(1k钻石,0重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Blue Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "绿色水晶(3k钻石,0重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Green Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "冰霜水晶(5k钻石,1重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Frost Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "神话水晶(8k钻石,5重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Mythical Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "地狱水晶(15k钻石,15重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Inferno Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "传奇水晶1(300k钻石,30重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Legends Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "传奇水晶2(1m钻石,30重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Muscle Elite Crystal"
    }
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "肌肉之王水晶(1.5m钻石,5重生)",
	Callback = function()
    local args = {
    [1] = "openCrystal",
    [2] = "Galaxy Oracle Crystal"
    }
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
    end
})

local Section = Tab:AddSection({
	Name = "购买指定宠物功能↓"
})

Tab:AddButton({
	Name = "购买暗影猎人(1.5m钻石,5重生)",
	Callback = function()
    local args = {
    [1] = game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Darkstar Hunter")
    }
    game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "购买肌肉光环(1.5m钻石,5重生)",
	Callback = function()
    local args = {
    [1] = game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Muscle King")
    }
    game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(unpack(args))
    end
})

Tab:AddButton({
	Name = "点击进化暗影猎人",
	Callback = function()
    local args = {
    [1] = "evolvePet",
    [2] = "Darkstar Hunter"
    }
    game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(unpack(args))
    end
})

local Section = Tab:AddSection({
	Name = "以下是传送↓"
})

Tab:AddButton({
	Name = "小岛",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.17782974243164, 4.428435325622559, 1887.575927734375)
    end
})

Tab:AddButton({
	Name = "冰霜健身房",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2623.022216796875, 4.275299072265625, -409.0733337402344)
    end
})

Tab:AddButton({
	Name = "神话健身房",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2250.778076171875, 4.275299072265625, 1073.2266845703125)
    end
})

Tab:AddButton({
	Name = "永恒健身房",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6758.9638671875, 4.275312423706055, -1284.918701171875)
    end
})

Tab:AddButton({
	Name = "传奇健身房",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4603.28173828125, 988.4282836914062, -3897.86572265625)
    end
})

Tab:AddButton({
	Name = "肌肉之王健身房",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8625.9296875, 14.125326156616211, -5730.4736328125)
    end
})