//
//  CustomTableRowView.swift
//  NsBoxPlay
//
//  Created by Jamie on 2017/4/8.
//  Copyright © 2017年 Jamie. All rights reserved.
//

import Cocoa

class CustomTableRowView: NSTableRowView {
    
    override func drawSelection(in dirtyRect: NSRect) {
        if (self.selectionHighlightStyle != NSTableViewSelectionHighlightStyle.none) {
            if self.isEmphasized {
                NSColor(calibratedRed: 26.0/255.0, green: 154.0/255.0, blue: 252.0/255.0, alpha: 1.0).setStroke()
            } else {
                NSColor(calibratedWhite: 0.82, alpha: 1.0).setStroke()
            }
            
            let selectionPath = NSBezierPath(rect: dirtyRect)
            selectionPath.lineWidth = 3.0
            selectionPath.stroke()
        }
    }
    
    override var interiorBackgroundStyle: NSBackgroundStyle {
        return NSBackgroundStyle.light
    }
}
