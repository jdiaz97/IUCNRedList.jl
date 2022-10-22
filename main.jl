include("species.jl")
include("core.jl")
include("token.jl")

function test()
    version()
    countries()
    species_by_country("CL")
    regions()
    ## if you got here, then:
    print("Test successful")    
end

test()
## all running perfectly


