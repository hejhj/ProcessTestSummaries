//
//  Table.swift
//  ProcessTestSummaries
//
//  Created by Jay He on 4/11/16.
//  Copyright © 2016 Teo. All rights reserved.
//

import Foundation
class Table: Markup {
    
    private var data: [[String]] = []
    
    func setData(data: [[String]]) {
        self.data = data;
    }
    func getData() -> [[String]] { return data; }
    
    func getMarkup() -> NSXMLElement {
        let table = NSXMLElement(name: "table")
        for row in 0 ... data.count-1 {
            let tr = NSXMLElement(name: "tr")
            for col in 0 ... data[row].count-1 {
                let td = NSXMLElement(name: "td", stringValue: data[row][col])
                tr.addChild(td)
            }
            table.addChild(tr)
        }
        return table;
    }
    
}
