include("resources.jl")

## species
"""
Total Species count.
If region not provided, it will return a global assesment
You have to use the correct region identifier, check regions() for that.
"""
function species_count(;region::String="")
    if region == ""
        query = "/api/v3/speciescount?token="*token
    else
        query = "/api/v3/speciescount/region/"*region*"?token="*token
    end
    return toprocess(query, dict)
end
