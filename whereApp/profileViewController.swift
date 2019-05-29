//
//  profileViewController.swift
//  whereApp
//
//  Created by Macbook on 17.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase
import MBCircularProgressBar
class profileViewController: UIViewController {
    @IBOutlet weak var myprogress: MBCircularProgressBarView!
    var actionButton: ActionButton!
    @IBOutlet weak var myemail: UILabel!
    
    @IBOutlet weak var myname: UILabel!
    private var dbRef: DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        dbRef = Database.database().reference()
      //  dbRef = dbRef?.child("tweets")
        var current_user_email = {
            return Auth.auth().currentUser?.email
        }
        let currentUser = current_user_email()
        self.myemail.text = currentUser
        
      
        let db = Database.database().reference().child("User")
        db.observe(DataEventType.value, with: { (snapshot) in
            print(snapshot.childrenCount)
            for snap in snapshot.children{
                if(User.init(snapshot: snap as! DataSnapshot).Email != nil){
                    let user = User.init(snapshot: snap as! DataSnapshot)
                    print(user.Email!)
                    if currentUser == user.Email {
                        self.myemail.text = user.Email
                        self.myname.text = user.Name
                          print(user.Name!)
                        //dat
                    }
                }
            }
        })
        
self.myprogress.value = 0
        // Do any additional setup after loading the view.
        let twitterImage = UIImage(named: "exit (1).png")!
        let plusImage = UIImage(named: "bookmark-outline.png")!
        let editImage = UIImage(named: "bookmark-outline.png")!

        let logout = ActionButtonItem(title: "Log Out", image: twitterImage)
        logout.action = { item in print("Twitter...") }
        
        let showfavs = ActionButtonItem(title: "Show favorites", image: plusImage)
        showfavs.action = { item in print("Google Plus...") }
        let editprofile = ActionButtonItem(title: "Edit Profile", image: editImage)
        showfavs.action = { item in print("Google Plus...") }
        
        actionButton = ActionButton(attachedToView: self.view, items: [logout, showfavs, editprofile])
        actionButton.action = { button in button.toggleMenu() }
        actionButton.setTitle("+", forState: UIControlState())
        
        actionButton.backgroundColor = UIColor(red: 62.0/255.0, green: 82.0/255.0, blue: 184.0/255.0, alpha:1.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.myprogress.value = 13
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
