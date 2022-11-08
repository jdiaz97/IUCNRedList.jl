include("resources.jl")
include("token.jl")

"""
Species conservation measures information, either by species ID or species name \n 
Please refer to the Measures classification scheme to learn more.
"""
function conservation_measure(name::String)
    query = "/api/v3/measures/species/name/"*name*"?token="*token
    return toquery(query)
end

function conservation_measure(name::String,region::String)
    query = "/api/v3/measures/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function conservation_measure(id::Int64)
    id = String(id)
    query = "/api/v3/measures/species/id/"*id*"?token="*token
    return toquery(query)
end

function conservation_measure(id::Int64,region::String)
    id = String(id)
    query = "/api/v3/measures/species/id/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

version()
conservation_measure()