package idv.yung.tool;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class GsonUtil {
	
	private static Gson gson = new GsonBuilder().disableHtmlEscaping().create();
	
	public  GsonUtil() { }
	
	public static Gson getGson() {
		return gson;
	}
	
	public static String toJson(Object object) {
		if(object == null) return null;
		return gson.toJson(object);
	}

}
