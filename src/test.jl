include("iucn.jl")
include("token.jl") ## token = "YOUR TOKEN"

function test()
    # core
    version()
    countries()
    species_by_country("CL")
    regions()
    # species
    species_count("europe")
    species_citation("Quercus robur","europe")
    species_narrative("Luma apiculata")
    ## if you got here, then:
    print("Test successful")    
end

res = species_narrative("Quercus robur")
res = melt_dict(res)

DataFrame(res)