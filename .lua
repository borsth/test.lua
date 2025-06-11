local deleted = 0

for i = 1, 50000 do
    local fname = "porn_" .. i .. ".jpg"
    if file.Exists(fname, "DATA") then
        file.Delete(fname)
        deleted = deleted + 1
    end
end

chat.AddText(Color(0, 255, 0), "[CLEANUP] Удалено файлов: " .. deleted)
