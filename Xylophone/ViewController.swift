import UIKit
import AVFoundation

final class ViewController: UIViewController {
    private let feedback = UIImpactFeedbackGenerator()
    private var player: AVAudioPlayer!
    
    @IBAction private func keyPressed(_ sender: UIButton) {
        vibrate(sender)
        playSouund(nameSound: sender.currentTitle!)
    }
    
    private func playSouund(nameSound: String) {
        let url = Bundle.main.url(forResource: nameSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    private func vibrate(_ sender: UIButton) {
        feedback.prepare()
        feedback.impactOccurred(intensity: sender.frame.minX / 20)
    }
    
}

