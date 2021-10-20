//
//  SideMenu.swift
//  MySideMenu
//
//  Created by Afraz Siddiqui on 7/2/20.
//  Copyright © 2020 ASN GROUP LLC. All rights reserved.
//

import Foundation
import UIKit

protocol MenuControllerDelegate {
    func didSelectMenuItem(named: String)
}

var ItemsArray = constant.Menu_Items_Array

var iconsArray  = constant.Menu_icons_Array

var isLandscape = BoolConstant.is_false

class MenuController: UITableViewController {
    
    public var delegate: MenuControllerDelegate?
    var index: Int = 0
    
    override init(style: UITableView.Style) {
        super.init(nibName: nil, bundle: nil)
        tableView.register(UINib.init(nibName: CellConstant.menu_cell , bundle: nil), forCellReuseIdentifier: CellConstant.cell)
        tableView.register(UINib.init(nibName: CellConstant.header_view, bundle: nil), forCellReuseIdentifier: CellConstant.header)
        tableView.register(UINib.init(nibName: CellConstant.header_title, bundle: nil), forCellReuseIdentifier: CellConstant.header_title_cell)
        self.view.autoresizesSubviews = BoolConstant.is_false
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        } else {
            // Fallback on earlier versions
        }
        tableView.separatorColor = UIColor.clear
        tableView.showsVerticalScrollIndicator = BoolConstant.is_true
    }
    
    required init?(coder: NSCoder) {
        fatalError(constant.fatal_error)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 30/255, green: 68/255, blue: 79/255, alpha: 1.0)
        self.view.backgroundColor = UIColor(red: 30/255, green: 68/255, blue: 79/255, alpha: 1.0)
        self.tableView.indicatorStyle = .black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = BoolConstant.is_true
        let indexPath = NSIndexPath(row: self.index, section: 0)
        tableView.selectRow(at: indexPath as IndexPath, animated: BoolConstant.is_false, scrollPosition: .none)
        tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .middle, animated: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = BoolConstant.is_false
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ItemsArray.count
        
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let verticalIndicator = scrollView.subviews.last as? UIImageView
        verticalIndicator?.backgroundColor = UIColor.green
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
                
                let cell = tableView.dequeueReusableCell(withIdentifier: CellConstant.cell, for: indexPath) as! MenuCell
                cell.backgroundColor = UIColor.clear
                let backgroundSelectionView = UIView()
                backgroundSelectionView.backgroundColor = UIColor.white.withAlphaComponent(0.1)
                cell.selectedBackgroundView = backgroundSelectionView
                cell.menuLabel?.text = ItemsArray[indexPath.row]
                cell.menuIcon.image = UIImage(named: iconsArray[indexPath.row])
                return cell
            
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        let selectedItem = ItemsArray[indexPath.row]
        if selectedItem != "" {
            delegate?.didSelectMenuItem(named: selectedItem)
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 42
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            isLandscape = BoolConstant.is_true
        } else {
            isLandscape = BoolConstant.is_false
        }
    }
}
