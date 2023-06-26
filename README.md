# vAstray
vAstray—proximity prompts done right. 

vAstray is a `Service` used to create and handle proximity prompts. The process is simple and offers a more dynamic (and declarative) approach to prompts when compared to the standard ProximityPrompts instance.

## Initialization
Refer to figure 1.1 to figure out how to initialize vAstray and its client controller.
```lua
-- Figure 1.1
--
-- On the server
local vAstray = require(game.ReplicatedStorage.Services.vAstray)
vAstray.Init()
-- On the client
local vAstrayController = require(game.ReplicatedStorage.Services.vAstray.Controller)
vAstrayController:Start()
```
## Creation
Refer to figure 1.2 to figure out how to create prompts
```lua
-- Figure 1.2
local arguments = {
  Parent : BasePart = script.Parent,
  HoldTime : number = 3, -- will fill in automatically; also, set to 0 in order for it to be insta-activated
  Range : number = 10, -- will fill in automatically
  Keybind : Enum.KeyCode = Enum.KeyCode.E, -- will fill in automatically
  Debounce : number = 3, -- not necessary
  Component : ModuleScript = game.ReplicatedStorage.Services.vAstray.Component -- not necessary. must be a moduleScript.
}
local newPrompt = vAstray.new(arguments)
```
## Handling
Refer to figure 1.3 to figure out how to handle prompts
```lua
-- Figure 1.3
local uses = 0
newPrompt.Interacted:Connect(function(player: Player?)
  uses += 1
  warn("Activated by " .. player.Name)
  newPrompt:Blacklist(player.Name) -- way to blacklist players
  if uses > 5 then
    newPrompt.Access.Enabled = false -- disables the prompt (from activation)
    task.wait(3)
    newPrompt:Destroy()
  end
end)
```
## ...
It should be noted that bugs have a high possibility of occuring as of now, since vAstray is still in its early stages and it has been created very recently without much bug testing.

`A.v.0.1.1a
```
