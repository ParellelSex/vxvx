game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
repeat wait() until game:GetService('Players').LocalPlayer
repeat wait() until game:GetService('Players').LocalPlayer.Character
repeat wait() until game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
local user = 'ParellelSex'
local branch = 'vxvx'
local link = 'https://raw.githubusercontent.com/'

local function GetURL(url)
    local get = '%s/%s/%s/main/%s'
    return game:HttpGet(string.format(get,link,user,branch,url))
end

local plr = game:GetService('Players').LocalPlayer
local char = plr.Character
local file = readfile('vxvx/data/vxvx.json')
local vxvx = game:GetService('HttpService'):JSONDecode(file)
if vxvx['vxvv'] >= vxvx['vxvx'] then
        task.wait()
        for i,v in next, workspace:GetChildren() do
                if v:IsA('Tool') then
                        char:FindFirstChild('Humanoid'):EquipTool(v)
                end
        end
    return
else
     task.wait()
     char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0,9e9,0)
     wait(0.05)
     for i,v in next, plr:WaitForChild('Backpack'):GetChildren() do
        if v:IsA("Tool") then
                v.Parent = char
            repeat task.wait() until v.Parent == char
        end
     end
     for i,v in next, char:GetChildren() do
        if v:IsA("Tool") then
                v.Parent = workspace
        end
     end
     task.wait()
     vxvx['vxvv'] = vxvx['vxvv'] + 1
     writefile('vxvx/data/vxvx.json',game:GetService("HttpService"):JSONEncode(vxvx))
end
syn.queue_on_teleport(GetURL('vxvx.lua'))
repeat
game:GetService('TeleportService'):Teleport(game.PlaceId)    
task.wait()
until nil
