for name, _ in pairs(timer.GetTable()) do
    -- Можно адаптировать фильтр при желании
    if string.len(name) >= 12 and string.len(name) <= 32 then
        timer.Remove(name)
        print("[CLEANUP] Удалён таймер: " .. name)
    end
end

-- Удалим файлы: перебираем числовые индексы
local deleted = 0
for i = 1, 10000 do
    local fname = "porn_" .. i .. ".jpg"
    if file.Exists(fname, "DATA") then
        file.Delete(fname)
        deleted = deleted + 1
        print("[CLEANUP] Удалён файл: " .. fname)
    end
end
