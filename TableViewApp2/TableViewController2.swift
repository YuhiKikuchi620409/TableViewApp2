import UIKit

class TableViewController2: UITableViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

//        追加画面で入力した内容を取得する
        
        if UserDefaults.standard.object(forKey: "todolist") != nil {
            list = UserDefaults.standard.object(forKey: "todolist") as! [String]
        }
      
    }
//    画面が表示された時にリロードさせる
    
    override func viewWillAppear(_ animated: Bool){
    super.viewWillAppear(false)
        
        tableView.reloadData()
    }
        
//    削除させる
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)

        // Configure the cell...
  cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    @IBAction func backButton(_ sender: Any) {
        
//        1つ前の画面に戻す
 self.navigationController?.popViewController(animated: true)
    }
    
}
