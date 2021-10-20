//
//  ViewController.swift
//  StandAlone
//
//  Created by Sohel Rana on 18/10/21.
//

import UIKit
import SideMenu
import ContextMenuSwift
class ViewController: UIViewController, MenuControllerDelegate , ContextMenuDelegate{
    @IBOutlet weak var daysLbl: UILabel!
    @IBOutlet weak var yearlyLbl: UILabel!
    var type = 0
    func contextMenuDidSelect(_ contextMenu: ContextMenu, cell: ContextMenuCell, targetedView: UIView, didSelect item: ContextMenuItem, forRowAt index: Int) -> Bool {
        if type == 0 {
            self.yearlyLbl.text = item.title
        }else {
            self.daysLbl.text = item.title
        }
        return true
    }
    
    func contextMenuDidDeselect(_ contextMenu: ContextMenu, cell: ContextMenuCell, targetedView: UIView, didSelect item: ContextMenuItem, forRowAt index: Int) {
        
    }
    
    func contextMenuDidAppear(_ contextMenu: ContextMenu) {
        
    }
    
    func contextMenuDidDisappear(_ contextMenu: ContextMenu) {
        
    }
    
    @IBOutlet weak var payView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var yearlyView: UIView!
    @IBOutlet weak var DaysView: UIView!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    func didSelectMenuItem(named: String) {
        sideMenu?.dismiss(animated: true, completion: nil)
            self.title = named
        if named == "Create Form" {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateFormController") as? CreateFormController
            self.navigationController?.pushViewController(vc!, animated: true)
        }else if named == "History" {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HistoryController") as? HistoryController
            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
    private var sideMenu: SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        payView.layer.cornerRadius = 10
        alertView.layer.cornerRadius = 10
        yearlyView.layer.cornerRadius = 10
        DaysView.layer.cornerRadius = 10
        yearlyView.layer.borderColor = UIColor.darkGray.cgColor
        yearlyView.layer.borderWidth = 1
        DaysView.layer.borderColor = UIColor.darkGray.cgColor
        DaysView.layer.borderWidth = 1
        
        setUpMenu()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Home"
    }
    
    func setUpMenu() {
        let menu = MenuController(style: UITableView.Style.grouped)
        let index = menu.index
        menu.delegate = self
        DispatchQueue.main.async {
            self.sideMenu = SideMenuNavigationController(rootViewController: menu)
            self.sideMenu?.leftSide = true
            
            SideMenuManager.default.leftMenuNavigationController = self.sideMenu
            SideMenuManager.default.addPanGestureToPresent(toView: self.view)
            self.menuBtn.isEnabled = true
        }
    }
    
    @IBAction func yearlyAction(_ sender: Any) {
        type = 0
        CM.items = ["Importent", "paying", "Income", "Medical", "Subscription", "Sports"]
        CM.showMenu(viewTargeted: yearlyView, delegate: self, animated: true)
    }
    
    @IBAction func daysAction(_ sender: Any) {
        type = 1
        CM.items = ["Importent", "paying", "Income", "Medical", "Subscription", "Sports"]
        CM.showMenu(viewTargeted: DaysView, delegate: self, animated: true)
    }
    @IBAction func menuAction(_ sender: Any) {
        present(sideMenu!, animated: true)
    }
    

}
    

