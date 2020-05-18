package idv.yung.tool;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;
import javax.servlet.http.Part;

public class FileUtil {
	
	private static final String delimiter = ",";
	
	public static List<List<String>> read(Collection<Part> parts) {
		List<List<String>> list = new LinkedList<List<String>>();
		for(Part part : parts) {
			try(BufferedReader reader = new BufferedReader(
					new InputStreamReader(part.getInputStream()))) {
				String line = null;
				while((line = reader.readLine()) != null) {
					System.out.println(line);
					List<String> lList = new LinkedList<>();
					StringTokenizer token = new StringTokenizer(line, delimiter);
					while(token.hasMoreElements()) { lList.add(token.nextToken()); }
					list.add(lList);
				}
			} catch (Exception e) { }
		}
		return list;
	}
}
