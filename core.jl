include("resources.jl")

## Main Functions
"""
Check what version of the IUCN Red List is driving the API:
"""
function version()
    query = "/api/v3/version"
    return toprocess(query, true)
end

"""
Get a list of countries and the isocodes.
"""
function countries(;dict::Bool=false)
    query = "/api/v3/country/list?token="*token
    return toprocess(query, dict)
end

"""
Get a list of species by country isocode. 
If you don't have an isocode, check countries()
"""
function species_by_country(isocode::String;dict::Bool=false)
    query = "/api/v3/country/getspecies/"*isocode*"?token="*token
    return toprocess(query, dict)
end

"""
Get a list of regions
"""
function regions(;dict::Bool=false)
    query = "/api/v3/region/list?token="*token
    return toprocess(query, dict)
end
