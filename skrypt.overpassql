/*
wyszukiwanie pomników przyrody w zadanym województwie
*/
[out:json][timeout:25];
// fetch area “podlaskie” to search in
{{geocodeArea:łódzkie}}->.searchArea;
// gather results
(
  // query part for: “natural=tree”
  node["denotation"="natural_monument"]["protected"="yes"](area.searchArea);
  way["denotation"="natural_monument"]["protected"="yes"](area.searchArea);
  rel["denotation"="natural_monument"]["protected"="yes"](area.searchArea);
);
// print results
out body;
>;
out skel qt;
