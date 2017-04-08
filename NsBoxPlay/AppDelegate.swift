//
//  AppDelegate.swift
//  NsBoxPlay
//
//  Created by Jamie on 2017/3/26.
//  Copyright © 2017年 Jamie. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSTableViewDelegate, NSTableViewDataSource {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var tableview: NSTableView!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func tableView(_ tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView? {
        let cellId = "cell_identifier"
        
        var tableRowView = tableView.make(withIdentifier: cellId, owner: self) as? CustomTableRowView
        
        if tableRowView == nil {
            tableRowView = CustomTableRowView(frame: NSMakeRect(0, 0, tableview.frame.size.width, 80))
            tableRowView?.identifier = cellId
        }
        
        return tableRowView
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let colIdentifier: String = tableColumn!.identifier
        
        let tableCellView = tableView.make(withIdentifier: colIdentifier, owner: self) as! NSTableCellView
        
        tableCellView.textField?.stringValue = "aaaaaaaaaaaaaaaa"
        
        return tableCellView
    }
    

    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 10
    }
    
}

