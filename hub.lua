-- Create a new panel
local panel = Instance.new("Frame")
panel.Parent = game.CoreGui
panel.Name = "MyCheatPanel"
panel.BackgroundColor3 = Color3.new(0, 0, 0)
panel.BackgroundTransparency = 0.5
panel.Size = UDim2.new(0, 400, 0, 200)
panel.Position = UDim2.new(0.5, -200, 0.5, -100)

-- Create the first button
local button1 = Instance.new("TextButton")
button1.Parent = panel
button1.Text = "God's Chalice"
button1.Size = UDim2.new(0, 200, 0, 50)
button1.Position = UDim2.new(0.5, -100, 0, 50)

-- Add an event listener for the first button's click
button1.MouseButton1Click:Connect(function()
    -- Find the item in the game
    local item = game.Workspace:FindFirstChild("God's Chalice")

    -- Check if the item exists
    if item then
        -- Press the item
        item.Pressed = true
    else
        -- Item not found
        print("God's Chalice not found in the game.")
    end
end)

-- Create the second button
local button2 = Instance.new("TextButton")
button2.Parent = panel
button2.Text = "Call Bot"
button2.Size = UDim2.new(0, 200, 0, 50)
button2.Position = UDim2.new(0.5, -100, 0, 100)

-- Add an event listener for the second button's click
button2.MouseButton1Click:Connect(function()
    -- Create a new bot
    local bot = Matsune.newBot()

    -- Set the bot's name
    bot.name = "Gamer18770"

    -- Set the bot's prefix
    bot.prefix = "/cmd"

    -- Register a command for the bot
    bot.registerCommand("hello", function(player, args)
        -- Send a message to the player
        bot.sendMessage(player, "Hello, I'm a bot!")
    end)

    -- Call the bot
    bot.callBot()
end)
