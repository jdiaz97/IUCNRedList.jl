include("resources.jl")
include("token.jl")
include("species.jl")

## Main Functions
"""
Check what version of the IUCN Red List is driving the API:
"""
function version()
    query = "/api/v3/version"
    return toquery(query)
end

"""
Get a list of countries and the isocodes.
"""
function countries()
    query = "/api/v3/country/list?token="*token
    return toquery(query)
end

"""
Get a list of regions
"""
function regions()
    query = "/api/v3/region/list?token="*token
    return toquery(query)
end

"""
Species threat information, either by species ID or species name \n
Please refer to the Threat classification scheme to learn more.
"""
function threats(name::String)
    query = "/api/v3/threats/species/name/"*name*"?token="*token
    return toquery(query)
end

function threats(name::String,region::String)
    query = "/api/v3/threats/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function threats(id::Int64)
    id = String(id)
    query = "/api/v3/threats/species/id/"*id*"?token="*token
    return toquery(query)
end

function threats(id::Int64,region::String)
    id = String(id)
    query = "/api/v3/threats/species/id/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

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

"""
Species habitat information, either by species ID or species name \n 
Please refer to the Habitat classification scheme to learn more
"""
function habitats(name::String)
    query = "/api/v3/habitats/species/name/"*name*"?token="*token
    return toquery(query)
end

function habitats(name::String,region::String)
    query = "/api/v3/habitats/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function habitats(id::Int64)
    id = String(id)
    query = "/api/v3/habitats/species/id/"*id*"?token="*token
    return toquery(query)
end

function habitats(id::Int64,region::String)
    id = String(id)
    query = "/api/v3/habitats/species/id/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

