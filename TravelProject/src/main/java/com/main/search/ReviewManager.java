package com.main.search;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.rosuda.REngine.REXP;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Component;
@Component
public class ReviewManager {
	  int num=0;
      public List<String> review_data(int page)
      {
    	  num=0;
    	  List<String> list=new ArrayList<String>();
    	  try
    	  {
    		  RConnection rc=new RConnection();
    		  rc.setStringEncoding("utf8");
    		  rc.voidEval("library(KoNLP)");
    		  rc.voidEval("txt<-readLines(\"/home/sist/desc.txt\")");
    		  REXP p=rc.eval("txt");
    		  String[] data=p.asStrings();
    		  int j=0;
    		  int pagecnt=(page*10)-10;
    		  for(int i=0;i<data.length;i++)
    		  {
    			  if(j<10 && i>=pagecnt)
    			  {
    				list.add(data[i]);
    				j++;  
    			  }
    		  }
    		  rc.close();
    	  }catch(Exception ex)
    	  {
    		  System.out.println(ex.getMessage());
    	  }
    	  return list;
      }
      public int revie_totalpage()
      {
    	  int total=0;
    	  try
    	  {
    		  RConnection rc=new RConnection();
    		  rc.setStringEncoding("utf8");
    		  rc.voidEval("library(KoNLP)");
    		  
    		  rc.voidEval("txt<-readLines(\"/home/sist/book.txt\")");
    		  REXP p=rc.eval("txt");
    		  String[] data=p.asStrings();
    		  total=(int)(Math.ceil(data.length/10.0));
    		  rc.close();
    	  }catch(Exception ex){}
    	  return total;
      }
      public void review_find(String title)  throws Exception
      {
    	num=1;
    	File file=new File("/home/sist/book.txt");
    	if(num==1)
    	{
    		file.delete();
    		
    	}
    	if(!file.exists())
    		file.createNewFile();
    	for(int i=1;i<=20;i++)
  		{
  		  String json=readJson(title,i);// {channel:{}...}
  		  jsonSave(json); 
  		}
      }
      public String readJson(String ss,int page)
      throws Exception
      {
    				    StringBuffer sb=new StringBuffer();
    				
    					URL url=new URL("https://apis.daum.net/search/blog?apikey=6727e27025118f69c9959544e4dd00cc&q="+URLEncoder.encode(ss,"UTF-8")+"&output=json&result=20&pageno="+page);
    					HttpURLConnection conn=(HttpURLConnection)url.openConnection();
    					
    					if(conn!=null)
    					{
    						BufferedReader in=
    							new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
    						while(true)
    						{
    							String data=in.readLine();
    							if(data==null) break;
//    							System.out.println(data);
    							sb.append(data+"\n");
    						}
    						conn.disconnect();
    					}
    				
    				return sb.toString();
      }
      public void jsonSave(String txt)
      throws Exception
      {
    		    	// {} []
    		    	
    		    	JSONParser jp=new JSONParser();
    		    	JSONObject jo=(JSONObject)jp.parse(txt);
    		    	JSONObject channel=(JSONObject)jo.get("channel");
    		    	// description
    		    	JSONArray array=(JSONArray)channel.get("item");
    		    	String data="";
    		    	for(int i=0;i<array.size();i++)
    		    	{
    		    		JSONObject obj=(JSONObject)array.get(i);
    		    		String desc=(String)obj.get("description");
    		    		data+=desc+"\n";
    		    		//System.out.println(desc);
    		    	}
    		    	data=data.replaceAll("&lt;", "");
    		    	data=data.replaceAll("/b&gt;", "");
    		    	data=data.replaceAll("b&gt;", "");
    		    	data=data.replaceAll("&#39", "");
    		    	data=data.replaceAll("&gt;", "");
    		    	data=data.replace("&quot;", "");
    		    	data=data.replace("?", "");
    		    	data=data.replace(".", "");
    		    	data=data.replace(";", "");
//    		    	System.out.println(data);
    		    	
    		    	File file=new File("/home/sist/book.txt");
    		    	if(file.exists()) file.delete();
    		    	FileWriter fw=new FileWriter(file,true);
    		    	fw.write(data);
    		    	fw.close();
    		    	
     }
}





