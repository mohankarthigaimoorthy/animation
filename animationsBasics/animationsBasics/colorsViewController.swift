//
//  colorsViewController.swift
//  animationsBasics
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

class colorsViewController: UIViewController {

    @IBOutlet weak var coloredView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.8, options: .curveEaseIn, animations: {
            self.coloredView.backgroundColor = .black
            
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.8, options: .curveEaseOut, animations: {
            self.nameLabel.textColor = UIColor(red:0.959, green:0.937, blue:0.109, alpha:1)
            
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
