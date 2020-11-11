//
//  ViewController.swift
//  ReOrderingTableView
//
//  Created by Kieu Van Phuoc on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataArray: [String] = [
        "Apple",
        "Mango",
        "Papaya",
        "Guava",
        "Pineapple",
        "Strawberry",
        "Banana",
        "Grapes",
        "Pomegranate",
        "Green Tea",
        "Raisin"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.setEditing(true, animated: true)
    }
    
   
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.5215686275, green: 0.5411764706, blue: 0.5568627451, alpha: 1)
        label.numberOfLines = 0
        label.text = "iOS 10 brings us push notifications that have new functionality compared to the ones in older operating system versions. Improvements include viewing photos, videos or gifs, right there, within the notification."
        
        let header = UIView()
        header.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 24),
            label.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -24),
            label.topAnchor.constraint(equalTo: header.topAnchor, constant: 32),
            label.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -48)
        ])
        return header
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItermTableViewCell
        cell.contentLabel.text = dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        dataArray.swapAt(sourceIndexPath.row, destinationIndexPath.row)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
