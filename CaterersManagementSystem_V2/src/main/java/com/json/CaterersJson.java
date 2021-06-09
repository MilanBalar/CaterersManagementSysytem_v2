package com.json;

import java.io.FileReader;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class CaterersJson {

	public static void main(String[] args) throws IOException, ParseException {

		//FileReader reader =new FileReader(".\\JSON\\caterers.json");
		FileReader reader =new FileReader("JSON\\caterers.json");
		JSONParser parser=new JSONParser();

		Object obj=parser.parse(reader);
		JSONObject jsonObject=(JSONObject) obj;

		String name= (String) jsonObject.get("Name");
		int no= Integer.parseInt((String) jsonObject.get("No"));

		System.out.println(name +"  " +no);

		JSONArray Address= (JSONArray) jsonObject.get("Address");
		System.out.println(Address);


		for (int i = 0; i < Address.size(); i++) {
			JSONObject jobj = (JSONObject) Address.get(i);
			String city = (String) jobj.get("city");
			String state = (String) jobj.get("state");

			System.out.println(city + "  " + state);
		}



	}


}
