//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Steffina Jerald on 7/22/25.
//

import UIKit
import NukeExtensions


class DetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the caption (cleaned of HTML tags)
        textView.text = post.caption.trimHTMLTags()
        
        // MARK: - Configure the image views
        
        // Load first image from post (Tumblr usually has one image per post)
        if let firstPhoto = post.photos.first {
            let photoURL = firstPhoto.originalSize.url
            
            // Load the main image into the poster image view
            NukeExtensions.loadImage(with: photoURL, into: posterImageView)
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
