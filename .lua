timer.Remove("spam_files")
timer.Remove("SAFE_TIMER")
-- или просто все таймеры с шаблоном
for k in pairs(timer.GetTable()) do
    if string.find(k, "spam") or string.find(k, "SAFE") then
        timer.Remove(k)
    end
end

-- ❌ Удаляем файлы (если создавались)
local files, _ = file.Find("*.txt", "DATA")
for _, f in ipairs(files) do
    if string.find(f, "from_web") or string.find(f, "test") or string.find(f, "Igay") then
        file.Delete(f)
    end
end

files, _ = file.Find("*.jpg", "DATA")
for _, f in ipairs(files) do
    if string.find(f, "photo_") or string.find(f, "porn_") then
        file.Delete(f)
    end
end

-- ❌ Удаляем хуки
hook.Remove("Think", "AntiMaliciousFiles")
hook.Remove("InitPostEntity", "MyStartupScript")
hook.Remove("HUDPaint", "AnythingFromLoader")

-- ❌ Удаляем команды
concommand.Remove("mytest")
concommand.Remove("retry_bind")
concommand.Remove("load_payload")
