//
//  AddMealViewController.swift
//  practicetable2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class AddMealViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var addPreparationTime: UITextField!
    @IBOutlet weak var addCalories: UITextField!
    @IBOutlet weak var addRecepie: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addImageButtonTapped(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let alertController = UIAlertController(title: "choose image source", message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "cancel" , style: .cancel,handler: nil)
        alertController.addAction(cancelAction)
        
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let cameraAction = UIAlertAction(title: "camera", style: .default, handler: { action in print("user has chosen camera")})
            imagePicker.sourceType = .camera
            self.present(imagePicker,animated : true, completion : nil)
            alertController.addAction(cameraAction)
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryAction = UIAlertAction(title: "photo library", style: .default, handler: { action in print("user has chosen photo library")})
            
            alertController.addAction(photoLibraryAction)
        }
            
            present(alertController, animated: true)
        }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {return}
        imageView.image = selectedImage
    }
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let recepie = addRecepie.text, !recepie.isEmpty,
              let calorie = addCalories.text, !calorie.isEmpty,
              let preparationTime = addPreparationTime.text,!preparationTime.isEmpty else{return}
        let homeVC = self.navigationController?.viewControllers.first{ $0 is ViewController} as? ViewController
        homeVC?.array1.append(recepie)
        homeVC?.array2.append(calorie)
        homeVC?.array3.append(preparationTime)
        navigationController?.popViewController(animated: true)
              
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
