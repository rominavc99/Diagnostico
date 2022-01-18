//
//  DetallesLinage.swift
//  diagnostico
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit


class DetallesLinageController: UIViewController {
    
    
    @IBOutlet weak var lblLinage: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDesignated: UILabel!
    @IBOutlet weak var lblAssigned: UILabel!
    @IBOutlet weak var lblWHO: UILabel!
    @IBOutlet weak var txtDescription: UITextView!
    
    var lineage : Lineage = Lineage("", "", "", "", "", "")
    
    
    override func viewDidLoad() {
           
        self.title = lineage.lineage
           
           
        lblLinage.text = lineage.lineage
        lblDate.text = lineage.earliestDate
        lblDesignated.text = lineage.desiganted
        lblAssigned.text = lineage.assigned
        lblWHO.text = lineage.whoName
        txtDescription.text = lineage.description
           
           
         
       }
    
    
}
