//
//  InfoViewController.swift
//  macTest
//
//  Created by Gustavo da Silva Braghin on 07/02/23.
//

import Cocoa

class InfoViewController: NSViewController {
    
    private let text: NSTextView = {
        let textView = NSTextView(frame: .zero)
        textView.alignment = .center
        textView.drawsBackground = false
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.string = "Trying to make it works"
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do view setup here.
        print("Cheguei")
        view.window?.backgroundColor = .red
        view.addSubview(text)
        configureConstraints()
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
    
    func configureConstraints() {
        let textConstraints = [
            text.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            text.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            text.widthAnchor.constraint(equalToConstant: 200),
            text.heightAnchor.constraint(equalToConstant: 30)
        ]
        
        NSLayoutConstraint.activate(textConstraints)
    }
    
}
