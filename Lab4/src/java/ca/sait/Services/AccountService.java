/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ca.sait.Services;
import ca.sait.Models.*;

/**
 *
 * @author huyth
 */
public class AccountService {
    public AccountService(){
        
    }
    public User login(String username, String password){
        if (username.toLowerCase().equals("Abe".toLowerCase()) && password.equals("password")) {
            return new User(username, password);
        }
        else if (username.toLowerCase().equals("Barb".toLowerCase()) && password.equals("password")) {
            return new User(username, password);
        }
        else{
            return null;
        }
    }
}
