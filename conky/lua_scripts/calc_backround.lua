
function ToInteger(number)
    return math.floor(tonumber(number) or error("Could not cast '" .. tostring(number) .. "' to number.'"))
end


function conky_calc_days()
	local default = os.time()
	local b_day = os.time{year = 1995, month = 01, day = 01}
	local diff = default - b_day
	local t = ToInteger(diff/60/60/24)
	return t
end



--function conky_main()
--	conky_calc_days()

--end
