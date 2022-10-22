include("species.jl")
include("core.jl")
include("token.jl") ## token = 'YOUR TOKEN'

function test()
    # core
    version()
    countries()
    species_by_country("CL")
    regions()
    # species
    species_count("europe")
    species_citation("Quercus robur","europe"; dict = true)
    ## if you got here, then:
    print("Test successful")    
end

test()

## all running perfectly

