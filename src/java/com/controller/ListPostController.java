/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.entity.Post;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class ListPostController {
    private List <Post> listPost;
   
    public ListPostController() {
       listPost=new ArrayList<>();
       
    }
    public void addPost(Post post){
         listPost.add(post);
         
    }
    public List<Post> getListPost() {
      
        return listPost;
    }

    public void setListPost(List<Post> listPost) {
        this.listPost = listPost;
    }

   
    
    
}
