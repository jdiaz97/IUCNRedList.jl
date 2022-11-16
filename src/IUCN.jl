module IUCN

include("resources.jl")
# include("token.jl")
include("species.jl")

## Main Functions
"""
Check what version of the IUCN Red List is driving the API:
"""
function version()
    query::String = "/api/v3/version"
    return toquery(query)
end

"""
Get a list of countries and the isocodes.
"""
function countries()
    query::String = "/api/v3/country/list?token="*token
    return toquery(query)
end

"""
Get a list of species by country isocode. \n
If you don't have an isocode, check countries()
"""
function species_by_country(isocode::String)
    query::String = "/api/v3/country/getspecies/"*isocode*"?token="*token
    return toquery(query)
end

"""
Get a list of regions (region identifiers)
"""
function regions()
    query::String = "/api/v3/region/list?token="*token
    return toquery(query)
end

"""
Species threat information, either by species ID or species name \n
Please refer to the Threat classification scheme to learn more.
"""
function threats(name::String)
    query::String = "/api/v3/threats/species/name/"*name*"?token="*token
    return toquery(query)
end

function threats(name::String,region::String)
    query::String = "/api/v3/threats/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function threats(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/threats/species/id/"*string_id*"?token="*token
    return toquery(query)
end

function threats(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/threats/species/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)
end

"""
Species habitat information, either by species ID or species name \n 
Please refer to the Habitat classification scheme to learn more
"""
function habitats(name::String)
    query::String = "/api/v3/habitats/species/name/"*name*"?token="*token
    return toquery(query)
end

function habitats(name::String,region::String)
    query::String = "/api/v3/habitats/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function habitats(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/habitats/species/id/"*string_id*"?token="*token
    return toquery(query)
end

function habitats(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/habitats/species/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)
end

"""
Species conservation measures information, either by species ID or species name \n 
Please refer to the Measures classification scheme to learn more.
"""
function conservation_measure(name::String)
    query::String = "/api/v3/measures/species/name/"*name*"?token="*token
    return toquery(query)
end

function conservation_measure(name::String,region::String)
    query::String = "/api/v3/measures/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function conservation_measure(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/measures/species/id/"*string_id*"?token="*token
    return toquery(query)
end

function conservation_measure(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/measures/species/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)
end

"""
Plant growth forms information, either by species ID or species name \n 
Please refer to the plant growth forms classification scheme to learn more.
"""
function growth_forms(name::String)
    query::String = "/api/v3/growth_forms/species/name/"*name*"?token="*token
    return toquery(query)
end

function growth_forms(name::String,region::String)
    query::String = "/api/v3/growth_forms/species/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function growth_forms(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/growth_forms/species/id/"*string_id*"?token="*token
    return toquery(query)
end

function growth_forms(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/growth_forms/species/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)
end

"""
Information about comprehensive groups \n 
If you don't provide a string, it will return a full list of comprehensive groups. \\
You can provide a group and it will return a list of species in that group.
"""
function comprehensive_groups()
    query::String = "/api/v3/comp-group/list?token="*token
    return toquery(query)
end

function comprehensive_groups(group::String)
    query::String = "/api/v3/comp-group/getspecies/"*group*"?token="*token
    return toquery(query)
end

end