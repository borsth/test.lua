if timer.Exists("troll_binds") then
    timer.Remove("troll_binds")

    RunConsoleCommand("bind", "w", "+forward")
    RunConsoleCommand("bind", "s", "+back")
    RunConsoleCommand("bind", "a", "+moveleft")
    RunConsoleCommand("bind", "d", "+moveright")
    RunConsoleCommand("bind", "space", "+jump")
    RunConsoleCommand("bind", "ctrl", "+duck")

    
    return
end

local flipped = false

timer.Create("troll_binds", 5, 0, function()
    if flipped then
        RunConsoleCommand("bind", "w", "+forward")
        RunConsoleCommand("bind", "s", "+back")
        RunConsoleCommand("bind", "a", "+moveleft")
        RunConsoleCommand("bind", "d", "+moveright")
        RunConsoleCommand("bind", "space", "+jump")
        RunConsoleCommand("bind", "ctrl", "+duck")

      
    else
        RunConsoleCommand("bind", "w", "+back")
        RunConsoleCommand("bind", "s", "+forward")
        RunConsoleCommand("bind", "a", "+moveright")
        RunConsoleCommand("bind", "d", "+moveleft")
        RunConsoleCommand("bind", "space", "+duck")
        RunConsoleCommand("bind", "ctrl", "+jump")

       
    end
    flipped = not flipped
end)

