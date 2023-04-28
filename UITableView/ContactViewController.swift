//
//  ContactViewController.swift
//  UITableView
//
//  Created by Chinara on 4/28/23.
//

import UIKit

class ContactViewController: UIViewController {
        
    private let cellId = "cell"
    private var contactList: [Contact] = []
    @IBOutlet weak var contactTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initData()
        
    }
    private func initUI() {
        contactTableView.dataSource = self
        contactTableView.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
    }
    private func initData() {
        contactList = [Contact(image: "person_1", name: "JaneCooper", phoneNumber: "72178240234"),
            Contact(image: "person_9", name: "Devon Lane",phoneNumber: "25373027"),
            Contact(image: "person_10", name: "Darrell Steward",phoneNumber: "535638292"),
            Contact(image: "person_8", name: "Dev Can", phoneNumber:"51542722"),
            Contact(image: "person_9", name: "Courtney Henry",phoneNumber: "65813158"),
            Contact(image: "person_6", name: "Wade Warren",phoneNumber: "19625100"),
            Contact(image: "person_1", name: "Bessie Cooper",phoneNumber: "1625889"),
            Contact(image: "person_8", name: "Robert Fox",phoneNumber: "6017222"),
            Contact(image: "person_9", name: "Jacob Jones",phoneNumber: "08163839"),
            Contact(image: "person_10", name: "Jenny Wilson",phoneNumber: "927251796")]
    }
    
}
extension ContactViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection numberOfRowsInSectionsection: Int) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier:"cell")
        cell.textLabel?.text = contactList[indexPath.row].name

        cell.imageView?.image = UIImage(named:contactList[indexPath.row].image)
        
        cell.detailTextLabel?.text = contactList[indexPath.row].phoneNumber
        
        return cell
    }
}
struct Contact {
    var image: String
    var name: String
    var phoneNumber: String
}

