local deleted = 0
for i = 1, 50000 do
    local fname = "porn_" .. i .. ".jpg"
    if file.Exists(fname, "DATA") then
        file.Delete(fname)
        deleted = deleted + 1
        print("[CLEANUP] Удалён файл: " .. fname)
    end
end

print("[CLEANUP] Удалено файлов: " .. deleted)

-- Удаление всех таймеров с похожими именами (12-32 символа)
for name, _ in pairs(timer.GetTable()) do
    if string.match(name, "^%w+$") and #name >= 12 and #name <= 32 then
        timer.Remove(name)
        print("[CLEANUP] Удалён таймер: " .. name)
    end
end
