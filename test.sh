export FORMAT=WEBP
export format_lower=png

rm -rf 324511630_Descanso_FSTopo.3857
rm 324511630_Descanso_FSTopo.$format_lower.mbtiles
#
python gdal2tilesp.py -z 7-15 -w all -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
# python gdal2tilesp.py -e -z 7-15 -w all -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z  7 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z  8 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z  9 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z 10 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z 11 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z 12 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z 13 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z 14 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt
python gdal2tilesp.py -z 15 -w all -e -f $FORMAT 324511630_Descanso_FSTopo.3857.vrt



json -I -f 324511630_Descanso_FSTopo.3857/metadata.json -e 'this.name="324511630_Descanso_FSTopo"'
json -I -f 324511630_Descanso_FSTopo.3857/metadata.json -e 'this.geotiff="324511630_Descanso_FSTopo.tif"'
json -I -f 324511630_Descanso_FSTopo.3857/metadata.json -e 'this.geopdf="324511630_Descanso_FSTopo.pdf"'
json -I -f 324511630_Descanso_FSTopo.3857/metadata.json -e 'this.url="http://data.fs.usda.gov/geodata/rastergateway/states-regions/states_zoom.php?stateID=ca"'

# mb-util --image_format=$format_lower 324511630_Descanso_FSTopo.3857 324511630_Descanso_FSTopo.$format_lower.mbtiles
mb-util --image_format=$format_lower 324511630_Descanso_FSTopo.3857 324511630_Descanso-$FORMAT-$format_lower.mbtiles
