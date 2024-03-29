//
//  ViewController.swift
//  TableViewController
//
//  Created by Eugene Berezin on 9/23/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
     var pictures = [String]()

    fileprivate func loopThroughThePictures() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load!
                pictures.append(item)
                
            }
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Pictures of storms"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        loopThroughThePictures()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

