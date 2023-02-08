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
        addTabViewItem(NSTabViewItem(viewController: HomeViewController()))
        tabViewItems[0].label = "First"
        addTabViewItem(NSTabViewItem(viewController: HomeViewController()))
        tabViewItems[1].label = "Second"
    }
    
}
