//
//  historyCell.swift
//  StandAlone
//
//  Created by Sohel Rana on 21/10/21.
//

import UIKit

class historyCell: UITableViewCell {
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        view1.layer.borderColor = UIColor.darkGray.cgColor
        view1.layer.borderWidth = 0.5
        view2.layer.borderColor = UIColor.darkGray.cgColor
        view2.layer.borderWidth = 0.5
        view3.layer.borderColor = UIColor.darkGray.cgColor
        view3.layer.borderWidth = 0.5
        view4.layer.borderColor = UIColor.darkGray.cgColor
        view4.layer.borderWidth = 0.5
        view5.layer.borderColor = UIColor.darkGray.cgColor
        view5.layer.borderWidth = 0.5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
