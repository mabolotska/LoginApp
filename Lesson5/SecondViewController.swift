//
//  SecondViewController.swift
//  Lesson5
//
//  Created by Maryna Bolotska on 07/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backgroundGradientView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a gradient layer.
               let gradientLayer = CAGradientLayer()
               // Set the size of the layer to be equal to size of the display.
               gradientLayer.frame = view.bounds
               // Set an array of Core Graphics colors (.cgColor) to create the gradient.
               // This example uses a Color Literal and a UIColor from RGB values.
               gradientLayer.colors = [#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1).cgColor, UIColor(red: 252/255, green: 238/255, blue: 33/255, alpha: 1).cgColor]
               // Rasterize this static layer to improve app performance.
               gradientLayer.shouldRasterize = true
               // Apply the gradient to the backgroundGradientView.
             //  backgroundGradientView.layer.addSublayer(gradientLayer)
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
