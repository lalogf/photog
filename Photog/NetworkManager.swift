//
//  NetworkManager.swift
//  Photog
//
//  Created by Lalo Gonzalez on 4/27/15.
//  Copyright (c) 2015 Lalo Gonzalez. All rights reserved.
//

import Foundation


public class NetworkManager
{
    public class var sharedInstance: NetworkManager
    {
    
    struct Singleton
    {
        static let instance = NetworkManager()
    }
    
    return Singleton.instance

}


    func follow(user: PFUser!, completionHandler:(error: NSError?)-> ())
    {
        var relation = PFUser.currentUser()?.relationForKey("following")
        relation?.addObject(user)
        PFUser.currentUser()?.saveInBackgroundWithBlock{
            (success,error) -> Void in
            completionHandler(error: error)
        }
    }
}