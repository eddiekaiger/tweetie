//
//  APIClient.swift
//  Tweetie
//
//  Created by Eddie Kaiger on 11/8/15.
//  Copyright © 2015 Eddie Kaiger. All rights reserved.
//

import UIKit
import Alamofire
import CoreData

class APIClient: NSObject {

    private static let url = "http://eddiekaiger.com/tweetie.json"

    class func retrieveTweets() {

        Alamofire.request(.GET, url).responseJSON { response in

            guard response.result.error == nil else {
                print("Error occurred: \(response.result.error)")
                return
            }

            guard let json = response.result.value as? Array<Dictionary<String, AnyObject>> else {
                print("Could not parse JSON.")
                return
            }

            for dict in json {

                guard let postID = dict["postID"] as? NSNumber, username = dict["username"] as? String, content = dict["content"] as? String else {
                    continue
                }

                let tweet = NSEntityDescription.insertNewObjectForEntityForName("Tweet", inManagedObjectContext: globalContext()) as! Tweet
                tweet.postID = postID
                tweet.username = username
                tweet.content = content
            }

            do {
                try globalContext().save()
            } catch {
                print("Error saving context")
            }
        }
    }

}
