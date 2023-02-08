//
//  Main.swift
//  macTest
//
//  Created by Gustavo da Silva Braghin on 07/02/23.
//

import AppKit

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
