//
//  ViewController.swift
//  CollectionView_in_TableViewCell
//
//  Created by İbrahim Halil Kalkan on 14.01.2023.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet var table:UITableView!
    var models = [Model]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "third", imageName: "image_2"))
        models.append(Model(text: "second", imageName: "image_3"))
        models.append(Model(text: "demo", imageName: "image_4"))
        models.append(Model(text: "fifth", imageName: "image_5"))
        models.append(Model(text: "sixth", imageName: "image_6"))
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "third", imageName: "image_2"))
        models.append(Model(text: "second", imageName: "image_3"))
        models.append(Model(text: "demo", imageName: "image_4"))
        models.append(Model(text: "fifth", imageName: "image_5"))
        models.append(Model(text: "sixth", imageName: "image_6"))
        

        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self


    }

}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
}




struct Model{
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
    
    
}
