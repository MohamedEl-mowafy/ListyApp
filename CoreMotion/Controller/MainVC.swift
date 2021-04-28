//
//  ViewController.swift
//  CoreMotion
//
//  Created by Mohamed Elmowafy on 28/04/2021.
//

import UIKit


class MainVC: UITableViewController {

    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return a configured cell with image and name.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ParallaxCell", for: indexPath) as? ParallaxCell
        else{ return UITableViewCell() }
        cell.configureCell(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell 
    }

}

