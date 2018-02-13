# Bulk convert shapefiles to geojson using ogr2ogr
# For more information, see http://ben.balter.com/2013/06/26/how-to-convert-shapefiles-to-geojson-for-use-on-github/

# Note: Assumes you're in a folder with one or more zip files containing shape files
# and Outputs as geojson with the crs:84 SRS (for use on GitHub or elsewhere)

#unzip all files in a directory
#for var in *.zip; do unzip "$var"; done

#convert all shapefiles
for shapefile in *.geojson; do
  geo2topo -o `basename -s .geojson topo_$shapefile`.json $shapefile
done

#Then do a batch rename to remove .geojson.json

# You'd probably want to `mv *.topojson [path-to-git-repo]/` at this point
# so you could commit the file to GitHub
# Happy mapping!
