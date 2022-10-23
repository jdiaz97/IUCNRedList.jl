include("resources.jl")
include("token.jl")

## species
"""
Total Species count. \n
If region not provided, it will return a global assesment \\
You have to use the correct region identifier, check regions() for that. \\
"""
function species_count(region::String="")
    if region == ""
        query = "/api/v3/speciescount?token="*token
    else
        query = "/api/v3/speciescount/region/"*region*"?token="*token
    end
    return toprocess(query, true)
end

"""
Get the citation for a given species assessment. \n
Use scientific name or ID. \\
If region not provided, it will return a global assesment \\
You have to use the correct region identifier, check regions() for that 
"""
function species_citation(name::String,region::String="";dict::Bool=false)
    if region == ""
        query = "/api/v3/species/citation/"*name*"?token="*token
    else
        query = "/api/v3/species/citation/"*name*"/region/"*region*"?token="*token
    end
    return toprocess(query, dict)    
end
function species_citation(id::Int64,region::String="";dict::Bool=false)
    id = string(id)
    if region == ""
        query = "/api/v3/species/citation/id/"*id*"?token="*token
    else
        query = "/api/v3/species/citation/id/"*id*"/region/"*region*"?token="*token
    end
    return toprocess(query, dict)    
end

"""
Get narrative information about individual species. \n
Please be aware that the text contains HTML markup in some places for formatting purposes. \\
Use scientific name or ID. \\
If region not provided, it will return a global assesment \\
You have to use the correct region identifier, check regions() for that
"""
function species_narrative(name::String,region::String="";dict::Bool=false)
    if region == ""
        query = "/api/v3/species/narrative/"*name*"?token="*token
    else
        query = "/api/v3/species/narrative/"*name*"/region/"*region*"?token="*token
    end
    return toprocess(query, dict)    
end

function species_narrative(id::Int64,region::String="";dict::Bool=false)
    id = string(id)
    if region == ""
        query = "/api/v3/species/narrative/id/"*id*"?token="*token
    else
        query = "/api/v3/species/narrative/id/"*id*"/region/"*region*"?token="*token
    end
    return toprocess(query, dict)    
end

"""
Get a list of species by country isocode. \n
If you don't have an isocode, check countries()
"""
function species_by_country(isocode::String;dict::Bool=false)
    query = "/api/v3/country/getspecies/"*isocode*"?token="*token
    return toprocess(query, dict)
end

"""
Get a list of species by category. \n
The possible categories are "DD", "LC", "NT", "VU", "EN", "CR", "EW", "EX", "LR/lc", "LR/nt", "LR/cd". \\
When querying for "LR/lc", "LR/nt" or "LR/cd" categories, you must omit the slash character. \\
    For example: "LR/lc" becomes "LRlc".
"""
function species_by_category(category::String;dict::Bool=false)
    query = "/api/v3/species/category/"*category*"?token="*token
    return toprocess(query, dict)
end
