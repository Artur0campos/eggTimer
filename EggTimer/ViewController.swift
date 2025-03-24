import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var seconds = 0
    var totalTime = 0
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var upperLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        print(eggTimes[hardness] ??  "Error")
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        
        upperLabel.text = "\(seconds) seconds"
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {

        if seconds > totalTime {
            upperLabel.text = "\(totalTime) seconds"
            seconds += 1
            
            let percentegeProgress = Float(seconds / totalTime)
            progressBar.progress = percentegeProgress
        }
        
        else {
            timer.invalidate()
            upperLabel.text = "Done!"
        }
    }
    
}
