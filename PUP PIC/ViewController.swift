//
//  ViewController.swift
//  PUP PIC
//
//  Created by Allison Schultz on 11/26/17.
//  Copyright © 2017 pupVenture. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    
    // Sounds to be played
    var player : AVAudioPlayer!
    var pikaSqueak = AVAudioPlayer();
    var ballSqueak = AVAudioPlayer();
    var doorBell = AVAudioPlayer();
    var duckQuack = AVAudioPlayer();
    var squirrelSound = AVAudioPlayer();
    var dog1bark = AVAudioPlayer();
    var dog2bark = AVAudioPlayer();
    var dog3bark = AVAudioPlayer();
    var dog4bark = AVAudioPlayer();
    var dog5bark = AVAudioPlayer();
    var dog6bark = AVAudioPlayer();
    var toySqueak = AVAudioPlayer();
    var longSqueakToy = AVAudioPlayer();
    var shortSqueakToy = AVAudioPlayer();
    var mouseSound = AVAudioPlayer();
    var ratSound = AVAudioPlayer();
    var wolfHowl = AVAudioPlayer();
    var packBarking = AVAudioPlayer();
    var dogWhine = AVAudioPlayer();
    var kittenMeow = AVAudioPlayer();
    var humanWhistle = AVAudioPlayer();
    var picker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make buttons round and outlined
        let screenSize = UIScreen.main.bounds
        let screenHeight = screenSize.height
        let radius: CGFloat = screenHeight/18
        let outline: CGFloat = 2
        let borderColor: CGColor = UIColor.black.cgColor
        pikaButton.layer.cornerRadius = radius
        pikaButton.clipsToBounds = true
        pikaButton.layer.borderWidth = outline
        pikaButton.layer.borderColor = borderColor
        ballSqueakButton.layer.cornerRadius = radius
        ballSqueakButton.clipsToBounds = true
        ballSqueakButton.layer.borderWidth = outline
        ballSqueakButton.layer.borderColor = borderColor
        duckQuackButton.layer.cornerRadius = radius
        duckQuackButton.clipsToBounds = true
        duckQuackButton.layer.borderWidth = outline
        duckQuackButton.layer.borderColor = borderColor
        toySqueakButton.layer.cornerRadius = radius
        toySqueakButton.clipsToBounds = true
        toySqueakButton.layer.borderWidth = outline
        toySqueakButton.layer.borderColor = borderColor
        squirrelButton.layer.cornerRadius = radius
        squirrelButton.clipsToBounds = true
        squirrelButton.layer.borderWidth = outline
        squirrelButton.layer.borderColor = borderColor
        shortSqueakToyButton.layer.cornerRadius = radius
        shortSqueakToyButton.clipsToBounds = true
        shortSqueakToyButton.layer.borderWidth = outline
        shortSqueakToyButton.layer.borderColor = borderColor
        longSqueakToyButton.layer.cornerRadius = radius
        longSqueakToyButton.clipsToBounds = true
        longSqueakToyButton.layer.borderWidth = outline
        longSqueakToyButton.layer.borderColor = borderColor
        mouseSoundButton.layer.cornerRadius = radius
        mouseSoundButton.clipsToBounds = true
        mouseSoundButton.layer.borderWidth = outline
        mouseSoundButton.layer.borderColor = borderColor
        ratSoundButton.layer.cornerRadius = radius
        ratSoundButton.clipsToBounds = true
        ratSoundButton.layer.borderWidth = outline
        ratSoundButton.layer.borderColor = borderColor
        dog1barkButton.layer.cornerRadius = radius
        dog1barkButton.clipsToBounds = true
        dog1barkButton.layer.borderWidth = outline
        dog1barkButton.layer.borderColor = borderColor
        dog2barkButton.layer.cornerRadius = radius
        dog2barkButton.clipsToBounds = true
        dog2barkButton.layer.borderWidth = outline
        dog2barkButton.layer.borderColor = borderColor
        dog3barkButton.layer.cornerRadius = radius
        dog3barkButton.clipsToBounds = true
        dog3barkButton.layer.borderWidth = outline
        dog3barkButton.layer.borderColor = borderColor
        dog4barkButton.layer.cornerRadius = radius
        dog4barkButton.clipsToBounds = true
        dog4barkButton.layer.borderWidth = outline
        dog4barkButton.layer.borderColor = borderColor
        dog5barkButton.layer.cornerRadius = radius
        dog5barkButton.clipsToBounds = true
        dog5barkButton.layer.borderWidth = outline
        dog5barkButton.layer.borderColor = borderColor
        dog6barkButton.layer.cornerRadius = radius
        dog6barkButton.clipsToBounds = true
        dog6barkButton.layer.borderWidth = outline
        dog6barkButton.layer.borderColor = borderColor
        wolfHowlButton.layer.cornerRadius = radius
        wolfHowlButton.clipsToBounds = true
        wolfHowlButton.layer.borderWidth = outline
        wolfHowlButton.layer.borderColor = borderColor
        packBarkingButton.layer.cornerRadius = radius
        packBarkingButton.clipsToBounds = true
        packBarkingButton.layer.borderWidth = outline
        packBarkingButton.layer.borderColor = borderColor
        dogWhineButton.layer.cornerRadius = radius
        dogWhineButton.clipsToBounds = true
        dogWhineButton.layer.borderWidth = outline
        dogWhineButton.layer.borderColor = borderColor
        humanWhistleButton.layer.cornerRadius = radius
        humanWhistleButton.clipsToBounds = true
        humanWhistleButton.layer.borderWidth = outline
        humanWhistleButton.layer.borderColor = borderColor
        doorBellButton.layer.cornerRadius = radius
        doorBellButton.clipsToBounds = true
        doorBellButton.layer.borderWidth = outline
        doorBellButton.layer.borderColor = borderColor
        meowButton.layer.cornerRadius = radius
        meowButton.clipsToBounds = true
        meowButton.layer.borderWidth = outline
        meowButton.layer.borderColor = borderColor
        
        // Input sounds and get ready to play
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        }
        catch {
            // report for an error
        }
        do {
            pikaSqueak = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "pikaConversation", ofType: "mp3")!));
            pikaSqueak.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            ballSqueak = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "squeakyBall", ofType: "mp3")!));
            ballSqueak.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            doorBell = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "doorBell", ofType: "mp3")!));
            doorBell.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            duckQuack = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "duckQuack", ofType: "mp3")!));
            duckQuack.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            toySqueak = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rubberDuckSqueak", ofType: "mp3")!));
            toySqueak.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            squirrelSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "squirrel", ofType: "mp3")!));
            squirrelSound.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            longSqueakToy = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "longSqueaktoy", ofType: "mp3")!));
            longSqueakToy.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            shortSqueakToy = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "shortSqueaktoy", ofType: "mp3")!));
            shortSqueakToy.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            mouseSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mouseSound", ofType: "mp3")!));
            mouseSound.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            ratSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ratSound", ofType: "mp3")!));
            ratSound.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dog1bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog1sound", ofType: "mp3")!));
            dog1bark.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dog2bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog2sound", ofType: "mp3")!));
            dog2bark.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dog3bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog3sound", ofType: "mp3")!));
            dog3bark.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dog4bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog4sound", ofType: "mp3")!));
            dog4bark.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dog5bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog5sound", ofType: "mp3")!));
            dog5bark.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dog6bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog6sound", ofType: "mp3")!));
            dog6bark.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            wolfHowl = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "wolfHowl", ofType: "mp3")!));
            wolfHowl.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            packBarking = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "packBarking", ofType: "mp3")!));
            packBarking.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            dogWhine = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dogCrying", ofType: "mp3")!));
            dogWhine.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            humanWhistle = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "humanWhistle", ofType: "mp3")!));
            humanWhistle.prepareToPlay();
        } catch {
            print(error)
        }
        do {
            kittenMeow = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "catMeow", ofType: "mp3")!));
            kittenMeow.prepareToPlay();
        } catch {
            print(error)
        }
    }
    
    // Button Actions
    @IBOutlet weak var meowButton: UIButton!
    @IBAction func meowButton(_ sender: Any) {
        kittenMeow.numberOfLoops = -5
        if kittenMeow.isPlaying {
            kittenMeow.stop();
            meowButton.alpha = 1;
            kittenMeow.currentTime = 0;
        } else {
            stopAudio()
            kittenMeow.play();
            meowButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var pikaButton: UIButton!
    @IBAction func pikaButton(_ sender: Any) {
        pikaSqueak.numberOfLoops = -5
        if pikaSqueak.isPlaying {
            pikaSqueak.stop();
            pikaButton.alpha = 1;
            pikaSqueak.currentTime = 0;
        } else {
            stopAudio()
            pikaSqueak.play();
            pikaButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var ballSqueakButton: UIButton!
    @IBAction func ballSqueakButton(_ sender: Any) {
        ballSqueak.numberOfLoops = -5
        if ballSqueak.isPlaying {
            ballSqueak.stop();
            ballSqueakButton.alpha = 1;
            ballSqueak.currentTime = 0;
        } else {
            stopAudio()
            ballSqueak.play();
            ballSqueakButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var duckQuackButton: UIButton!
    @IBAction func duckQuackButton(_ sender: Any) {
        duckQuack.numberOfLoops = -5
        if duckQuack.isPlaying {
            duckQuack.stop();
            duckQuackButton.alpha = 1;
            duckQuack.currentTime = 0;
        } else {
            stopAudio()
            duckQuack.play();
            duckQuackButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var toySqueakButton: UIButton!
    @IBAction func toySqueakButton(_ sender: Any) {
        toySqueak.numberOfLoops = -5
        if toySqueak.isPlaying {
            toySqueak.stop();
            toySqueakButton.alpha = 1;
            toySqueak.currentTime = 0;
        } else {
            stopAudio()
            toySqueak.play();
            toySqueakButton.alpha = 0.5;
        }
    }
    
    
    @IBOutlet weak var squirrelButton: UIButton!
    @IBAction func squirrelButton(_ sender: Any) {
        squirrelSound.numberOfLoops = -5
        if squirrelSound.isPlaying {
            squirrelSound.stop();
            squirrelButton.alpha = 1;
            squirrelSound.currentTime = 0;
        } else {
            stopAudio()
            squirrelSound.play();
            squirrelButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var shortSqueakToyButton: UIButton!
    @IBAction func shortSqueakToyButton(_ sender: Any) {
        shortSqueakToy.numberOfLoops = -5
        if shortSqueakToy.isPlaying {
            shortSqueakToy.stop();
            shortSqueakToyButton.alpha = 1;
            shortSqueakToy.currentTime = 0;
        } else {
            stopAudio()
            shortSqueakToy.play();
            shortSqueakToyButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var longSqueakToyButton: UIButton!
    @IBAction func longSqueakToyButton(_ sender: Any) {
        longSqueakToy.numberOfLoops = -5
        if longSqueakToy.isPlaying {
            longSqueakToy.stop();
            longSqueakToyButton.alpha = 1;
            longSqueakToy.currentTime = 0;
        } else {
            stopAudio()
            longSqueakToy.play();
            longSqueakToyButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var mouseSoundButton: UIButton!
    @IBAction func mouseSound(_ sender: Any) {
        mouseSound.numberOfLoops = -5
        if mouseSound.isPlaying {
            mouseSound.stop();
            mouseSoundButton.alpha = 1;
            mouseSound.currentTime = 0;
        } else {
            stopAudio()
            mouseSound.play();
            mouseSoundButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var ratSoundButton: UIButton!
    @IBAction func ratSoundButton(_ sender: Any) {
        ratSound.numberOfLoops = -5
        if ratSound.isPlaying {
            ratSound.stop();
            ratSoundButton.alpha = 1;
            ratSound.currentTime = 0;
        } else {
            stopAudio()
            ratSound.play();
            ratSoundButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dog1barkButton: UIButton!
    @IBAction func dog1barkButton(_ sender: Any) {
        dog1bark.numberOfLoops = -5
        if dog1bark.isPlaying {
            dog1bark.stop();
            dog1barkButton.alpha = 1;
            dog1bark.currentTime = 0;
        } else {
            stopAudio()
            dog1bark.play();
            dog1barkButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dog2barkButton: UIButton!
    @IBAction func dog2barkButton(_ sender: Any) {
        dog2bark.numberOfLoops = -5
        if dog2bark.isPlaying {
            dog2bark.stop();
            dog2barkButton.alpha = 1;
            dog2bark.currentTime = 0;
        } else {
            stopAudio()
            dog2bark.play();
            dog2barkButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dog3barkButton: UIButton!
    @IBAction func dog3barkButton(_ sender: Any) {
        dog3bark.numberOfLoops = -5
        if dog3bark.isPlaying {
            dog3bark.stop();
            dog3barkButton.alpha = 1;
            dog3bark.currentTime = 0;
        } else {
            stopAudio()
            dog3bark.play();
            dog3barkButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dog4barkButton: UIButton!
    @IBAction func dog4barkButton(_ sender: Any) {
        dog4bark.numberOfLoops = -5
        if dog4bark.isPlaying {
            dog4bark.stop();
            dog4barkButton.alpha = 1;
            dog4bark.currentTime = 0;
        } else {
            stopAudio()
            dog4bark.play();
            dog4barkButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dog5barkButton: UIButton!
    @IBAction func dog5barkButton(_ sender: Any) {
        dog5bark.numberOfLoops = -5
        if dog5bark.isPlaying {
            dog5bark.stop();
            dog5barkButton.alpha = 1;
            dog5bark.currentTime = 0;
        } else {
            stopAudio()
            dog5bark.play();
            dog5barkButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dog6barkButton: UIButton!
    @IBAction func dog6barkButton(_ sender: Any) {
        dog6bark.numberOfLoops = -5
        if dog6bark.isPlaying {
            dog6bark.stop();
            dog6barkButton.alpha = 1;
            dog6bark.currentTime = 0;
        } else {
            stopAudio()
            dog6bark.play();
            dog6barkButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var wolfHowlButton: UIButton!
    @IBAction func wolfHowlButton(_ sender: Any) {
        wolfHowl.numberOfLoops = -5
        if wolfHowl.isPlaying {
            wolfHowl.stop();
            wolfHowlButton.alpha = 1;
            wolfHowl.currentTime = 0;
        } else {
            stopAudio()
            wolfHowl.play();
            wolfHowlButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var packBarkingButton: UIButton!
    @IBAction func packBarkingButton(_ sender: Any) {
        packBarking.numberOfLoops = -5
        if packBarking.isPlaying {
            packBarking.stop();
            packBarkingButton.alpha = 1;
            packBarking.currentTime = 0;
        } else {
            stopAudio()
            packBarking.play();
            packBarkingButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var dogWhineButton: UIButton!
    @IBAction func dogWhineButton(_ sender: Any) {
        dogWhine.numberOfLoops = -5
        if dogWhine.isPlaying {
            dogWhine.stop();
            dogWhineButton.alpha = 1;
            dogWhine.currentTime = 0;
        } else {
            stopAudio()
            dogWhine.play();
            dogWhineButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var humanWhistleButton: UIButton!
    @IBAction func humanWhistleButton(_ sender: Any) {
        humanWhistle.numberOfLoops = -5
        if humanWhistle.isPlaying {
            humanWhistle.stop();
            humanWhistleButton.alpha = 1;
            humanWhistle.currentTime = 0;
        } else {
            stopAudio()
            humanWhistle.play();
            humanWhistleButton.alpha = 0.5;
        }
    }
    
    @IBOutlet weak var doorBellButton: UIButton!
    @IBAction func doorBellButton(_ sender: Any) {
        doorBell.numberOfLoops = -5
        if doorBell.isPlaying {
            doorBell.stop();
            doorBellButton.alpha = 1;
            doorBell.currentTime = 0;
        } else {
            stopAudio()
            doorBell.play();
            doorBellButton.alpha = 0.5;
        }
    }
    
    
    @IBOutlet weak var backToCamera: UIButton!
    @IBAction func backToCamera(_ sender: Any) {
        stopAudio()
        backToCamera.showsTouchWhenHighlighted = true
    }
    
    
    func stopAudio() {
        kittenMeow.stop()
        meowButton.alpha = 1;
        kittenMeow.currentTime = 0;
        pikaSqueak.stop()
        pikaButton.alpha = 1;
        pikaSqueak.currentTime = 0;
        ballSqueak.stop()
        ballSqueakButton.alpha = 1;
        ballSqueak.currentTime = 0;
        duckQuack.stop()
        duckQuackButton.alpha = 1;
        duckQuack.currentTime = 0;
        toySqueak.stop()
        toySqueakButton.alpha = 1;
        toySqueak.currentTime = 0;
        squirrelSound.stop()
        squirrelButton.alpha = 1;
        squirrelSound.currentTime = 0;
        shortSqueakToy.stop()
        shortSqueakToyButton.alpha = 1;
        shortSqueakToy.currentTime = 0;
        longSqueakToy.stop()
        longSqueakToyButton.alpha = 1;
        longSqueakToy.currentTime = 0;
        mouseSound.stop()
        mouseSoundButton.alpha = 1;
        mouseSound.currentTime = 0;
        ratSound.stop()
        ratSoundButton.alpha = 1;
        ratSound.currentTime = 0;
        dog1bark.stop()
        dog1barkButton.alpha = 1;
        dog1bark.currentTime = 0;
        dog2bark.stop()
        dog2barkButton.alpha = 1;
        dog2bark.currentTime = 0;
        dog3bark.stop()
        dog3barkButton.alpha = 1;
        dog3bark.currentTime = 0;
        dog4bark.stop()
        dog4barkButton.alpha = 1;
        dog4bark.currentTime = 0;
        dog5bark.stop()
        dog5barkButton.alpha = 1;
        dog5bark.currentTime = 0;
        dog6bark.stop()
        dog6barkButton.alpha = 1;
        dog6bark.currentTime = 0;
        wolfHowl.stop()
        wolfHowlButton.alpha = 1;
        wolfHowl.currentTime = 0;
        packBarking.stop()
        packBarkingButton.alpha = 1;
        packBarking.currentTime = 0;
        dogWhine.stop()
        dogWhineButton.alpha = 1;
        dogWhine.currentTime = 0;
        humanWhistle.stop()
        humanWhistleButton.alpha = 1;
        humanWhistle.currentTime = 0;
        doorBell.stop()
        doorBellButton.alpha = 1;
        doorBell.currentTime = 0;
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value =  UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    
}




