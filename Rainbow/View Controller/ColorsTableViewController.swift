//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Claudia Contreras on 1/28/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [
        MyColor(name: "Red", color: .red),
        MyColor(name: "Orange", color: .orange),
        MyColor(name: "Yellow", color: .yellow),
        MyColor(name: "Green", color: .green),
        MyColor(name: "Blue", color: .blue),
        MyColor(name: "Indigo", color: .cyan),
        MyColor(name: "Violet", color: .purple),
        MyColor(name: "Gray", color: .gray)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    //Index Path (x = section, y = row)
    //First Row of a tableview (0, 0)
    //(0,1)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        //access the item that was clicked on
        let color = colors[indexPath.row]
        
        // Now we can use the information to set our cell
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.color
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //1. Make sure you are using the correct segue
        if segue.identifier == "ToDetailViewController" {
            
            //2. Get the instance of your detail view from the segue's destination
            //3. Get the index path for the row that the user tapped
            if let detailViewController = segue.destination as? ColorsDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                
                //4. Initialize Color with indexPath
                let color = colors[indexPath.row]
                
                //5. Pass the color to the detail view
                detailViewController.cellColor = color
            }
        }
    }
}
