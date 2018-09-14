//
//  ViewController.swift
//  Tumblr
//
//  Created by Gordon on 9/13/18.
//  Copyright © 2018 Gordon. All rights reserved.
//

import UIKit

enum PhotoKeys {
    static let originalSize = "original_size"
    static let Url = "url"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var PhotoDetailsViewController: UIImageView!
    
    var post: [String: Any]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let post = post {
            
            if let photos = post["photos"] as? [[String: Any]] {
                let photo = photos[0]
                let originalSize = photo["original_size"] as! [String: Any]
                let urlString = originalSize["url"] as! String
                let url = URL(string: urlString)
                PhotoDetailsViewController.af_setImage(withURL: url!)
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
