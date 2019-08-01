//
//  PhotoDetailViewController.swift
//  EarthAndBody2
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Lauren Workosky. All rights reserved.
//

import UIKit

class RecipeDetailPleaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let realRecipe = recipe {
            title = realRecipe.caption
            
            if let cellPhotoImageData = realRecipe.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoOutlet.image = cellPhotoImage
                }
            }
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBOutlet weak var photoOutlet: UIImageView!
    var recipe : Recipes? = nil
}
