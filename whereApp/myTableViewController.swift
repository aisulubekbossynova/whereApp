//
//  myTableViewController.swift
//  whereApp
//
//  Created by Macbook on 19.04.18.
//  Copyright © 2018 Macbook. All rights reserved.
//
/*
import UIKit
class MyCell: UITableViewCell {
    
    
    
    // @IBOutlet weak var price: UILabel!
    @IBOutlet weak var po: UIView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet var poDesc: UILabel!
    @IBOutlet var poSub: UILabel!
    @IBOutlet var poHide: UIButton!
    @IBOutlet weak var name: UILabel!
    
    
}
class myTableViewController: UITableViewController {
    //@IBOutlet weak var tableView: UITableView!
    var elements = ["Cafes", "Restaurants", "Bars", ""]
    var elements2 = ["iPhone 6 camera" : "13 mpx", "iPhone 6S camera" : "13 mpx", "iPhone 7 camera" : "13 mpx", "iPhone 7+ camera" : "13 mpx", "iPhone 8 camera" : "13 mpx", "iPhone X camera" : "13 mpx"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView.dataSource = self as? UITableViewDataSource
        // tableView.delegate = (self as? UITableViewDelegate)
        print(elements.count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        animateTable()
    }
    
    func animateTable() {
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableWidth: CGFloat = tableView.bounds.size.width
        
        for i in cells {
            let cell: UITableViewCell = i
            cell.transform = CGAffineTransform(translationX: -tableWidth, y: 0)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = CGAffineTransform(translationX: -10, y: 0);
                
            }, completion: nil)
            
            index += 1
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100
    }
    
    
    
    let index = 0;
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? MyCell
        // cell.delegate = self
        
        cell?.name?.text = Array(elements)[indexPath.row].key
        //  cell.detailTextLabel?.text = elements[indexPath.row]
        //  cell.name.text = Array(elements)[indexPath.row].key
        print(Array(elements)[indexPath.row].key)
        cell?.price?.text = Array(elements)[indexPath.row].value
        //cell.bringSubview(toFront: cell.but)
        //  cell.but.tag = indexPath.row
        
        //   cell.but.addTarget(self, action: #selector(infoPressed), for: .touchUpInside)
        /*  cell.but.whenButtonIsClicked {
         UIView.animate(withDuration: 0.3) {
         cell.po.alpha = 1
         cell.po.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
         }
         }*/
        
        
        return cell!
        
    }
    
    /*   override func tableView(_ tableView: UITableView,
     didSelectRowAt indexPath: IndexPath) {
     let cell = tableView.cellForRow(at: indexPath)
     
     UIView.animate(withDuration: 0.3) {
     //self.tableView.cellForRow(at: (tableView.indexPathForSelectedRow)!).po.alpha = 1
     //self.tableView.cellForRow(at: (tableView.indexPathForSelectedRow)!).po.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
     self.cell.po.alpha = 1
     //  cell.poDesc.alpha = 1
     // cell.poSub.alpha = 1
     // cell.poHide.alpha = 1
     self.cell.po.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
     }
     }
     */
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
*/
