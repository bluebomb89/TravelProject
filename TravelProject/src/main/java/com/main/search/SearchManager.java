package com.main.search;

import java.io.File;
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
	public void movie_parse(String title) throws Exception
		     {
		    	  list.clear();
//		    	  System.out.println("title="+title);
		    	  rm.review_find(title);//movie.txt
		    	  jobBefore();
		  		  jobExecute();
		  		  jobAfter();
		     }
		     public void jobExecute()
		 	{
		 		try
		 		{
		 			FileSystem dfs=FileSystem.get(conf);
			 		if(dfs.exists(new Path("/output"))) dfs.delete(new Path("/output"), true);
			 		System.out.println("asdfkajskldfjwelfjaosejfiowejf");
		 			jRunner.call();
		 			dfs.close();
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
			 		 if(dfs.exists(new Path("/input"))) dfs.delete(new Path("/input"),true);
		 			 dfs.copyFromLocalFile(new Path("/home/sist/book.txt"), new Path("/input/book.txt"));
		 		     dfs.close();
		 		    
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
		 			File file=new File("/home/sist/bookfeel");
		 			if(file.exists()) file.delete();
		 			dfs.copyToLocalFile(new Path("/output/part-r-00000"), new Path("/home/sist/bookfeel"));
		 		   dfs.close();
		 		}catch(Exception ex)
		 		{
		 			System.out.println(ex.getMessage());
		 		}
		 	}
}
