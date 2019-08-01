//
//  AddNewRecipeViewController.swift
//  EarthAndBody2
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Lauren Workosky. All rights reserved.
//

import UIKit

class AddNewRecipeViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    
    @IBAction func takeAPicture(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func chooseFromLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            let fixedImaged = ImageUtilities.fixImageOrientation(imageSource: selectedImage)
            recipeImage.image = fixedImaged
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var recipeName: UITextField!
    
    
    @IBAction func saveRecipe(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Recipes(entity: Recipes.entity(), insertInto: context)
            photoToSave.caption = recipeName.text
            
            if let userImage = recipeImage.image {
                if let userImageData = userImage.pngData(){
                    photoToSave.imageData = userImageData
                }
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func saveNewRecipe(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Recipes(entity: Recipes.entity(), insertInto: context)
            photoToSave.caption = recipeName.text
            
            if let userImage = recipeImage.image {
                if let userImageData = userImage.pngData(){
                    photoToSave.imageData = userImageData
                }
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            
            navigationController?.popViewController(animated: true)
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
