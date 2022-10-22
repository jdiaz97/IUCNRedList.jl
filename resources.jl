using HTTP
using JSON
using DataFrames

## Resources
function to_dataframe(dict::Dict)
    result_string = reduce(vcat,keys(dict))[length(dict)]
    return DataFrame(dict[result_string])
end

function getparse(url)
    a = HTTP.get("https://apiv3.iucnredlist.org"*url)
    return JSON.parse(String(a.body))
end

function toprocess(url::String,dict::Bool)
    toreturn = getparse(url)
    if dict == true
        return toreturn
    else
        return to_dataframe(toreturn)
    end
end