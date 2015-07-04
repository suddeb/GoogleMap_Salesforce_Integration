@isTest
public class TestGeoJsonData {
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
		GeoJsonData obj = parse(json);
		System.assert(obj != null);
	}
}