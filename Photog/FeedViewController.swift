
import UIKit

class FeedViewController: UIViewController, UITableViewDataSource
{
    
    var items = ["","","",""]
    
    @IBOutlet var tableView : UITableView?
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var nib = UINib(nibName: "PostCell", bundle: nil)
        
        tableView?.registerNib(nib, forCellReuseIdentifier: "PostCellIdentifier")
        
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCellIdentifier") as! PostCell
//        var item = items[indexPath.row] as! PFObject
//        
//        cell.item = item

        return cell
    }

}
