# vAstray
vAstray is a `Service` used to create and handle proximity prompts. The process is simple and offers a more dynamic (and declarative) approach to prompts when compared to the standard ProximityPrompts instance. Also, vAstray supports flexibility; for instance, it is possible for you to create your own UI component, which you can find the guide to in this documentation.

Nevertheless, in order for you to understand how vAstray functions, it is necessary you read the documentation. Additionally, please note that this documentation is only for versions that proceed the September Rewrite.

## Starting

Before starting, you want to retrieve all the packages necessary: Waves, Charcoal, Worktable, Vespera, and Fusion. You can find all of these (except Fusion, you can find it elsewhere) on my Github profile (@Reflinders).

To start vAstray, download the vAstray module and place it anywhere in ReplicatedStorage. Then, you want to fire the `Start` function of vAstray. In most cases, this should work normally.

```lua
local vAstray = require(somewhereInReplicatedStorage)
vAstray.Start()
```

Now, that's only one of the steps; you'll have to start it on the client as well. On the client, require the "Client" module under vAstray, and then do the same procedure mentioned previously.

```lua
local Client = require(vAstrayModule.Client)
Client.Start()
```

## Prompts

Prompts are created through `vAstray.Create`; alternatively, you could use `vAstray.new`. One argument is required and it is a table; and the only key-value required is "Parent." Parent must either be a BasePart, Model (with a PrimaryPart), a mixed table (with key "PrimaryPart"), or an Attachment. Any flaws within the arguments given will be recognized by vAstray and will throw an error, so be cautious. 

The first argument, referred to as "Genesis," has several properties (as mentioned previously, only `Parent` is actually required); there is Time, representing the time used to hold the prompt down; Range, which represents the maximum distance one must be to see and activate a prompt; Debounce, which, in a nutshell, is the cooldown; Keybind, which is self-explanatory; Behavior, which changes how the prompt behaves in the prompt-scape; and Interface, which is a table that holds the properties "Component," "Title," and "Description."

The advanced properties of Genesis are `Behavior` and `Interface`. `Behavior` is a string (categorized under `vAstray.Behaviors.Interaction`) which represents how the prompt will behave in the field of visible prompts. If the behavior of a prompt is set to `OnHover`, the prompy will only be visible when the person is in range and is hovering the prompt. On the other hand, if the behavior of the prompt is `Closest`, it will only be visible if the prompt is the closest prompt of it's KeyGroup (group organized by Keybinds). If the behavior is set to `NoOverride`, then it will default to whatever the client settings are (the module named "Settings" under vAstray). It may seem confusing at first, but you'll understand once you play around with it. `Interface` is just a table used to add details to the prompt. The properties "Title" and "Description" are details that will be added to the UI of the prompt. "Component" is the module which is used for creating and handling the UI of the Interface (Refer to later portion of documentation "Interface Component").

Prompts have 5 fundamental properties: Ref, which is the ID of the prompt, short for Reference; Parent, which is the parent of the prompt, always represented by a BasePart or Attachement; Client, which encompasses the client-related properties of the prompt, like Time, Range, Debounce, and the Interface Properties; Class, represented by "vPrompt"; and Access, which represents the levels of access that players have, like whether or not the prompt is active/available and a blacklist.

```lua
local newPrompt = vAstray.Create {
  Parent = workspace.Part,

  Time = 5,
  Range = 8,
  Debounce = 1;

  Keybind = Enum.KeyCode.E,
  Interface = {
    Component = ReplicatedStorage.CustomUIComponent,
    Title = 'Interact',
    Description = 'Destroy Part'
  }
}
```

### Events

Prompts have 1--3 events, depending on what end they're located in. Server prompts have 3: "Interacted," "Held," and "Released." Client prompts only have the event "Interacted."

The event `Interacted` is only fired when the player fully charges the prompt and releases. `Released` is fired when a player charges the prompt partially and releases. `Held` is fired when a player holds a prompt down.
All of these events' first parameter is the respected player, however, `Released` has an additional parameter that represents the progress of the charge as a float.

```lua
newPrompt.Interacted:Connect(function()
  workspace.Part:Destroy() -- This also destroys the prompt because prompts have dependency on their parent part
end)
```

### Guidelines

Prompts have a few guidelines that are necessary for proper functioning. One of these guidelines, for example, is not changing read-only properties. Attempting to change these properties will result in an error or the nonfunctioning of a prompt. These properties are `Keybind`, `Global`, `Parent`, `Association`, `Behavior`, `Component`, "Enabled" of `Access`, and "Reprise" of `Client`. 

You're probably wondering: why can't I change these properties? Well, most of these properties are meant to be constants, as in they should not be changed after creation; however, the properties "Parent" and "Enabled" CAN be changed, just not directly: 

To change the parent, follow this procedure:

```lua
newPrompt[vAstray.ToParent] = NewParent
```

To change the activity (`Enabled`) of a prompt, follow this procedure:

```lua
newPrompt:Active(boolean)
```

### Blacklisting
To blacklist a player, do:
```lua
newPrompt:Blacklist(Player, true)
```

To check if a player is blacklisted, do:
```lua
newPrompt:IsBlacklist(Player)
```

### Int-Component
A.K.A, Interface Component

The Interface Component is the handler for the UI of a Prompt. When giving the component to vAstray, it should NEVER be a table or any other value than a ModuleScript. Within the module, there should exist the properties/functions/methods `new` (function), `set` (method), `IsA` (function), `setVisible` (method), `setTitleColor` (method), `setProgress` (method), and `activated` (method). When a prompt associated with the given component is created, the function `new` of the module will be fired with the arguments Parent (Instance), Adornee (Instance), Keybind (Enum.KeyCode), and Visual (Table: {Title: string, Description: string}).

The table returned by `new` should not inherit any properties or methods from Component. Instead, just leave the methods to exist; vAstray will handle everything else. Also, the table must have the properties `Base`, which represents the BillboardGui created, and the property `Visible`, which represents the visibility of the prompt. 

Here's a general format for custom components:

```lua
local UI = {}

function UI.new(Parent, Adornee, Keybind, Visual)
  -- create a new ui object
  return {
    Base = whatever,
    Visible = false
  }
end

function UI.IsA(Class)
  return class == 'vAstrayComponent'
end

function UI:set(Parent, Adornee)
  -- set the new parent and adornee
end

function UI:setVisible(BeVisible)
  -- set visiblity to whatever is passed
end

function UI:setTitleColor(Color)
  -- set title color (and any other colors you want to change)
end

function UI:setProgress(Portion --[[represented as a float!]], Instant: boolean)
  -- set the progress
end

function UI.activated(self: Prompt, Callback)
   -- [[Generally, the function should just be an exact copy of the code below]]
  Component.setVisible(self.Interface, true)
	task.wait(self.Debounce or 2.5); Callback()
end

return UI
```

To set the default component, you must call `vAstray.SetComponent`:
```lua
vAstray.SetComponent(ModuleScript)
vAstray.SetComponent(nil)
-- Setting the component to nil will result in the default component reverting back to the standard one
-- Do note that this will only work on prompts created AFTER setting the component; the component of pre-existing prompts cannot be changed!
```

## Listeners
On the client, it is possible to listen for the events `Shown` and `Hidden` of certain prompts. Refer to the following figure:

```lua
local Client = require(vAstrayModule.Client)

--[[
  Note that the first argument can either be the parent of the prompt or the ref.
  Generally, it is much easier to create a listener from the parent rather than the ref, because there is no direct way of retrieving the ref on the client.
  Also, note that this function yields, as if the prompt is not found on the client, it will wait until it exists on the client's end.
]]
Client.Listen(ParentOfPromptOrTheRef, "Shown", function()
  print("It was shown")
end)
Client.Listen(ParentOfPromptOrTheRef, "Hidden", function()
  print("It was hidden")
end)
```

## Mobile-Compatibility
vAstray now has automatic mobile compatibility. All that is necessary to ensure compatibility is the "fluidMobile" module, on my (@Reflinders) profile.

# ...

## Regarding The Rewrite
(September)

The previous version of vAstray had a multitude of typechecking errors, performance issues, and lack of attention to network problems.
Now, vAstray works off of the networking service "Vespera," and overall, the vAstray paradigm is much cleaner and attentive to the code environment.

Do note that this version of vAstray is very experimental. It is newly released, and time is required to catch evident bugs.

## -

Documentation written on 9/9/23

