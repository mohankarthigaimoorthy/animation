//
//  rotationViewController.swift
//  animationsBasics
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

class rotationViewController: UIViewController {

    @IBOutlet weak var lblEmojis: UILabel!
    @IBOutlet weak var rotateImageView: UIImageView!
    @IBOutlet weak var modi2: UIImageView!
    @IBOutlet weak var modi3: UIImageView!
    @IBOutlet weak var modi4: UIImageView!
    @IBOutlet weak var modi5: UIImageView!
    @IBOutlet weak var modi6: UIImageView!
    @IBOutlet weak var modi7: UIImageView!
    @IBOutlet weak var modi8: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.spin()
    }
    func spin(){
        
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveLinear ,animations: {
            self.rotateImageView.transform = self.rotateImageView.transform.rotated(by: CGFloat(Double.pi))
            self.modi2.transform = self.modi2.transform.rotated(by: CGFloat(Double.pi))
            self.modi3.transform = self.modi3.transform.rotated(by: CGFloat(Double.pi))
            self.modi4.transform = self.modi4.transform.rotated(by: CGFloat(Double.pi))
            self.modi5.transform = self.modi5.transform.rotated(by: CGFloat(Double.pi))
            self.modi6.transform = self.modi6.transform.rotated(by: CGFloat(Double.pi))
            self.modi7.transform = self.modi7.transform.rotated(by: CGFloat(Double.pi))
            self.modi8.transform = self.modi8.transform.rotated(by: CGFloat(Double.pi))
            self.lblEmojis.transform = self.lblEmojis.transform.rotated(by: CGFloat(Double.pi))
        }) { (finished) -> Void in
            self.spin()
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
