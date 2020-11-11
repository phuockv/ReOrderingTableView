//
//  ItermTableViewCell.swift
//  ReOrderingTableView
//
//  Created by Kieu Van Phuoc on 11/11/20.
//

import UIKit

class ItermTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contentLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: 1))
        lineView.backgroundColor = #colorLiteral(red: 0.07450980392, green: 0.07450980392, blue: 0.07450980392, alpha: 0.05)
        self.addSubview(lineView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    override func setEditing(_ editing: Bool, animated: Bool) {
//        super.setEditing(editing, animated: animated)
//
//        if editing {
//            for view in subviews where view.description.contains("Reorder") {
//                for case let subview as UIImageView in view.subviews {
//                    subview.image = UIImage(named: "item")
//                }
//            }
//        }
//    }

}
