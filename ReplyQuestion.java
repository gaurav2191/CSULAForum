package com.csula.forum;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class ReplyQuestion extends Activity {

	private Button bt3;
	private EditText et;
	String result;

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.submit);
		bt3 = (Button) findViewById(R.id.button3);
		bt3.setOnClickListener(submitListener);
		et = (EditText) findViewById(R.id.editText1);

	}

	private OnClickListener submitListener = new OnClickListener() {
		public void onClick(View v) {

			String reply = et.getText().toString();
			try {
				SharedPreferences pref = getSharedPreferences(
						LoginActivity.MyPREFERENCES, 0);
				String courseid = pref.getString("courseid", null);
				String userid = pref.getString("userid", null);
				String questionid = pref.getString("questionid", null);
				String link = /*"http://gaurav.byethost3.com/CSULAForum/postReply.php";*/"http://10.0.2.2:80/CSULAForum/postReply.php";
				String data = URLEncoder.encode("reply", "UTF-8") + "="
						+ URLEncoder.encode(reply, "UTF-8");
				data += "&" + URLEncoder.encode("questionid", "UTF-8") + "="
						+ URLEncoder.encode(questionid, "UTF-8");
				data += "&" + URLEncoder.encode("userid", "UTF-8") + "="
						+ URLEncoder.encode(userid, "UTF-8");
				data += "&" + URLEncoder.encode("courseid", "UTF-8") + "="
						+ URLEncoder.encode(courseid, "UTF-8");
				URL url = new URL(link);
				URLConnection conn = url.openConnection();
				conn.setDoOutput(true);
				OutputStreamWriter wr = new OutputStreamWriter(
						conn.getOutputStream());
				wr.write(data);
				wr.flush();
				BufferedReader reader = new BufferedReader(
						new InputStreamReader(conn.getInputStream()));
				StringBuilder sb = new StringBuilder();
				String line = null;
				// Read Server Response
				while ((line = reader.readLine()) != null) {
					sb.append(line);
					break;
				}

				result = sb.toString();
				if (result.equals("1")) {
					Intent intent = new Intent();
					intent.setClass(ReplyQuestion.this, Answers.class);
					Bundle bundle = new Bundle();
					bundle.putString("reply", reply);
					intent.putExtras(bundle);
					startActivity(intent);
					Answers.Answers.finish();
					ReplyQuestion.this.finish();
				} else {
					Toast.makeText(getApplicationContext(), "fail to submit",
							Toast.LENGTH_LONG).show();
				}
			} catch (Exception e) {
				Log.e("log_tag", "Error  converting result " + e.toString());

			}

		}

	};

}
