local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("3D rendering toggle", "Serpent")

  --anti afk loader
  local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       end)

    local Appearance = Window:NewTab("Appearance")
    local AppearanceSection = Appearance:NewSection("Appearance")

    AppearanceSection:NewToggle("No Render", "disables 3D render", function(state)
       if state then
	   if cansetfpscap then
	   	setfpscap(5)
	   end
           game:GetService("RunService"):Set3dRenderingEnabled(false)
       else
	  if cansetfpscap then
	   	setfpscap(1)
	   end
           game:GetService("RunService"):Set3dRenderingEnabled(true)
      end
    end)

    AppearanceSection:NewKeybind("quick reset", "quickly reset character", Enum.KeyCode.PageUp, function()
    game.Players.LocalPlayer.Character.Head:Destroy()
    end)

    AppearanceSection:NewKeybind("Toggle UI", "UI toggle key", Enum.KeyCode.RightBracket, function()
    Library:ToggleUI()
    end)
