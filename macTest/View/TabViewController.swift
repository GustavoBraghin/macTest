//
//  TabViewController.swift
//  macTest
//
//  Created by Gustavo da Silva Braghin on 08/02/23.
//

import Cocoa

class TabViewController: NSTabViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        configureTabViewController()
    }
    
    private func configureTabViewController() {
        tabStyle = .segmentedControlOnTop
        
        let homeModel = InfoModel(title: "Home", text: "Home Sweet home my friend")
        let homeVC = InfoViewController(infoViewModel: InfoViewModel(infoModel: homeModel))
        addTabViewItem(NSTabViewItem(viewController: homeVC))
        tabViewItems[0].label = homeVC.infoViewModel.infoModel.title
        
        let secondModel = InfoModel(title: "Second", text: "Here it is the second view bro")
        let secondVC = InfoViewController(infoViewModel: InfoViewModel(infoModel: secondModel))
        addTabViewItem(NSTabViewItem(viewController: secondVC))
        tabViewItems[1].label = secondVC.infoViewModel.infoModel.title
    }
    
}
