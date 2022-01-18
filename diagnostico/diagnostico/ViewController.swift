//
//  ViewController.swift
//  diagnostico
//
//  Created by Alumno on 1/17/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tvLineages: UITableView!
    var lineages : [Lineage] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lineages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaLineage") as! CeldaLineageController
        
        celda.lblLineage.text = lineages[indexPath.row].lineage
        celda.lblDate.text = lineages[indexPath.row].earliestDate
        celda.lblwhoDate.text = lineages[indexPath.row].whoName
        celda.lbldesignated.text = lineages[indexPath.row].desiganted
        celda.lblAssigned.text = lineages[indexPath.row].assigned
        
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 172
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Lineages"
        
        lineages.append(Lineage("A","30/12/19","1698","2293","","hola"))
        lineages.append(Lineage("A.1","22/02/20","2699","3026","","hola"))
        lineages.append(Lineage("A.2","17/02/20","1107","1283","","hola"))
        lineages.append(Lineage("A.2.2","17/03/20","473","550","","hola"))
        lineages.append(Lineage("A.2.3","12/03/20","167","201","","hola"))
        lineages.append(Lineage("A.2.4","04/02/20","110","243","","hola"))
        lineages.append(Lineage("A.2.5","15/04/20","1028","1936","","hola"))
        lineages.append(Lineage("A.2.5.1","14/04/20","135","299","","hola"))
        lineages.append(Lineage("A.2.5.2","12/04/20","260","1016","","hola"))
        lineages.append(Lineage("A.2.5.3","19/02/21","57","100","","hola"))
        lineages.append(Lineage("A.3","11/03/20","361","466","","hola"))
        lineages.append(Lineage("A.4","11/03/20","61","78","","hola"))
        lineages.append(Lineage("A.5","01/03/20","439","493","","hola"))
        lineages.append(Lineage("A.6","23/01/20","164","175","","hola"))
        lineages.append(Lineage("A.7","06/05/20","17","18","","hola"))
        lineages.append(Lineage("A.9","21/03/20","19","19","","hola"))
        lineages.append(Lineage("A.11","20/03/20","10","19","","hola"))
        lineages.append(Lineage("A.12","10/04/20","6","6","","hola"))
        lineages.append(Lineage("A.15","20/04/20","62","68","","hola"))
        lineages.append(Lineage("A.16","15/02/20","53","62","","hola"))
        lineages.append(Lineage("A.17","25/01/20","10","11","","hola"))
        lineages.append(Lineage("A.18","21/06/20","10","16","","hola"))
        lineages.append(Lineage("A.19","04/06/20","62","100","","hola"))
        lineages.append(Lineage("A.21","10/04/20","62","284","","hola"))
        lineages.append(Lineage("A.22","15/03/20","13","15","","hola"))
        lineages.append(Lineage("A.23","14/08/20","51","88","","hola"))
        lineages.append(Lineage("A.23.1","21/09/20","263","1196","","hola"))
        lineages.append(Lineage("A.24","22/03/20","9","14","","hola"))
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          let destino = segue.destination as! DetallesLinageController
         
          destino.lineage = lineages[tvLineages.indexPathForSelectedRow!.row]
        
        
          
          
      }


}

