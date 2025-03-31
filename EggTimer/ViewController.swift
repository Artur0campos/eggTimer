import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var seconds: Float = 0
    var totalTime: Float = 0
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var upperLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        progressBar.progress = 0.0
        seconds = 0
        upperLabel.text = hardness
        
        totalTime = Float(eggTimes[hardness]!)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        var counter: Int = 0
        if seconds < totalTime {
            
            let percentegeProgress = seconds / totalTime
            print(percentegeProgress)
            progressBar.progress = percentegeProgress
            
            counter = Int(totalTime - seconds)
            upperLabel.text = "\(counter) seconds"
            seconds += 1
        }
        
        else {
            timer.invalidate()
            upperLabel.text = "Done!"
        }
    }
    
}


