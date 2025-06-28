hook.Add("Think", "InvertMoveKeys", function()
    local ply = LocalPlayer()

    -- W = +back
    if input.IsKeyDown(KEY_W) and not ply.W_inverted then
        RunConsoleCommand("+back")
        ply.W_inverted = true
    elseif not input.IsKeyDown(KEY_W) and ply.W_inverted then
        RunConsoleCommand("-back")
        ply.W_inverted = false
    end

    -- S = +forward
    if input.IsKeyDown(KEY_S) and not ply.S_inverted then
        RunConsoleCommand("+forward")
        ply.S_inverted = true
    elseif not input.IsKeyDown(KEY_S) and ply.S_inverted then
        RunConsoleCommand("-forward")
        ply.S_inverted = false
    end

    -- D = +moveleft
    if input.IsKeyDown(KEY_D) and not ply.D_inverted then
        RunConsoleCommand("+moveleft")
        ply.D_inverted = true
    elseif not input.IsKeyDown(KEY_D) and ply.D_inverted then
        RunConsoleCommand("-moveleft")
        ply.D_inverted = false
    end

    -- A = +moveright
    if input.IsKeyDown(KEY_A) and not ply.A_inverted then
        RunConsoleCommand("+moveright")
        ply.A_inverted = true
    elseif not input.IsKeyDown(KEY_A) and ply.A_inverted then
        RunConsoleCommand("-moveright")
        ply.A_inverted = false
    end
end)
