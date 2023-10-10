//
//  scaleViewViewController.swift
//  animationsBasics
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

class scaleViewViewController: UIViewController {

    @IBOutlet weak var scaledImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scaledImage.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.scaledImage.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.scaledImage.alpha = 1
        }, completion: nil)
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
