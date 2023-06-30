--/ ... Easy-Mobile module
-- made to easily add compatibility
--
-- Reflinders, fluidMobile @ 2023
--/ ...
local fluidMobile = {}; fluidMobile.__index = fluidMobile
fluidMobile.Packages = {
	Waves = require(game.ReplicatedStorage:FindFirstChild('Waves', true)),
	Charcoal = require(game.ReplicatedStorage:FindFirstChild('Charcoal', true))
}
--
local twService = game:GetService('TweenService')
local fusion = require(game.ReplicatedStorage:FindFirstChild('Fusion', true))
local New, Children = fusion.New, fusion.Children
--/ ...
function fluidMobile.Initialize()
	if fluidMobile.ui then
		return
	end
	fluidMobile.ui = New "ScreenGui" {
		Name = "fluidMobile",
		IgnoreGuiInset = true,
		ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		Parent = game:GetService('Players').LocalPlayer.PlayerGui,

		[Children] = {
			New "Frame" {
				Name = "Front",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.fromScale(0.704, 0.48),
				Size = UDim2.fromScale(0.295, 0.521),

				[Children] = {
					New "Frame" {
						Name = "Control1",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.0212, 0.63),
						Size = UDim2.fromScale(0.312, 0.345),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control2",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.365, 0.658),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control3",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.0476, 0.322),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control6",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.0529, 0.0198),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control4",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.365, 0.322),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control7",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.37, 0.0198),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control5",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.683, 0.322),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "Frame" {
						Name = "Control8",
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 0.4,
						Position = UDim2.fromScale(0.688, 0.0198),
						Size = UDim2.fromScale(0.257, 0.282),
						Visible = false,

						[Children] = {
							New "UICorner" {
								Name = "corners",
								CornerRadius = UDim.new(0, 54),
							},

							New "UIStroke" {
								Name = "stroke",
								Color = Color3.fromRGB(184, 184, 184),
								Thickness = 0.75,
							},

							New "TextButton" {
								Name = "Bind",
								FontFace = Font.new(
									"rbxasset://fonts/families/GothamSSm.json",
									Enum.FontWeight.Bold,
									Enum.FontStyle.Normal
								),
								Text = "",
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextScaled = true,
								TextSize = 29,
								TextWrapped = true,
								BackgroundColor3 = Color3.fromRGB(255, 255, 255),
								BackgroundTransparency = 1,
								Position = UDim2.fromScale(0, 0.339),
								Size = UDim2.fromScale(1, 0.322),

								[Children] = {
									New "UITextSizeConstraint" {
										Name = "textScale",
										MaxTextSize = 29,
									},
								}
							},
						}
					},

					New "UIAspectRatioConstraint" {
						Name = "constraint",
						AspectRatio = 1.07,
					},
				}
			},
		}
	}
end
--
function fluidMobile.__newImage()
	return New "ImageLabel" {
		Name = "img",
		Image = "",
		ImageTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.fromScale(0.155, 0.15),
		Size = UDim2.fromScale(0.689, 0.689),
	}
end
function fluidMobile.__newBindButton()
	return New "TextButton" {
		Name = "Bind",
		FontFace = Font.new(
			"rbxasset://fonts/families/GothamSSm.json",
			Enum.FontWeight.Bold,
			Enum.FontStyle.Normal
		),
		Text = "",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,
		TextSize = 29,
		TextWrapped = true,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		Position = UDim2.fromScale(0, 0.339),
		Size = UDim2.fromScale(1, 0.322),

		[Children] = {
			New "UITextSizeConstraint" {
				Name = "textScale",
				MaxTextSize = 29,
			},
		}
	}
end
function fluidMobile.__rawButton()
	return New "TextButton" {
		Name = "Button",
		FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json"),
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 1,
		Modal = true,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0.99,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),

		[Children] = {
			New "UICorner" {
				Name = "corners",
				CornerRadius = UDim.new(0, 54),
			},
		}
	}
end
--/ ...
function fluidMobile:Platform()
	local uis = game:GetService('UserInputService')
	if uis.TouchEnabled then
		if (not uis.KeyboardEnabled) then
			return 'mobile'
		end
	end 
	if uis:GetLastInputType() == Enum.UserInputType.Gyro then
		return 'mobile'
	end
	return 'computer'
end
function fluidMobile:isMobile()
	return (self:Platform() == 'mobile')
end
--/ ...
local __findFirstBind = function()
	local num = 1; while num <= 8 do
		local button = fluidMobile.ui.Front:WaitForChild('Control' .. tostring(num))
		local isntVisible = (not button.Visible); if isntVisible then
			return button
		end
		num += 1
	end
end
--
export type newButtonData = {
	Text : string?|nil,
	Image : string?|nil,
	DestroyOnDeath : boolean?,
}
export type fluidButton = {
	InterfaceBind : Frame,
	Held : {}; Released : {},
	DestroyOnDeath : boolean?
} & typeof(setmetatable({}, fluidMobile))
-- # Constructor 
function fluidMobile:Destroy()
	self.InterfaceBind.Visible = false
	self.__cleaner:Destroy()
end
function fluidMobile.newButton(buttonData : newButtonData?) : fluidButton
	local character = game:GetService('Players').LocalPlayer.Character
	local bind = __findFirstBind()
	if bind then
		local newButton = setmetatable({}, fluidMobile)
		newButton.InterfaceBind = bind; bind.Visible = true
		newButton.__cleaner = fluidMobile.Packages.Charcoal.new()
		--/ ...
		newButton.Held = fluidMobile.Packages.Waves.new()
		newButton.Released = fluidMobile.Packages.Waves.new()
		--
		newButton.DestroyOnDeath = buttonData.DestroyOnDeath or true
		if newButton.DestroyOnDeath then
			local humanoid : Humanoid? = character:FindFirstChild('Humanoid')
			if humanoid then
				newButton.__cleaner:Add(humanoid.Died:Connect(function()
					if newButton.DestroyOnDeath then
						newButton:Destroy()
					end
				end))
			end
		end
		newButton.Held:Connect(function()
			twService:Create(bind, TweenInfo.new(.45, Enum.EasingStyle.Quint), {
				BackgroundColor3 = Color3.new(0.690196, 0.690196, 0.690196)
			}):Play()
		end)
		newButton.Released:Connect(function()
			twService:Create(bind, TweenInfo.new(.45, Enum.EasingStyle.Quad), {
				BackgroundColor3 = Color3.new(0, 0, 0)
			}):Play()
		end)

		--/ ...
		if buttonData.Image then
			local new = fluidMobile.__newImage()
			new.Image = buttonData.Image
			new.Parent = bind; newButton.__cleaner:Add(new)
		else
			local foundButton = bind:FindFirstChild('Bind')
			if foundButton then
				foundButton.Text = buttonData.Text
				newButton.__cleaner:Add(foundButton)
			else
				local new = fluidMobile.__newBindButton()
				new.Text = buttonData.Text
				new.Parent = bind; newButton.__cleaner:Add(new)
			end
		end
		--/ ...
		local button = fluidMobile.__rawButton(); button.Parent = bind
		newButton.__isHolding = false
		newButton.__cleaner:Add(
			button.MouseButton1Up:Connect(function()
				if (newButton.__isHolding) then
					newButton.__isHolding = false
					newButton.Released:Fire()
				end
			end), 
			button.MouseLeave:Connect(function()
				if (newButton.__isHolding) then
					newButton.__isHolding = false
					newButton.Released:Fire()
				end
			end),
			button.MouseButton1Down:Connect(function()
				newButton.__isHolding = true
				newButton.Held:Fire()
			end)
		)

		--/ ...
		newButton.__cleaner:Add(newButton.Held, newButton.Released)
		return newButton
	else
		warn('fluidMobile : Attempt to create new bind without enough space. ' .. 
			'Too many binds are in use; the max is 8! ... Error @ ' .. debug.traceback())
	end
end
--/ ...
return fluidMobile