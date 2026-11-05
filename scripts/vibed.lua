
local colors = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 170, 0),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 100),
    Color3.fromRGB(0, 150, 255),
    Color3.fromRGB(180, 0, 255)
}

local shapes = {
    Enum.PartType.Block,
    Enum.PartType.Ball,
    Enum.PartType.Cylinder
}

while true do
    local part = Instance.new("Part")

    part.Shape = shapes[math.random(1, #shapes)]
    part.Size = Vector3.new(
        math.random(2, 7),
        math.random(2, 7),
        math.random(2, 7)
    )

    part.Position = Vector3.new(
        math.random(-60, 60),
        math.random(40, 90),
        math.random(-60, 60)
    )

    part.Color = colors[math.random(1, #colors)]
    part.Material = Enum.Material.Neon
    part.Anchored = false
    part.Parent = workspace

    task.wait(0.12)
end
