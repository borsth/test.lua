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
