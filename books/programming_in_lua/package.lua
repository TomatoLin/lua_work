-- 关键字 

function Set(list)
	local set = {}
	for _,l in ipairs(list) do set[l] = true end
	return set
end

reserved = Set{"while", "end", "function", "local"}


