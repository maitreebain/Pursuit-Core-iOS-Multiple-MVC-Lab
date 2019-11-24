//
//  AnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Maitree Bain on 11/24/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var zooAnimal = [ZooAnimal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        zooAnimal = ZooAnimal.singleAnimals()
    }
    


}

extension AnimalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zooAnimal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        
        let animalValues = zooAnimal[indexPath.row]
        
        cell.textLabel?.text = animalValues.name
        cell.detailTextLabel?.text = animalValues.classification
        cell.imageView?.image = UIImage(named: "\(animalValues.imageNumber)")
        
        return cell
    }
    
    
}
