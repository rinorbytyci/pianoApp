//
//  ViewController.swift
//  Piano
//
//  Created by Rinor Bytyci on 10/16/17.
//  Copyright © 2017 Rinor Bytyci. All rights reserved.
//

import UIKit

//Importojme AVFoundation ne menyre qe te mund ti casemi Klasave qe gjenden brenda kesaj librarie
import AVFoundation

class ViewController: UIViewController {
    
    //Deklarojme nje variabel me emrin "audioPlayer" qe eshte e tipit AVAudioPlayer
    //Per me shume info: https://developer.apple.com/documentation/avfoundation/avaudioplayer
    var audioPlayer:AVAudioPlayer!
    //Deklarojme nje varg qe permbane emrat e audio fajllave tone
    var notat = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //Action Funksioni ne te cilin jane te lidhur te gjithe Button-at nga View ne Main.storyboard
    //Secili buton qe shtypet, dergohet si parameter tek "sender" qe e deklarojme si tip UIButton
    //Parametri "sender" mund te deklarohet si UIButton ngaqe e dijme qe vetem butonat e therrasin kete Aksion
    @IBAction func playSound(_ sender: UIButton) {
        
        //Ne ViewController tek main.storyboard, tek Attributes Inspector i secilit button
        //e nderrojme vleren e "tag" ne menyre qe te identifikojme se cili button eshte shtypur.
        //Vleren e "tag" te butonit e lexojme duke ju casur kesaj variable nga "sender" butoni
        var butoniIShtypur:Int = sender.tag
        
        //Lexojme URL-in se ku brenda aplikacionit tone gjendet audio fajlli qe ne duam ta bejme play.
        //Nga vargu "notat", lexojme elementin perkates dhe marrim prapa emrin e audio fajllit tone.
        //P.sh. Nese eshte shtypur butoni 1, me siper kem variablin butoniIShtypur qe do kete vleren 0
        //kurse nga vargu "notat" do lexohej notat[0] qe do kthente Stringun "note1"
        //prapashtesa e te gjithe audio fajlleve eshte "wav"
        var audioFile = Bundle.main.url(forResource: notat[butoniIShtypur], withExtension: "wav")
        
        
        //Inicializojme audioPlayer qe eshte variabla e deklaruar me siper e tipit AVAudioPlayer
        //duke ja japur si parameter klases AVAudioPlayer pathin e audio fajllit
        audioPlayer = try! AVAudioPlayer(contentsOf: audioFile!)
        
        //Ekzekutojme funksionin play() te objektit tone te ri qe te bej play audio fajllin tone
        audioPlayer.play()
    }
    
    
    
    
}

