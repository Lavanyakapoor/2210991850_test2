//
//  ViewController.swift
//  practicetable2
//
//  Created by student-2 on 22/11/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var array1 = ["aa", "bb", "cc", "dd"]
    var array2 = ["30", "40", "50", "60"]
    var array3 = ["20 min", "40 min", "50 min", "60 min"]

    @IBOutlet weak var tableview: UITableView!
   
    @IBAction func addButtonPressed(_ sender: Any) {
        let meal: AddMealViewController  = self.storyboard?.instantiateViewController(withIdentifier: "addMeal") as! AddMealViewController
        self.navigationController?.pushViewController(meal, animated: true)
        
    }
    @IBOutlet weak var addButtonPressed: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.label1.text = array1[indexPath.row]
               cell.label2.text = array2[indexPath.row]
               cell.label3.text = array3[indexPath.row]
               cell.imageview.image = UIImage(named: "img\(4 + indexPath.row)")
               return cell
           }

           func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
               print("Selected row at index: \(indexPath.row)")
               let detail: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
               detail.strlabel1 = array1[indexPath.row]
               detail.strlabel2 = array2[indexPath.row]
               detail.strlabel3 = array3[indexPath.row]
               detail.image = UIImage(named: "img\(4 + indexPath.row)")
               print("Navigating to DetailViewController")
               self.navigationController?.pushViewController(detail, animated: true)
           }

           func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
               if editingStyle == .delete {
                   array1.remove(at: indexPath.row)
                   array2.remove(at: indexPath.row)
                   array3.remove(at: indexPath.row)
                   tableView.deleteRows(at: [indexPath], with: .fade)
               }
           }
       }

