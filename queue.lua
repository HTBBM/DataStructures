local header = "Calegare"
local tail = {}

local function queueIsEmpty()
    if header == nil then
        return true
    end
end


local function enqueue(item)
    if not header then
        header = item
        print(item .. " go to header")
    else
        table.insert(tail,item)
        print(item .. " go to last position in tail")
    end

end

local function dequeue()
    if header then
        print("Exit: " .. header)
        header = tail[1]
        table.remove(tail, 1)
    else
        print("header position is empty")
    end

end

local function searchInQueue(item)

    if header == item then
        return print(item .. " stay first position on the queue")
    end

    for i, x in pairs(tail) do
        if x == item then
            return print(item .. " stay in "..(i+1).." position on the queue")
        end
    end


    print(item .. " Not have found in the queue")

end

print(queueIsEmpty())
enqueue("Bruno")
searchInQueue("Bruno")
dequeue()
dequeue()
dequeue()
print(queueIsEmpty())