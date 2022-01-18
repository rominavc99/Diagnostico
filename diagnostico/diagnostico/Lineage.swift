//
//  Lineage.swift
//  diagnostico
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation


class Lineage {
    
    var lineage = ""
    var earliestDate = ""
    var desiganted = ""
    var assigned = ""
    var whoName = ""
    var description = ""
    
    init(_ lineage: String, _ earliestDate: String, _ designated: String, _ assigned: String, _ whoName: String, _ description: String) {
        
        self.lineage = lineage
        self.earliestDate = earliestDate
        self.desiganted = designated
        self.assigned = assigned
        self.whoName = whoName
        self.description = description
        
        
    }
    
}
