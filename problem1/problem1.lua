function sum_multiples(n, ms)
    local enumed = {}
    for mk, mv in pairs(ms) do
	    local k = mv
        while k < n do
            if enumed[k] == nil then enumed[k] = true end
            k = k + mv
        end
    end
    local s = 0
    for ek, ev in pairs(enumed) do
	    s = s + ek
    end
    return s
end

print(sum_multiples(1000, {3, 5}))