-- 一个双端队列的实现

List = {}
function List.new()
	return {first = 0, last = -1}
end

function List.pushleft(list, value)
	local first = list.first - 1
	list.first = first
	list[first] = value
end

function List.pushright(list, value)
	local last = list.last + 1
	list.last = last
	list[last] = value
end


function List.popleft(list)
	local first = list.first
	if first > list.last then error("list is empty") end
	local value = list[first]
	list[first] = nil
	list.first = first + 1
	return value
end

function List.popright(list)
	local last = list.last
	if list.first > last then error("list is empty") end
	local value = list[last]
	list[last] = nil
	list.last = last - 1
	return value
end

lt = List.new()
for i=0,10 do
	List.pushright(lt, i)
end

for i=0,10 do
	print(List.popright(lt))
end
