package com.OtpVarification;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

public class OTP {
	public String sendSms() {
		int otp;
		try {
			// Construct data
			String apiKey = "apikey=" + "NTQ0OTU0NzE0ZjU2MzY1NjM1Mzg2NTVhNmI0OTU2NTM=";
			Random random=new Random();
			otp=random.nextInt(999999);

			String message = "&message=" + "Hey! your otp is "+otp;
			String sender = "&sender=" + "Caterers Management system";
			String numbers = "&numbers=" + "+918980841381";

			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
            System.out.println("otp send succesfully");
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
}