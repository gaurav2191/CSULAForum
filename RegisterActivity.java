package com.csula.forum;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class RegisterActivity extends Activity {
	EditText fname;
	EditText uname;
	EditText email1;
	EditText pass;
	Spinner major1;
	String result;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Set View to register.xml
        setContentView(R.layout.register);
        Button register = (Button) findViewById(R.id.btnRegister);
        fname= (EditText)findViewById(R.id.reg_fullname);
       
        uname= (EditText)findViewById(R.id.reg_user);
        email1= (EditText)findViewById(R.id.reg_email);
        pass= (EditText)findViewById(R.id.reg_password);
        major1= (Spinner)findViewById(R.id.spinner1);
        
        register.setOnClickListener(new View.OnClickListener() {
			
			public void onClick(View v) {
				// TODO Auto-generated method stub
				try{
					String fullname = fname.getText().toString();
		            String username = uname.getText().toString();
		            String password = pass.getText().toString();
		            String email = email1.getText().toString();
		            String major = major1.getSelectedItem().toString();
		            if(fullname.equals("") || username.equals("") || password.equals("") || email.equals("") || major.equals("")){
		            	Toast.makeText(getApplicationContext(), "Required field(s) are missing.", Toast.LENGTH_LONG).show();
		            }
		            else{
		            String link="http://gaurav.byethost3.com/CSULAForum/register.php";//"http://10.0.2.2:80/CSULAForum/register.php";
		            String data  = URLEncoder.encode("fullname","UTF-8")+"="+URLEncoder.encode(fullname,"UTF-8");
		            data+="&" + URLEncoder.encode("email", "UTF-8")+ "=" + URLEncoder.encode(email, "UTF-8");
		            data+= "&"+URLEncoder.encode("username", "UTF-8")+ "=" + URLEncoder.encode(username, "UTF-8");
		            data += "&" + URLEncoder.encode("password", "UTF-8")+ "=" + URLEncoder.encode(password, "UTF-8");
		            data+="&" + URLEncoder.encode("major", "UTF-8")+ "=" + URLEncoder.encode(major, "UTF-8");
		            URL url = new URL(link);
		            URLConnection conn = url.openConnection(); 
		            conn.setDoOutput(true); 
		            OutputStreamWriter wr = new OutputStreamWriter
		            (conn.getOutputStream()); 
		            wr.write( data ); 
		            wr.flush(); 
		            BufferedReader reader = new BufferedReader
		            (new InputStreamReader(conn.getInputStream()));
		            StringBuilder sb = new StringBuilder();
		            String line = null;
		            // Read Server Response
		            while((line = reader.readLine()) != null)
		            {
		               sb.append(line);
		               break;
		            }
		          //  int uid=0;
		            result= sb.toString();
		         //   uid=Integer.parseInt(result);
		          //  Toast.makeText(getApplicationContext(), result, Toast.LENGTH_LONG).show();
		          //  Log.i("result tag", result);
		            if(result.equals("1")){
		            	Intent i = new Intent(getApplicationContext(),LoginActivity.class);
		            	startActivity(i);
		            	
		            }
		            else if(result.equals("0")){
		            	Toast.makeText(getApplicationContext(), "Try different username", Toast.LENGTH_LONG).show();
		            }else{
		            	Toast.makeText(getApplicationContext(), "Required Fields are missing", Toast.LENGTH_LONG).show();
		            }
		            }
		         }catch(Exception e){
		        	  Log.e("log_tag", "Error  converting result "+e.toString());
		         }
			

			}
		});
        TextView loginScreen = (TextView) findViewById(R.id.link_to_login);
        
        // Listening to Login Screen link
        loginScreen.setOnClickListener(new View.OnClickListener() {
			
			public void onClick(View arg0) {
				// Switching to Login Screen/closing register screen
				finish();
			}
		});
    }
}
