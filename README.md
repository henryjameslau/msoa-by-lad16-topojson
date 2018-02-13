# Middle Super Output Areas by Local Authority 2016 in .geojson and .topojson

Split the Middle Super Output Areas (MSOA) grouped by local authority into `.geojson` and `.topojson` filetypes.

Source is [ONS Geoportal](http://geoportal.statistics.gov.uk/). Dataset is [Middle Layer Super Output Areas (December 2011) Generalised Clipped Boundaries in England and Wales](http://geoportal.statistics.gov.uk/datasets/middle-layer-super-output-areas-december-2011-generalised-clipped-boundaries-in-england-and-wales).

This dataset doesn't countain local authority codes, so you'll have to use the [MSOA to ward](http://geoportal.statistics.gov.uk/datasets/middle-layer-super-output-area-2011-to-ward-2017-lookup-in-england-and-wales) lookup tables. [Join the MSOA shapefile with the lookup table in QGIS](http://www.qgistutorials.com/en/docs/performing_table_joins.html).

Split by feature using QGIS
Load in the source shapefile.
![screen shot 2018-02-05 at 09 31 47](https://user-images.githubusercontent.com/2945099/35797599-17e6e53e-0a58-11e8-90f2-c30874506011.png)
Using the menu choose
Vector > Data management tools> Split vector layer. Choose lad16cd.
Choose the folder to save files.


[Batch convert to geojson](https://gist.github.com/benbalter/5858851). Add in the source projection `-s_srs EPSG:27700`. [Helpful tool](https://dragons8mycat.com/2014/04/29/gis-tips-how-to-find-the-epsg-code-of-your-shapefile/) to find out the projection of your shapefile.

[Batch convert to topojson](https://gis.stackexchange.com/questions/75561/batch-conversion-of-shapefiles-to-topojson) although they've changed the commands in topojson. You now need to use [`geo2topo`](https://github.com/topojson/topojson-server/blob/master/README.md#geo2topo)

Have included the scripts in this repo. Run the scripts in the folder with the terminal. E.g. Change directory into the folder and `./geojson-conversion.sh`.
