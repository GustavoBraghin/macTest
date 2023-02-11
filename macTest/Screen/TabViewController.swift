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
        
        let homeModel = InfoModel(title: "ReadMe", text: "Hi, My name is Gustavo! I'm an iOS Developer, I have 2 years of experience in this area working in the Apple Developer Academy in Brasília, where i had the opportunity to work with Swift, SwiftUI, UIKit (storyboard and viewcode), and many others tecnologies. I'm always doing my best to develop Apps that may impact in someone's life and also to become a better Dev! This Project has been developed after my first interview to SenhaSegura with the goals of proving that I'm interested in this opportunity and that I'm capacitaded to do it! The project Consists in using AppKit (framework to develop interface for a MacOS App) with the MVVM Architecture to develop 2 screens where the first (ReadMe) is the home/intro screen, and the second is to present some information about security and security framework find in the Apple Documentation (https://developer.apple.com/documentation/security)")
        let homeVC = InfoViewController(infoViewModel: InfoViewModel(infoModel: homeModel))
        addTabViewItem(NSTabViewItem(viewController: homeVC))
        tabViewItems[0].label = homeVC.infoViewModel.infoModel.title
        
        let secondModel = InfoModel(title: "Second", text: "Here it is the second view bro")
        let secondVC = InfoViewController(infoViewModel: InfoViewModel(infoModel: secondModel))
        addTabViewItem(NSTabViewItem(viewController: secondVC))
        tabViewItems[1].label = secondVC.infoViewModel.infoModel.title
    }
    
}
