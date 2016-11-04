//
//  MarkupHelper.swift
//  ProcessTestSummaries
//
//  Created by Jay He on 4/11/16.
//  Copyright © 2016 Teo. All rights reserved.
//

import Foundation
class MarkupHelper {
    
    class func createTable(data: [[String]]) -> Markup {
        let t = Table();
        t.setData(data);
        return t;
    }
}
