import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("in viewDidLoad")
        print(1, 2, 3, 4, 5, separator: "-")
        print("something", terminator: "") // usually terminator is "\n"
        
        assert(1 == 1, "math failed")
        assert(1 == 2, "math did not fail")
        assert(mySlowFunc() == true, "The mySlowFunc() returned false, which is bad")
        
        for i in 1...100 {
            print("Got number \(i).")
        }
    }
    
    func mySlowFunc() -> Bool {
        for i in 0...1000000000 {
            for j in 0...1000000000 {
                print(i * i + j * j)
            }
        }
        
        if Int.random(in: 1...2) == 1 {
            return true
        } else {
            return false
        }
    }
}

