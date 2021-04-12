//
//  PhototViewController.swift
//  photoTapted
//
//  Created by Всеволод on 12.04.2021.
//

import UIKit

class PhototViewController: UIViewController {
    var image: UIImage?

    @IBOutlet weak var photoOmageView: UIImageView!
    @IBAction func shareAction(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool == true {
                print("Успешно")
            }
        }
    present(shareController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        photoOmageView.image = image
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
