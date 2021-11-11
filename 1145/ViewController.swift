//
//  ViewController.swift
//  1145
//
//  Created by Дария Марковская on 15.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Table: UITableView!
    
    private var tableView: UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        tableView.frame = self.view.frame
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.register(UINib(nibName: TableCell.Constant.nameNib, bundle: nil), forCellReuseIdentifier: TableCell.Constant.idCell)
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
    }
    
}

    
    extension ViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            4
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableCell.Constant.idCell, for: indexPath) as? TableCell else { fatalError()}
            cell.setText(text: String(indexPath.row))
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 55
        }
    }
    
extension ViewController: UITableViewDelegate {
   
}
    
   

//class ViewEmpty {
//
//    override func awakeFromNib() {
//
//    }
//}
