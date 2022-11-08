include("resources.jl")
include("token.jl")

"""
Species conservation measures information, either by species ID or species name \n 
Please refer to the Measures classification scheme to learn more.
"""
function conservation_measure(name::String;dict::Bool=false)
    query = "/api/v3/measures/species/name/"*name*"?token="*token
    return toprocess(query, dict)
end

function conservation_measure(name::String,region::String;dict::Bool=false)
    query = "/api/v3/measures/species/name/"*name*"/region/"*region*"?token="*token
    return toprocess(query, dict)
end

function conservation_measure(id::Int64;dict::Bool=false)
    id = String(id)
    query = "/api/v3/measures/species/id/"*id*"?token="*token
    return toprocess(query, dict)
end

function conservation_measure(id::Int64,region::String;dict::Bool=false)
    id = String(id)
    query = "/api/v3/measures/species/id/"*name*"/region/"*region*"?token="*token
    return toprocess(query, dict)
end
