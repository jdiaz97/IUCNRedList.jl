function toquery(url::String)
    response = HTTP.get("https://apiv3.iucnredlist.org"*url)
    return JSON.parse(String(response.body))
end

"""
This will get the actual result from the query and merge it with the rest of the dictionary
"""
function melt_dict(dict::Dict)
    dict = copy(dict) ## Prevent side effects, very handy!
    result = dict["result"][1]
    dict = delete!(dict,"result")
    melted = merge(dict,result)
    return melted
end