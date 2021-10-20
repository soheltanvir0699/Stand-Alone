//
//  CreateFormController.swift
//  StandAlone
//
//  Created by Sohel Rana on 21/10/21.
//

import UIKit
import ContextMenuSwift

class CreateFormController: UIViewController ,ContextMenuDelegate{
    var type = 0
    func contextMenuDidSelect(_ contextMenu: ContextMenu, cell: ContextMenuCell, targetedView: UIView, didSelect item: ContextMenuItem, forRowAt index: Int) -> Bool {
        if type == 0 {
            durationLbl.text = item.title
        }else {
            unitLbl.text = item.title
        }
        return true
    }
    
    func contextMenuDidDeselect(_ contextMenu: ContextMenu, cell: ContextMenuCell, targetedView: UIView, didSelect item: ContextMenuItem, forRowAt index: Int) {
        
    }
    
    func contextMenuDidAppear(_ contextMenu: ContextMenu) {
        
    }
    
    func contextMenuDidDisappear(_ contextMenu: ContextMenu) {
        
    }
    
    @IBOutlet weak var durationView: UIView!
    @IBOutlet weak var unitLbl: UILabel!
    
    @IBOutlet weak var durationLbl: UILabel!
    @IBOutlet weak var unitView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        durationView.layer.cornerRadius = 10
        unitView.layer.cornerRadius = 10
        durationView.layer.borderWidth = 1
        durationView.layer.borderColor = UIColor.gray.cgColor
        unitView.layer.borderWidth = 1
        unitView.layer.borderColor = UIColor.gray.cgColor
        durationView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(durationAction)))
        unitView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(unitAction)))
    }
    
    @objc func durationAction() {
        type = 0
        CM.items = ["Yearly", "Monthly", "Weekly", "Custom"]
        CM.showMenu(viewTargeted: durationView, delegate: self, animated: true)
    }
    
    @objc func unitAction() {
        type = 1
        CM.items = ["Year", "Month", "Week", "Day"]
        CM.showMenu(viewTargeted: unitView, delegate: self, animated: true)
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
