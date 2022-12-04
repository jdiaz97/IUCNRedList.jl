"""
To get a list of all the species published, as well as the Red List category. \n 
Returns 10,000 records per call, so you need to send multiple requests, based on pages. \\
Index starts at 0.
"""
function species_all(page::Int64)
    page = string(page)
    query::String = "/api/v3/species/page/"*page*"?token="*token
    return toquery(query)
end

function species_all(page::Int64,region::String)
    page = string(page)
    query::String = "/api/v3/species/region/"*region*"/page/"*page*"?token="*token
    return toquery(query)
end

"""
Total Species count. \n
If region not provided, it will return a global assesment \\
You have to use the correct region identifier, check regions() for that. \\
"""
function species_count()
    query::String = "/api/v3/speciescount?token="*token
    return toquery(query)
end

function species_count(region::String)
    query::String = "/api/v3/speciescount/region/"*region*"?token="*token
    return toquery(query)
end

"""
Get the citation for a given species assessment. \n
Use scientific name or ID. \\
If region not provided, it will return a global assesment \\
You have to use the correct region identifier, check regions() for that 
"""
function species_citation(name::String)
    query::String = "/api/v3/species/citation/"*name*"?token="*token
    return toquery(query)    
end

function species_citation(name::String,region::String)
    query::String = "/api/v3/species/citation/"*name*"/region/"*region*"?token="*token
    return toquery(query)    
end

function species_citation(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/species/citation/id/"*string_id*"?token="*token
    return toquery(query)    
end

function species_citation(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/species/citation/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)    
end

"""
Get a list of species by category. \n
The possible categories are "DD", "LC", "NT", "VU", "EN", "CR", "EW", "EX", "LR/lc", "LR/nt", "LR/cd". \\
When querying for "LR/lc", "LR/nt" or "LR/cd" categories, you must omit the slash character. \\
    For example: "LR/lc" becomes "LRlc".
"""
function species_by_category(category::String)
    query::String = "/api/v3/species/category/"*category*"?token="*token
    return toquery(query)
end

"""
To get information about individual species via its name, or a synonym.
"""
function species_indv(name::String)
    query::String = "/api/v3/species/"*name*"?token="*token
    return toquery(query)
end

function species_indv(name::String,region::String)
    query::String = "/api/v3/species/"*name*"/region/"*region*"?token="*token
    return toquery(query)
end

function species_indv(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/species/id/"*string_id*"?token="*token
    return toquery(query)
end

function species_indv(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/species/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)
end

"""
Get narrative information about individual species. \n
Please be aware that the text contains HTML markup in some places for formatting purposes. \\
Use scientific name or ID. \\
If region not provided, it will return a global assesment \\
You have to use the correct region identifier, check regions() for that
"""
function species_narrative(name::String)
    query::String = "/api/v3/species/narrative/"*name*"?token="*token
    return toquery(query)    
end

function species_narrative(name::String,region::String)
    query::String = "/api/v3/species/narrative/"*name*"/region/"*region*"?token="*token
    return toquery(query)    
end

function species_narrative(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/species/narrative/id/"*string_id*"?token="*token
    return toquery(query)    
end

function species_narrative(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/species/narrative/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)    
end

"""
Can be used to either gain information about synonyms via an accepted species name, or vice versa i.e. 
this call tells you if there are synonyms for the species name, or whether it's a synonym of an accepted name
"""
function species_synonyms(name::String)
    query::String = "/api/v3/species/synonym/"*name*"?token="*token
    return toquery(query)
end

"""
To get the list of common names per species.
"""
function species_common_names(name::String)
    query::String = "/api/v3/species/common_names/"*name*"?token="*token
    return toquery(query)
end

"""
To get a list of countries of occurrence by species name or ID.
"""
function species_occurrence(name::String)
    query::String = "/api/v3/species/countries/name/"*name*"?token="*token
    return toquery(query)    
end

function species_occurrence(name::String,region::String)
    query::String = "/api/v3/species/countries/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)    
end

function species_occurrence(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/species/countries/id/"*string_id*"?token="*token
    return toquery(query)    
end

function species_occurrence(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/species/countries/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)    
end

"""
To get a list of historical assessments by species name or ID (including the current listing).
"""
function species_history(name::String)
    query::String = "/api/v3/species/history/name/"*name*"?token="*token
    return toquery(query)    
end

function species_history(name::String,region::String)
    query::String = "/api/v3/species/history/name/"*name*"/region/"*region*"?token="*token
    return toquery(query)    
end

function species_history(id::Int64)
    string_id::String = string(id)
    query::String = "/api/v3/species/history/id/"*string_id*"?token="*token
    return toquery(query)    
end

function species_history(id::Int64,region::String)
    string_id::String = string(id)
    query::String = "/api/v3/species/history/id/"*string_id*"/region/"*region*"?token="*token
    return toquery(query)    
end