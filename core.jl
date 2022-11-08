include("resources.jl")

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

species_by_country()