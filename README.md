# IUCN.jl
API Wrapper for IUCN Red List. 

Are you a data scientist and are you working in biodiversity? you might find this useful.

## What this does

Implements all* of the functionalities of the IUCN Red List API in an easy to use way.

In some cases, you can call 4 different endpoints from only 1 functions. Thanks to multiple dispatch.

## Functions

### `version()`

IUCN Red List version

### `countries()`

Countries

### `species_by_country()`

Species by country

### `regions()`

Regions

### `species_count()`

Species Count: Global assessments, Regional assessments.

### `species_citation()`

Species citation, by name: Global assessments, Regional assessments.

Species citation, by ID:  Global assessments, Regional assessments.

### `species_by_category()`

Species by category

### `species()`

Individual Species, by name: Global assessments, Regional assessments.

Individual Species by ID: Global assessments, Regional assessments.

### `species_narrative()`

Species Narrative information, by name: Global assessments, Regional assessments.

Species Narrative information, by ID: Global assessments, Regional assessments.
