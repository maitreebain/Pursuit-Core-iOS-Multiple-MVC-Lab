//
//  CustomCellViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Maitree Bain on 11/24/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class CustomCellViewController: UIViewController {

    @IBOutlet weak var customAnimalTableView: UITableView!
    
    var animal = [ZooAnimal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

}

extension CustomCellViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customAnimalCell", for: indexPath)
        
        return cell
    }
}

//working on this after custom cell is done

