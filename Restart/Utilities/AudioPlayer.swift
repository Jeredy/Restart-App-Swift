//
//  AudioPlayer.swift
//  Restart
//
//  Created by André Almeida on 27/05/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(Sound: String, type: String) {
    if let path = Bundle.main.path(forResource: Sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
