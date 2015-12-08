//
//  ImageViewController.swift
//  SmallSpaces
//
//  Created by Rahul Nair Jaishakar on 11/25/15.
//  Copyright © 2015 ENGL108. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    var imageFromSegue = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //ImageView.image = imageFromSegue
        ImageView.image = imageFromSegue
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
