public with sharing class GoogleMapController {
	public String[] getLocationLists(){
		return null;
	}
	
	//TODO - Need to work on this
  	public void getGeoJsonData(){
  		sudipta.GeoJsonData geoJsonData = new sudipta.GeoJsonData();
  		geoJsonData.type = 'FeatureCollection';
  		
  		//Creating bondi Beach details
  		GeoJsonData.Features bondiBeachFeature = new GeoJsonData.Features();
  		bondiBeachFeature.type = 'Feature';
  		bondiBeachFeature.geometry = new GeoJsonData.Geometry('Point',new List<Double>{-33.890542,151.274856});
  		bondiBeachFeature.properties = new GeoJsonData.Properties('Bondi Beach');
  		
  		 
  	}
}