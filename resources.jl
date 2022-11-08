using HTTP
using JSON

## Resources
function toquery(url)
    a = HTTP.get("https://apiv3.iucnredlist.org"*url)
    return JSON.parse(String(a.body))
end

