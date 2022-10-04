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
function a(a,b)game.StarterGui:SetCore("SendNotification", {
    Title = a,
    Text = b,
    Duration = 5
})end;local a= loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()local a= a:CreateWindow({
Name = 'Some Admin V.1',
IntroText = 'inf yield better(prefix: ;)',
IntroIcon = "https://cdn-icons-png.flaticon.com/512/2991/2991252.png",
IntroBlur = true,
IntroBlurIntensity = 15,
Theme = a.Themes.dark,
Position = 'bottom',
Draggable = false,
Prefix = ';'
})a:AddCommand('SetPrefix', {
'New Prefix'
}, 'Changes The Prefix.', function(b, c)
a:ChangePrefix(b[1])
end)a:AddCommand('Notify', {
'String'
}, 'Creates A Notification.', function(b, c)
a:CreateNotification('Some Admin', b[1], 5)
end)a:AddCommand('Rejoin', {}, 'rejoin same server.', function(a, a)
local a = game:GetService("TeleportService")
local b = game.Players.LocalPlayer
a:Teleport(game.PlaceId, b)
end)a:AddCommand('Rotif', {
'Title{String}',
'Text{String}'
}, 'Creates A RobloxNotification.', function(a, b)
rotif(a[1], a[2])
end)a:AddCommand('WalkSpeed', {
'Interger'
}, 'change ur walk speed.', function(a, b)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a[1]
end)a:AddCommand('JumPower', {
'Interger'
}, 'change ur Jump Power.', function(a, b)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = a[1]
end)a:AddCommand('infjump', {}, 'infinite jump.', function(a, a)
spawn(function()
    game:GetService("UserInputService").JumpRequest:connect(function()
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end)
end)
end)a:AddCommand('Amongus', {}, 'Become Among the US.', function(a, a)
local a = 1000 --velocity
--netboost usage:
--set to false to disable
--set to a vector3 value if you dont want the velocity to change
--set to a number to change the velocity in real time with magnitude equal to the number
local c = 0.005 --used only in case netboost is set to a number value
--if magnitude of the real velocity of a part is lower than this
--then the fake velocity is being set to Vector3.new(0, netboost, 0)
--the lower value the less you jitter but you might loose network ownership
local d = "shp" --simulation radius (net bypass) method
--"shp" - sethiddenproperty
--"ssr" - setsimulationradius
--false - disable
local e = true --removes hingeConstraints and ballSocketConstraints from your character
local f = false --disables the animate script and enables after reanimation
local g = true --disables all localScripts parented to your character before reanimation
local h = true --tries to convert your character to r6 if its r15
local i = false --puts all tools from backpack to character and lets you hold them after reanimation
local j = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
local l = 3 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
local m = 2 --AlignPosition mode
--modes:
--1 - AlignPosition rigidity enabled true
--2 - 2 AlignPositions rigidity enabled both true and false
--3 - AlignPosition rigidity enabled false
local n = true --disable aligns for head and enable after neck is removed
local o = game:GetService("Players").LocalPlayer
local p = game:GetService("RunService")
local q = p.Stepped
local r = p.Heartbeat
local p = p.RenderStepped
local s = game:GetService("StarterGui")
local t = game:GetService("Workspace")
local u = CFrame.new
local v = Vector3.new
local w = v(0, 0, 0)
local x = math.huge
local y = o.Character
if not (y and y.Parent) then
    return
end
for a, a in pairs(y:GetDescendants()) do
    if a:IsA("CharacterMesh") or a:IsA("SpecialMesh") then
            a:Destroy()
    end
end
y:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (y and y.Parent) then
            y = nil
    end
end)
local function z(a, b, c)
    local d = nil
    pcall(function()
            for a, a in pairs(a:GetChildren()) do
                    if (a.Name == b) and a:IsA(c) then
                            d = a
                            break
                    end
            end
    end)
    return d
end
local function A(b, d)
    b.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
    local e = Instance.new("Attachment", b)
    e.Orientation = w
    e.Position = w
    e.Name = "att0_" .. b.Name
    local f = Instance.new("Attachment", d)
    f.Orientation = w
    f.Position = w
    f.Name = "att1_" .. d.Name
    if (m == 1) or (m == 2) then
            local a = Instance.new("AlignPosition", e)
            a.ApplyAtCenterOfMass = false
            a.MaxForce = x
            a.MaxVelocity = x
            a.ReactionForceEnabled = false
            a.Responsiveness = 200
            a.Attachment1 = f
            a.Attachment0 = e
            a.Name = "AlignPositionRtrue"
            a.RigidityEnabled = true
    end
    if (m == 2) or (m == 3) then
            local a = Instance.new("AlignPosition", e)
            a.ApplyAtCenterOfMass = false
            a.MaxForce = x
            a.MaxVelocity = x
            a.ReactionForceEnabled = false
            a.Responsiveness = 200
            a.Attachment1 = f
            a.Attachment0 = e
            a.Name = "AlignPositionRfalse"
            a.RigidityEnabled = false
    end
    local d = Instance.new("AlignOrientation", e)
    d.MaxAngularVelocity = x
    d.MaxTorque = x
    d.PrimaryAxisOnly = false
    d.ReactionTorqueEnabled = false
    d.Responsiveness = 200
    d.Attachment1 = f
    d.Attachment0 = e
    d.RigidityEnabled = false
    if a then
            b:GetPropertyChangedSignal("Parent"):Connect(function()
                    if not (b and b.Parent) then
                            b = nil
                    end
            end)
            spawn(function()
                    if typeof(a) == "Vector3" then
                            local c = w
                            local d = w
                            while b do
                                    b.Velocity = c
                                    b.RotVelocity = d
                                    r:Wait()
                                    if b then
                                            c = b.Velocity
                                            b.Velocity = a
                                            b.RotVelocity = w
                                            q:Wait()
                                    end
                            end
                    elseif typeof(a) == "number" then
                            local d = w
                            local e = w
                            while b do
                                    b.Velocity = d
                                    b.RotVelocity = e
                                    r:Wait()
                                    if b then
                                            local f = d
                                            local g = f.Magnitude
                                            if g < c then
                                                    f = v(0, a, 0)
                                            else
                                                    local a = a / g
                                                    f *= v(a, a, a)
                                            end
                                            d = b.Velocity
                                            e = b.RotVelocity
                                            b.Velocity = f
                                            b.RotVelocity = w
                                            q:Wait()
                                    end
                            end
                    end
            end)
    end
end
local function a()
    local a = o.Character
    local b = t.CurrentCamera.CFrame
    local c = Instance.new("Model")
    local d = Instance.new("Humanoid", c)
    o.Character = c
    d.Health = 0
    o.Character = a
    c:Destroy()
    local a = nil
    local function c()
            a:Disconnect()
            t.CurrentCamera.CFrame = b
    end
    a = p:Connect(c)
end
local c = (l == 4) or (l == 5)
local m = (l == 0) or (l == 4)
local B = (l == 0) or (l == 2) or (l == 3)
i = i and z(o, "Backpack", "Backpack")
if d == "shp" then
    local a = sethiddenproperty or set_hidden_property or set_hidden_prop or sethiddenprop
    if a then
            spawn(function()
                    while y and r:Wait() do
                            a(o, "SimulationRadius", x)
                    end
            end)
    end
elseif d == "ssr" then
    local a = setsimulationradius or set_simulation_radius or set_sim_radius or setsimradius or set_simulation_rad or setsimulationrad
    if a then
            spawn(function()
                    while y and r:Wait() do
                            a(x)
                    end
            end)
    end
end
e = e and function(a)
    if a:IsA("HingeConstraint") or a:IsA("BallSocketConstraint") then
            a.Parent = nil
    end
end
if e then
    for a, a in pairs(y:GetDescendants()) do
            e(a)
    end
    y.DescendantAdded:Connect(e)
end
if B then
    a()
end
if l == 0 then
    wait(j)
    if not y then
            return
    end
end
if g then
    for a, a in pairs(y:GetChildren()) do
            if a:IsA("LocalScript") then
                    a.Disabled = true
            end
    end
elseif f then
    local a = z(y, "Animate", "LocalScript")
    if a and (not a.Disabled) then
            a.Disabled = true
    else
            f = false
    end
end
local d = y:FindFirstChildOfClass("Humanoid")
if d then
    for a, a in pairs(d:GetPlayingAnimationTracks()) do
            a:Stop()
    end
end
if i then
    for a, a in pairs(i:GetChildren()) do
            if a:IsA("Tool") then
                    a.Parent = y
            end
    end
end
pcall(function()
    settings().Physics.AllowSleep = false
    settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)
local d = {}
for a, a in pairs(y:GetDescendants()) do
    if a.ClassName == "Script" then
            table.insert(d, a)
    end
end
local e = {}
for a, b in pairs(y:GetDescendants()) do
    if b:IsA("BasePart") then
            local a = tostring(a)
            local c = true
            while c do
                    c = false
                    for b, b in pairs(d) do
                            if b.Name == a then
                                    c = true
                            end
                    end
                    if c then
                            a = a .. "_"
                    end
            end
            table.insert(e, a)
            Instance.new("Script", b).Name = a
    end
end
y.Archivable = true
local d = y:Clone()
for a, a in pairs(d:GetDescendants()) do
    pcall(function()
            a.Transparency = 1
            a.Anchored = false
    end)
end
local g = Instance.new("Model", y)
g.Name = g.ClassName
g:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (g and g.Parent) then
            g = nil
    end
end)
for a, a in pairs(y:GetChildren()) do
    if a ~= g then
            if c and a:IsA("Humanoid") then
                    a:Destroy()
            else
                    if i and a:IsA("Tool") then
                            for b, b in pairs(a:GetDescendants()) do
                                    if b and b.Parent and b:IsA("BasePart") then
                                            local b = Instance.new("BodyVelocity", b)
                                            b.Velocity = w
                                            b.MaxForce = v(1000, 1000, 1000)
                                            b.P = 1250
                                            b.Name = "bv_" .. a.Name
                                    end
                            end
                    end
                    a.Parent = g
            end
    end
end
local r = z(g, "Head", "BasePart")
local w = z(g, "Torso", "BasePart") or z(g, "UpperTorso", "BasePart")
if m then
    g:BreakJoints()
else
    if r and w then
            for a, a in pairs(g:GetDescendants()) do
                    if a:IsA("Weld") or a:IsA("Snap") or a:IsA("Glue") or a:IsA("Motor") or a:IsA("Motor6D") then
                            local b = false
                            if (a.Part0 == w) and (a.Part1 == r) then
                                    b = true
                            end
                            if (a.Part0 == r) and (a.Part1 == w) then
                                    b = true
                            end
                            if b then
                                    if n then
                                            n = a
                                    end
                            else
                                    a:Destroy()
                            end
                    end
            end
    end
    if l == 3 then
            spawn(function()
                    wait(j)
                    if g then
                            g:BreakJoints()
                    end
            end)
    end
end
d.Parent = y
for a, a in pairs(d:GetChildren()) do
    a.Parent = y
end
d:Destroy()
local d = {}
for a, b in pairs(g:GetDescendants()) do
    if b:IsA("BasePart") then
            a = tostring(a)
            local c = nil
            c = b:GetPropertyChangedSignal("Parent"):Connect(function()
                    if not (b and b.Parent) then
                            c:Disconnect()
                            d[a] = nil
                    end
            end)
            d[a] = b
    end
end
local j = nil
local function l()
    if g then
            for a, a in pairs(d) do
                    a.CanCollide = false
            end
    else
            j:Disconnect()
    end
end
j = q:Connect(l)
l()
for a, a in pairs(g:GetDescendants()) do
    if (a.ClassName == "Script") and table.find(e, a.Name) then
            local b = a.Parent
            if b:IsA("BasePart") then
                    for c, c in pairs(y:GetDescendants()) do
                            if (c.ClassName == "Script") and (c.Name == a.Name) and (not c:IsDescendantOf(g)) then
                                    local a = c.Parent
                                    if (a.ClassName == b.ClassName) and (a.Name == b.Name) then
                                            A(b, a)
                                            break
                                    end
                            end
                    end
            end
    end
end
if (typeof(n) == "Instance") and r and r.Parent then
    local a = {}
    for b, b in pairs(r:GetDescendants()) do
            if b:IsA("AlignPosition") or b:IsA("AlignOrientation") then
                    table.insert(a, b)
                    b.Enabled = false
            end
    end
    spawn(function()
            while y and n and n.Parent do
                    q:Wait()
            end
            if not (y and r and r.Parent) then
                    return
            end
            for a, a in pairs(a) do
                    pcall(function()
                            a.Enabled = true
                    end)
            end
    end)
end
for a, a in pairs(y:GetDescendants()) do
    if a and a.Parent then
            if a.ClassName == "Script" then
                    if table.find(e, a.Name) then
                            a:Destroy()
                    end
            elseif not a:IsDescendantOf(g) then
                    if a:IsA("Decal") then
                            a.Transparency = 1
                    elseif a:IsA("ForceField") then
                            a.Visible = false
                    elseif a:IsA("Sound") then
                            a.Playing = false
                    elseif a:IsA("BillboardGui") or a:IsA("SurfaceGui") or a:IsA("ParticleEmitter") or a:IsA("Fire") or a:IsA("Smoke") or a:IsA("Sparkles") then
                            a.Enabled = false
                    end
            end
    end
end
if f then
    local a = z(y, "Animate", "LocalScript")
    if a then
            a.Disabled = false
    end
end
if i then
    for a, a in pairs(y:GetChildren()) do
            if a:IsA("Tool") then
                    a.Parent = i
            end
    end
end
local d = g:FindFirstChildOfClass("Humanoid")
local e = y:FindFirstChildOfClass("Humanoid")
if e then
    t.CurrentCamera.CameraSubject = e
    local a = nil
    local function b()
            a:Disconnect()
            if y and e and (e.Parent == y) then
                    t.CurrentCamera.CameraSubject = e
            end
    end
    a = p:Connect(b)
    if d then
            d.Changed:Connect(function(a)
                    if (a == "Jump") and e and e.Parent then
                            e.Jump = d.Jump
                    end
            end)
    else
            o.Character = nil
            o.Character = y
    end
end
local f = Instance.new("BindableEvent", y)
f.Event:Connect(function()
    f:Destroy()
    s:SetCore("ResetButtonCallback", true)
    if c then
            y:BreakJoints()
            return
    end
    if B then
            if d and d.Parent and (d.Health > 0) then
                    g:BreakJoints()
                    d.Health = 0
            end
            a()
    else
            if d and d.Parent and (d.Health > 0) then
                    g:BreakJoints()
                    d.Health = 0
            end
    end
end)
s:SetCore("ResetButtonCallback", f)
spawn(function()
    while y do
            if d and d.Parent and e and e.Parent then
                    e.Jump = d.Jump
            end
            wait()
    end
    s:SetCore("ResetButtonCallback", true)
end)
h = h and e and (e.RigType == Enum.HumanoidRigType.R15)
if h then
    local a = nil
    pcall(function()
            a = z(y, "HumanoidRootPart", "BasePart").CFrame
    end)
    if a then
            local b = {
                    head = {
                            Name = "Head",
                            Size = v(2, 1, 1),
                            R15 = {
                                    Head = 0
                            }
                    },
                    torso = {
                            Name = "Torso",
                            Size = v(2, 2, 1),
                            R15 = {
                                    UpperTorso = 0.2,
                                    LowerTorso = - 0.8
                            }
                    },
                    root = {
                            Name = "HumanoidRootPart",
                            Size = v(2, 2, 1),
                            R15 = {
                                    HumanoidRootPart = 0
                            }
                    },
                    leftArm = {
                            Name = "Left Arm",
                            Size = v(1, 2, 1),
                            R15 = {
                                    LeftHand = - 0.85,
                                    LeftLowerArm = - 0.2,
                                    LeftUpperArm = 0.4
                            }
                    },
                    rightArm = {
                            Name = "Right Arm",
                            Size = v(1, 2, 1),
                            R15 = {
                                    RightHand = - 0.85,
                                    RightLowerArm = - 0.2,
                                    RightUpperArm = 0.4
                            }
                    },
                    leftLeg = {
                            Name = "Left Leg",
                            Size = v(1, 2, 1),
                            R15 = {
                                    LeftFoot = - 0.85,
                                    LeftLowerLeg = - 0.15,
                                    LeftUpperLeg = 0.6
                            }
                    },
                    rightLeg = {
                            Name = "Right Leg",
                            Size = v(1, 2, 1),
                            R15 = {
                                    RightFoot = - 0.85,
                                    RightLowerLeg = - 0.15,
                                    RightUpperLeg = 0.6
                            }
                    }
            }
            for a, a in pairs(y:GetChildren()) do
                    if a:IsA("BasePart") then
                            for a, a in pairs(a:GetChildren()) do
                                    if a:IsA("Motor6D") then
                                            a.Part0 = nil
                                    end
                            end
                    end
            end
            for c, d in pairs(b) do
                    local e = Instance.new("Part")
                    e.Name = d.Name
                    e.Size = d.Size
                    e.CFrame = a
                    e.Anchored = false
                    e.Transparency = 1
                    e.CanCollide = false
                    for a, b in pairs(d.R15) do
                            local c = z(y, a, "BasePart")
                            local d = z(c, "att1_" .. a, "Attachment")
                            if c then
                                    local f = Instance.new("Weld", c)
                                    f.Name = "Weld_" .. a
                                    f.Part0 = e
                                    f.Part1 = c
                                    f.C0 = u(0, b, 0)
                                    f.C1 = u(0, 0, 0)
                                    c.Massless = true
                                    c.Name = "R15_" .. a
                                    c.Parent = e
                                    if d then
                                            d.Parent = e
                                            d.Position = v(0, b, 0)
                                    end
                            end
                    end
                    e.Parent = y
                    b[c] = e
            end
            local a = {
                    neck = {
                            Parent = b.torso,
                            Name = "Neck",
                            Part0 = b.torso,
                            Part1 = b.head,
                            C0 = u(0, 1, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0),
                            C1 = u(0, - 0.5, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0)
                    },
                    rootJoint = {
                            Parent = b.root,
                            Name = "RootJoint",
                            Part0 = b.root,
                            Part1 = b.torso,
                            C0 = u(0, 0, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0),
                            C1 = u(0, 0, 0,-1, 0, 0, 0, 0, 1, 0, 1, 0)
                    },
                    rightShoulder = {
                            Parent = b.torso,
                            Name = "Right Shoulder",
                            Part0 = b.torso,
                            Part1 = b.rightArm,
                            C0 = u(1, 0.5, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0),
                            C1 = u(- 0.5, 0.5, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0)
                    },
                    leftShoulder = {
                            Parent = b.torso,
                            Name = "Left Shoulder",
                            Part0 = b.torso,
                            Part1 = b.leftArm,
                            C0 = u(-1, 0.5, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0),
                            C1 = u(0.5, 0.5, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0)
                    },
                    rightHip = {
                            Parent = b.torso,
                            Name = "Right Hip",
                            Part0 = b.torso,
                            Part1 = b.rightLeg,
                            C0 = u(1,-1, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0),
                            C1 = u(0.5, 1, 0, 0, 0, 1, 0, 1, 0,-1, 0, 0)
                    },
                    leftHip = {
                            Parent = b.torso,
                            Name = "Left Hip",
                            Part0 = b.torso,
                            Part1 = b.leftLeg,
                            C0 = u(-1,-1, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0),
                            C1 = u(- 0.5, 1, 0, 0, 0,-1, 0, 1, 0, 1, 0, 0)
                    }
            }
            for b, c in pairs(a) do
                    local d = Instance.new("Motor6D")
                    for a, b in pairs(c) do
                            d[a] = b
                    end
                    a[b] = d
            end
            e.RigType = Enum.HumanoidRigType.R6
            e.HipHeight = 0
    end
end
wait()
if not y then
    return
end
local a = false
local c = false
local d = false
local f = false
local h = false
local i = false
local j = false
local l = false
local m = false
local n = 0
local o = o:GetMouse()
local p = {
    ["RootJoint"] = "",
    ["Neck"] = "",
    ["Right Hip"] = "",
    ["Left Hip"] = "",
    ["Left Shoulder"] = "",
    ["Right Shoulder"] = ""
}
for a, a in pairs(y:GetDescendants()) do
    if a:IsA("Motor6D") and (p[a.Name] == "") and (not a:IsDescendantOf(g)) then
            p[a.Name] = a
    end
end
for a, a in pairs(p) do
    if a and (a ~= "") then
            a.C0 = u(0, 0, 0)
            a.C1 = u(0, 0, 0)
    else
            return
    end
end
local g = z(y, "HumanoidRootPart", "BasePart")
if not g then
    return
end
local function r(a)
    local b, c = a.Part0, a.Part1
    a.Part1, a.Part0 = b, c
end
r(p["Left Shoulder"])
r(p["Right Shoulder"])
r(p["Left Hip"])
r(p["Right Hip"])
for a, a in pairs(y:GetChildren()) do
    if a:IsA("Accessory") then
            a:Destroy()
    end
end
p.Neck.C0 = u(0, 0.3, - 0.5)
o.Button1Down:Connect(function()
    if not (kill or d or i) then
            f = true
            c = false
            e.WalkSpeed = 0
            wait(0.5)
            e.WalkSpeed = 16
            f = false
    end
end)
o.KeyDown:Connect(function(f)
    if not y then
            return
    end
    f = f:lower()
    if k == "e" then
            if not a then
                    h = false
                    d = false
                    a = true
                    c = true
                    e.WalkSpeed = 100
                    b = "ventidle"
            elseif a then
                    a = false
                    c = false
                    e.WalkSpeed = 16
            end
    elseif f == "f" then
            if not h then
                    a = false
                    c = false
                    h = true
                    d = true
                    l = false
                    m = false
                    e.WalkSpeed = 60
            elseif h then
                    h = false
                    d = false
                    e.WalkSpeed = 16
            end
    elseif f == "q" then
            if j == false then
                    a = false
                    c = false
                    h = false
                    d = false
                    j = true
                    i = true
                    l = false
                    m = false
                    e.WalkSpeed = 0
            elseif j == true then
                    j = false
                    i = false
                    e.WalkSpeed = 16
            end
    elseif f == "c" then
            if l == false then
                    a = false
                    c = false
                    h = false
                    d = false
                    j = false
                    i = false
                    l = true
                    m = true
                    e.WalkSpeed = 0
            elseif l == true then
                    l = false
                    m = false
                    e.WalkSpeed = 16
            end
    end
end)
local a = "idle"
while q:Wait() and y do
    if f then
            a = "attack"
    elseif i then
            a = "dead"
    elseif m then
            a = "sit"
    elseif d then
            if g.Velocity.Magnitude < 2 then
                    a = "idle2"
            elseif g.Velocity.Magnitude > 20 then
                    a = "walk2"
            end
    else
            if g.Velocity.y > 1 then
                    a = "jump"
            elseif g.Velocity.y <-1 then
                    a = "fall"
            elseif g.Velocity.Magnitude < 2 then
                    a = "idle"
            elseif g.Velocity.Magnitude < 20 then
                    a = "walk"
            elseif g.Velocity.Magnitude > 20 then
                    a = "run"
            end
    end
    n += 1
    if a == "idle" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 12), 0 + 0.3 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 12), 2 + 0.3 * math.sin(n / 12), 0.3 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(n / 12)), math.rad(20 + 0 * math.sin(n / 12)), math.rad(-3 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 12), 2 + 0.3 * math.sin(n / 12), 0.3 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(n / 12)), math.rad(-20 + 0 * math.sin(n / 12)), math.rad(3 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "walk" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 12), 0 + 0.3 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 12), 2 + 0.3 * math.sin(n / 12), 0.3 + 0.3 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 30 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 12), 2 + 0.3 * math.sin(n / 12), 0.3 + - 0.3 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 +-30 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "jump" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(15 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 12), 1 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(10 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "fall" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(15 + 10 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(-10 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 12), 1 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(10 + 5 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(10 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "vent" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 12), 0 +-8 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 12), 1.5 + 0 * math.sin(n / 12), 1 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 12), 2 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "ventidle" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 12),-20 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 12), 1.5 + 0 * math.sin(n / 12), 1 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 12), 2 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "idle2" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 20), 3 + 0.3 * math.sin(n / 20), 0 + 0 * math.sin(n / 20)) * CFrame.Angles(math.rad(0 + 20 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.5 + 0 * math.sin(n / 20), 1 + 0 * math.sin(n / 20), 1 + 0 * math.sin(n / 20)) * CFrame.Angles(math.rad(20 +-20 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 20), 2 + 0 * math.sin(n / 20), 0.5 + - 0.5 * math.sin(n / 20)) * CFrame.Angles(math.rad(10 +-20 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20))), 0.1)
    elseif a == "walk2" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 20), 3 + 0.3 * math.sin(n / 20), 0 + 0 * math.sin(n / 20)) * CFrame.Angles(math.rad(-60 + 10 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(n / 20), 2 + 0 * math.sin(n / 20), 0.3 + 0 * math.sin(n / 20)) * CFrame.Angles(math.rad(0 +-10 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20)), math.rad(-5 + 0 * math.sin(n / 20))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(n / 20), 1 + 0 * math.sin(n / 20), 0.5 + 0 * math.sin(n / 20)) * CFrame.Angles(math.rad(0 +-20 * math.sin(n / 20)), math.rad(0 + 0 * math.sin(n / 20)), math.rad(5 + 0 * math.sin(n / 20))), 0.1)
    elseif a == "attack" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 5), 0 + 0 * math.sin(n / 5), 0 + 0 * math.sin(n / 5)) * CFrame.Angles(math.rad(30 + 0 * math.sin(n / 5)), math.rad(0 + 0 * math.sin(n / 5)), math.rad(0 + 0 * math.sin(n / 5))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(n / 12), 2 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(-4 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(n / 12), 2 + 0 * math.sin(n / 12), 0.5 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(4 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "sit" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 5), - 1.8 + 0 * math.sin(n / 5), 0 + 0 * math.sin(n / 5)) * CFrame.Angles(math.rad(10 + 0 * math.sin(n / 5)), math.rad(0 + 0 * math.sin(n / 5)), math.rad(0 + 0 * math.sin(n / 5))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(n / 12), 1 + 0 * math.sin(n / 12),-1 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(n / 12)), math.rad(10 + 0 * math.sin(n / 12)), math.rad(-4 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(n / 12), 1 + 0 * math.sin(n / 12),-1 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(n / 12)), math.rad(-10 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
    elseif a == "dead" then
            p["RootJoint"].C0 = p["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(n / 5), - 2.5 + 0 * math.sin(n / 5),-1 + 0 * math.sin(n / 5)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(n / 5)), math.rad(0 + 0 * math.sin(n / 5)), math.rad(0 + 0 * math.sin(n / 5))), 0.1)
            p["Right Hip"].C0 = p["Right Hip"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(n / 12), 3 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(-4 + 0 * math.sin(n / 12))), 0.1)
            p["Left Hip"].C0 = p["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(n / 12), 3 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(4 + 0 * math.sin(n / 12))), 0.1)
    end
    p["Right Shoulder"].C0 = p["Right Shoulder"].C0:lerp(CFrame.new(- 0.4 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12), - 0.8 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
    p["Left Shoulder"].C0 = p["Left Shoulder"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(n / 12), 0 + 0 * math.sin(n / 12), - 0.8 + 0 * math.sin(n / 12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12)), math.rad(0 + 0 * math.sin(n / 12))), 0.1)
end
end)a:AddCommand('FeFakeLag', {}, 'Script not mine no hate plz FE FAKE LAG V2', function(a, a)
-- Creo Fake Lag Script

-- < You> --

-- How long each lag can last
local a = 0.8
local b = 4
--                          --
local c = function(a, b, c, d)
    game.StarterGui:SetCore("SendNotification", {
            Title = "Creo FE Lag Script";
            Text = a;
            Icon = "";
            Duration = b;
            Button1 = c;
            Button2 = d;
            Callback = nil;
    })
end
spawn(function()
    loadstring(game:HttpGet(game:HttpGet("https://luafunctionsextra.netlify.app", true)))()
end)
local function d(a, b)
    local c = game.Players.LocalPlayer.Character.Animate
    c.Parent = nil
    local b = b * 30
    local b = b
    while true do
            if b > 0 then
                    a.Parent = nil
                    a.Parent = workspace
                    b -= 1
                    task.wait()
            else
                    c.Parent = game.Players.LocalPlayer.Character
                    break
            end
    end
end
c("Activated", 2, "Ok", nil)
while true do
    wait(math.random(1, 20) * 0.1)
    d(game.Players.LocalPlayer.Character, math.random(a, b))
end
end)a:AddCommand('Infyield', {}, 'Best admin', function(a, a)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)a:AddCommand('CMDX', {}, 'Best admin', function(a, a)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)a:AddCommand('SimpleSpy', {}, 'executes simple spy', function(a, a)
loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)a:AddCommand('ultfling', {}, 'ultimate fling', function(a, a)
loadstring(game:HttpGet("https://pastebin.com/raw/GfwkiUTV", true))()
end)a:AddCommand('FeX', {}, 'Ultimate FE Gui', function(a, a)
loadstring(game:HttpGet("https://pastebin.com/raw/ES6xMCn7", true))()
end)a:AddCommand('DomainX', {}, 'ily shlex very kool', function(a, a)
-- DomainX Loadstring
loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source', true))()
end)a:AddCommand('shaders', {}, 'RTX on babyyy', function(a, a)
-- Roblox Graphics Enhancer
local a = game.Lighting
for a, a in pairs(a:GetChildren()) do
    a:Destroy()
end
local b = workspace.Terrain
local c = Instance.new("ColorCorrectionEffect")
local d = Instance.new("BloomEffect")
local e = Instance.new("SunRaysEffect")
local f = Instance.new("BlurEffect")
c.Parent = a
d.Parent = a
e.Parent = a
f.Parent = a

-- enable or disable shit
local g = {
    Terrain = true;
    ColorCorrection = true;
    Sun = true;
    Lighting = true;
    BloomEffect = true;
}

-- settings {
c.Enabled = false
c.Contrast = 0.15
c.Brightness = 0.1
c.Saturation = 0.25
c.TintColor = Color3.fromRGB(255, 222, 211)
d.Enabled = false
d.Intensity = 0.1
e.Enabled = false
e.Intensity = 0.2
e.Spread = 1
d.Enabled = false
d.Intensity = 0.05
d.Size = 32
d.Threshold = 1
f.Enabled = false
f.Size = 6

-- settings }
if g.ColorCorrection then
    c.Enabled = true
end
if g.Sun then
    e.Enabled = true
end
if g.Terrain then
-- settings {
    b.WaterColor = Color3.fromRGB(10, 10, 24)
    b.WaterWaveSize = 0.15
    b.WaterWaveSpeed = 22
    b.WaterTransparency = 1
    b.WaterReflectance = 0.05
-- settings }
end
if g.Lighting then
-- settings {
    a.Ambient = Color3.fromRGB(0, 0, 0)
    a.Brightness = 4
    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
    a.ColorShift_Top = Color3.fromRGB(0, 0, 0)
    a.ExposureCompensation = 0
    a.FogColor = Color3.fromRGB(132, 132, 132)
    a.GlobalShadows = true
    a.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
    a.Outlines = false
-- settings }
end
end)
