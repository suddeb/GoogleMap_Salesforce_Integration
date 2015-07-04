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
}