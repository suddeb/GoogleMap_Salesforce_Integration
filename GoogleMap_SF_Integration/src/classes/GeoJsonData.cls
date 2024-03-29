public class GeoJsonData {
	public String type;
	public List<Features> features;
	
	public GeoJsonData(){
		features = new List<Features>();
	}
	/*
	public void add(sudipta.GeoJsonData.Features singleFeature){
		features.insert(singleFeature);
	}
	*/
	public class Geometry {
		public String type;
		public List<Double> coordinates;
		
		public Geometry(String typeName, List<Double> myCoordinates){
			type = typeName;
			coordinates = myCoordinates;
		}
	}

	public class Features {
		public String type;
		public Geometry geometry;
		public Properties properties;
	}

	public class Properties {
		public String name;
		
		public Properties(String typeName){
			name = typeName;
		}
	}
	
	public static GeoJsonData parse(String json) {
		return (GeoJsonData) System.JSON.deserialize(json, GeoJsonData.class);
	}
}