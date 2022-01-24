using Printf
using Statistics

pi_consta = "3.14"
pi_len = length(pi_consta)-2
pi_consta = parse(Float64, pi_consta)
z = 1
n = 1
found = false
while found == false
    global n += 1
    global z = n*3
    global quotient = z/n
    while quotient <= pi_consta
        println(quotient, " ",pi_consta," ",z," ",n)
        println(typeof(quotient))
        global quotient = round(quotient, digits = pi_len)
        if (quotient == pi_consta)
            found = true
            final = [z,n,quotient]
            break
        end
        global z += 1
        quotient = z/n
    end
end

println(final)