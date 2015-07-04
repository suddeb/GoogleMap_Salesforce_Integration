public with sharing class GeoJsonData {
	public String type;
	public List<Features> features;

	public class Geometry {
		public String type;
		public List<Double> coordinates;
	}

	public class Features {
		public String type;
		public Geometry geometry;
		public Properties properties;
	}

	public class Properties {
		public String prop0;
	}
	
	public static GeoJsonData parse(String json) {
		return (GeoJsonData) System.JSON.deserialize(json, GeoJsonData.class);
	}
	
	static testMethod void testParse() {
		String json = '{ \"type\": \"FeatureCollection\",'+
		'    \"features\": ['+
		'      { \"type\": \"Feature\",'+
		'        \"geometry\": {\"type\": \"Point\", \"coordinates\": [102.0, 0.5]},'+
		'        \"properties\": {\"prop0\": \"value0\"}'+
		'       },'+
		'      { \"type\": \"Feature\",'+
		'        \"geometry\": {\"type\": \"Point\", \"coordinates\": [102.0, 0.5]},'+
		'        \"properties\": {\"prop0\": \"value0\"}'+
		'        }'+
		'       ]'+
		'     }';
		JSON2Apex obj = parse(json);
		System.assert(obj != null);
	}
}