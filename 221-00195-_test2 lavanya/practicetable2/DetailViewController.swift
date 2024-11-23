//
//  DetailViewController.swift
//  practicetable2
//
//  Created by student-2 on 22/11/24.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var strlabel1: String?
    var strlabel2: String?
    var strlabel3: String?
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the values to the UI elements
        label1.text = strlabel1
        label2.text = strlabel2
        label3.text = strlabel3
        imageView.image = image
    }
}
