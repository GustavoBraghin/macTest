//
//  InfoViewController.swift
//  macTest
//
//  Created by Gustavo da Silva Braghin on 07/02/23.
//

import Cocoa

class InfoViewController: NSViewController {
    let infoViewModel: InfoViewModel
    
    private lazy var titleView: NSTextView = {
        let title = NSTextView(frame: .zero)
        title.alignment = .left
        title.drawsBackground = false
        title.isEditable = false
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .systemFont(ofSize: 22, weight: .bold)
        return title
    }()
    
    private lazy var text: NSTextView = {
        let textView = NSTextView(frame: .zero)
        textView.alignment = .left
        textView.drawsBackground = false
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
//        textView.backgroundColor = .red
        return textView
    }()
    
    init(infoViewModel: InfoViewModel) {
        self.infoViewModel = infoViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Cheguei")
        
        // Do view setup here.
        view.addSubview(titleView)
        titleView.string = infoViewModel.infoModel.title
        view.addSubview(text)
        text.string = infoViewModel.infoModel.text
        configureConstraints()
        infoViewModel.printInfo()
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func loadView() {
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: NSScreen.main?.frame.width ?? .zero, height: NSScreen.main?.frame.height ?? .zero))
    }
    
//    override func viewDidAppear() {
//        print("Appeared")
//    }
    
//    override func viewWillDisappear() {
//        print("Disappeared")
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        let titleConstraints = [
            titleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            titleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleView.widthAnchor.constraint(equalToConstant: 100),
            titleView.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        let textConstraints = [
            text.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: 15),
            text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            text.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 15),
            text.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ]
        
        NSLayoutConstraint.activate(titleConstraints)
        NSLayoutConstraint.activate(textConstraints)
    }
}
