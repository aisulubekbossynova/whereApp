//
//  LaunchViewController.swift
//  whereApp
//
//  Created by Macbook on 16.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var easy: UILabel!
    @IBOutlet weak var comfortable: UILabel!
    @IBOutlet weak var friendly: UILabel!
    var counter1 = 0
    var counter2 = 0
    var counter3 = 0

    @IBOutlet weak var mybutton: UIButton!
    var easytext = ["E","a", "s", "y", "."]
    var comftext = ["C","o", "m", "f", "o","r", "t", "a", "b","l", "e", "."]
    @IBOutlet weak var mysecondbutton: UIButton!
    var fritext = ["F","r", "i", "e", "n","d", "l", "y", "."]
    override func viewDidLoad() {
        super.viewDidLoad()
        let colors = Colors()
        mybutton.layer.cornerRadius = 10
        mybutton.layer.borderWidth = 3
        mybutton.layer.borderColor = UIColor.white.cgColor

        view.backgroundColor = UIColor.clear
            var backgroundLayer = colors.gl
        backgroundLayer?.frame = view.frame
        view.layer.insertSublayer(backgroundLayer!, at: 0)
        UIView.animate(withDuration: 1.5) {
            self.mybutton.center.y -= self.view.bounds.height
            self.mysecondbutton.center.y -= self.view.bounds.height
           
            
        }
        
    }

      //  let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(animate), userInfo: nil, repeats: true)
     //   timer.fire()
        // Do any additional setup after loading the view.
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // easy.isHidden = true
       // comfortable.isHidden = true
      //  comfortable.isHidden = true
        mybutton.center.y  += view.bounds.height
        mysecondbutton.center.y  += view.bounds.height
        

        //  let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(animate), userInfo: nil, repeats: true)
        //   timer.fire()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   /* @objc func animate() {
        UIView.transition(with: easy,
                                  duration: 1.0,
                                  options: [.curveEaseInOut],
                                  animations: { () -> Void in
                                    self.easy.text = self.easy.text! + String(self.easytext[self.counter1])
                                    self.counter1 += 1
        }, completion: nil)
        UIView.transition(with: comfortable,
                                  duration: 1.0,
                                  options: [.curveEaseInOut],
                                  animations: { () -> Void in
                                    
                                    self.comfortable.text = self.comfortable.text! + String(self.comftext[self.counter2])
                                    self.counter2 += 1
        }, completion: nil)
        UIView.transition(with: friendly,
                          duration: 1.0,
                          options: [.curveEaseInOut],
                          animations: { () -> Void in
                            
                            self.friendly.text = self.friendly.text! + String(self.fritext[self.counter3])
                            self.counter3 += 1
        }, completion: nil)
        
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
