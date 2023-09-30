fx_version "adamant"
game "rdr3"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

this_is_a_map "yes"

dependency 'objectloader'

files {
	'guarma_docs.xml',
	'guarma_plants.xml',
  'bananas.xml',
  'mango.xml',
  'coconut.xml'
  }
  
  objectloader_maps {
	'guarma_docs.xml',
	'guarma_plants.xml',
  'bananas.xml',
  'mango.xml',
  'coconut.xml'
  }	

dependency '/assetpacks'

lua54 'yes'

data_file 'DLC_ITYP_REQUEST' 'stream/coconut_ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/coconutgreen_ytyp'
  
 
  