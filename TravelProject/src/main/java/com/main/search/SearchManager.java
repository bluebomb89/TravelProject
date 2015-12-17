package com.main.search;

import java.util.ArrayList;
import java.util.List;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.hadoop.mapreduce.JobRunner;
import org.springframework.stereotype.Component;


@Component
public class SearchManager {
	   @Autowired
	   private ReviewManager rm;
	   @Autowired
		private JobRunner jRunner;
	   @Autowired
		private Configuration conf;
	     List<Word> list=new ArrayList<Word>();
	public void movie_parse(String title)
		     throws Exception
		     {
		    	  list.clear();
		    	  System.out.println("title="+title);
		    	  rm.review_find(title);//movie.txt
		    	  jobBefore();
		  		  jobExecute();
		  		  jobAfter();
		     }
		     public void jobExecute()
		 	{
		 		try
		 		{
		 			jRunner.call();
		 		}catch(Exception ex)
		 		{
		 			System.out.println(ex.getMessage());
		 		}
		 	}
		 	public void jobBefore()
		 	{
		 		try
		 		{
		 			 FileSystem dfs=FileSystem.get(conf);
		 			 dfs.copyFromLocalFile(new Path("/home/sist/desc.txt"), new Path("/input/desc.txt"));
		 		     if(dfs.exists(new Path("/output")))
		 		      {
		 		    	 dfs.delete(new Path("/output"), true);
		 		      }
		 		    
		 		}catch(Exception ex)
		 		{
		 			System.out.println(ex.getMessage());
		 		}
		 	}
		 	public void jobAfter()
		 	{
		 		try
		 		{
		 			FileSystem dfs=FileSystem.get(conf);
		 			dfs.copyToLocalFile(new Path("/output/part-r-00000"), new Path("/home/sist/feel"));
		 			if(dfs.exists(new Path("/input/desc.txt")))
		 		    {
		 		    dfs.delete(new Path("/input/desc.txt"),true);
		 		    }
		 		   dfs.close();
		 			dfs.close();
		 		}catch(Exception ex)
		 		{
		 			System.out.println(ex.getMessage());
		 		}
		 	}
}
