//
//  positionViewController.swift
//  animationsBasics
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

class positionViewController: UIViewController {

    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var mouthView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.8, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8,options: .curveEaseInOut, animations: {
            self.purpleView.center.x = self.view.bounds.width - self.purpleView.center.x
            self.purpleView.center.y = self.purpleView.center.y + 30
            self.pinkView.center.x = self.view.bounds.width - self.pinkView.center.x
            self.pinkView.center.y = self.pinkView.center.y + 30
            
        }, completion:  nil )
        
        UIView.animate(withDuration: 0.6, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8, options : .curveEaseOut, animations: {
            self.setHeight(180)
            self.mouthView.center.y = self.view.bounds.height - self.mouthView.center.y
        }, completion: nil )
    }
    
    func setHeight(_ height: CGFloat)

    {
        var frame: CGRect = self.mouthView.frame
        frame.size.height = height
        
        self.mouthView.frame = frame
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
