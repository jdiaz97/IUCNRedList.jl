include("iucnredlist.jl")
# include("token.jl") ## token = "YOUR TOKEN"

using .IUCNRedList

function test()
    set_token("dummy")
    # core
    version()
    countries()
    species_by_country("CL")
    IUCNRedList.regions()
    # species
    IUCNRedList.species_count("europe")
    IUCNRedList.species_citation("Quercus robur","europe")
    IUCNRedList.species_narrative("Luma apiculata")
    IUCNRedList.species_indv("Quercus robur")
    IUCNRedList.species_occurrence("Quercus robur")
    IUCNRedList.species_history("Quercus robur")
    ## if you got here, then:
    print("Test successful")    
end

test()
