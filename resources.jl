using HTTP
using JSON

function toquery(url)
    a = HTTP.get("https://apiv3.iucnredlist.org"*url)
    return JSON.parse(String(a.body))
end

## melt_dict

## iucn_df