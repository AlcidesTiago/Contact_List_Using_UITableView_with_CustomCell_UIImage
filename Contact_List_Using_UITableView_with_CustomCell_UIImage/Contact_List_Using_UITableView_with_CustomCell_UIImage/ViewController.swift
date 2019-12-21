//
//  ViewController.swift
//  Contact_List_Using_UITableView_with_CustomCell_UIImage
//
//  Created by Alcides Tiago on 20/12/19.
//  Copyright © 2019 iAFT. All rights reserved.
//

import UIKit
class tableCell: UITableViewCell {
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myText: UILabel!
    
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    
    var student = [
    "Tiago Ph: 8238381199",
    "Marlon Ph: 8799787534",
    "Clavio Ph: 9999787534",
    "Faruk Ph: 9399787534",
    "Biran Ph: 9999787987",
    "Magnus Ph: 9199787534",
    "Elton Ph: 9799787595",
    "Eugenio Ph: 9999787530",
    "Gime Ph: 9099787534",
    "Sainabou Ph: 7435912938"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: tableCell = tableView.dequeueReusableCell(withIdentifier: "MYCELL") as! tableCell
        
        cell.myImage?.image = UIImage(named: student[indexPath.row])
        cell.myText?.text = student[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

