include("resources.jl")
include("token.jl")

## species
"""
Total Species count.
If region not provided, it will return a global assesment
You have to use the correct region identifier, check regions() for that.
"""
function species_count(region::String="")
    if region == ""
        query = "/api/v3/speciescount?token="*token
    else
        query = "/api/v3/speciescount/region/"*region*"?token="*token
    end
    return toprocess(query, true)
end

species_count("europe")

function species_citation(name::String,region::String="";dict::Bool=false)
    if region == ""
        query = "/api/v3/species/citation/"*name*"?token="*token
    else
        query = "/api/v3/species/citation/"*name*"/region/"*region*"?token="*token
    end
    return toprocess(query, dict)    
end

species_citation("Quercus robur","europe"; dict = true)
