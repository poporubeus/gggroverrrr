st = []

i = 125
while i > 0
    Object = i%2
    push!(st, Object) 
    global i = div(i, 2)

end 


println(reverse(st))