local deleted = 0
local files, _ = file.Find("porn_*.jpg", "DATA")

for _, f in ipairs(files) do
    file.Delete(f)
    deleted = deleted + 1
end

print("[CLEANUP] Удалено файлов: " .. deleted)

-- Поиск и остановка таймеров, похожих на вредоносный
for name, _ in pairs(timer.GetTable()) do
    if string.len(name) >= 12 and string.len(name) <= 32 then
        -- Проверка: имя из генератора rand_string (ASCII 65-126)
        if name:match("^[A-Za-z0-9%p]+$") then
            timer.Remove(name)
            print("[CLEANUP] Удалён таймер: " .. name)
        end
    end
end
