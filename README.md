# IUCN.jl
API Wrapper for IUCN Red List. 

Are you a data scientist and are you working in biodiversity? you might find this useful.

# What this does

Implements all* of the functionalities of the IUCN Red List API in an easy to use way.

In some cases, you can call 4 different endpoints from only 1 functions. Thanks to multiple dispatch.

# Functions

## Helpers

### `version()`

To check what version of the IUCN Red List is driving the API

```julia
version()
```

### `countries()`

To get a list of countries

```julia
countries()
```

### `species_by_country()`

To get a list of species by country isocode:

```julia
species_by_country(isocode::String)
```

### `regions()`

Regions

```julia
regions()
```

## Species details

### `species_count()`

Total Species count: Global assessments, Regional assessments.

```julia
species_count()
species_count(region::String)
```

### `species_citation()`

To get the citation for a given species assessment, by name or ID: Global assessments, Regional assessments.

```julia
species_citation(name::String)
species_citation(name::String,region::String)
species_citation(id::Int64)
species_citation(id::Int64,region::String)
```

### `species_by_category()`

To get a list of species by category

```julia
species_by_category(category::String)
```

### `species_indv()`

To get information about individual species, by name (or synonym) or ID: Global assessments, Regional assessments.

```julia
species_indv(name::String)
species_indv(name::String,region::String)
species_indv(id::Int64)
species_indv(id::Int64,region::String)
```

### `species_narrative()`

To get narrative information about individual species by name or ID. Global assessments, Regional assessments.

Please be aware that the text contains HTML markup in some places for formatting purposes.

```julia
species_narrative(name::String)
species_narrative(name::String,region::String)
species_narrative(id::Int64)
species_narrative(id::Int64,region::String)
```

## Other data

### `conservation_measures()`

Species conservation measures information, by name or ID: Global assessments, Regional assessments.

```julia
conservation_measure(name::String)
conservation_measure(name::String,region::String)
conservation_measure(id::Int64)
conservation_measure(id::Int64,region::String)
```
