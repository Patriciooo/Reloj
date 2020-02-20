//
//  AppDelegate.swift
//  Reloj
//
//  Created by Patricio Alberola Gutiérrez on 15/02/2019.
//  Copyright © 2019 Patricio Alberola Gutiérrez. All rights reserved.
// 

import Cocoa

extension Date {
    
    func dayOfWeek() -> Int? {
        if
            
            let cal: NSCalendar = NSCalendar.current as NSCalendar?,
            let comp: NSDateComponents = cal.components(.weekday, from: self) as NSDateComponents? {
            return comp.weekday
        } else {
            return nil
        }
    }
    
}





@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var LabelHora: NSTextField!
    
    @IBOutlet weak var prueba: NSTextField!
    
    
    @IBOutlet weak var Domingo: NSTextField!
    
    @IBOutlet weak var Lunes: NSTextField!
    
    @IBOutlet weak var Martes: NSTextField!
    
    @IBOutlet weak var Miercoles: NSTextField!
    
    @IBOutlet weak var Jueves: NSTextField!
    
    @IBOutlet weak var Viernes: NSTextField!
    
    @IBOutlet weak var Sabado: NSTextField!
    
    
    @IBOutlet weak var GuionLunes: NSTextField!
    
    @IBOutlet weak var GuionMartes: NSTextField!
    
    @IBOutlet weak var GuionMiercoles: NSTextField!
    
    @IBOutlet weak var GuionJueves: NSTextField!
    
    @IBOutlet weak var GuionViernes: NSTextField!
    
    @IBOutlet weak var GuionSabado: NSTextField!
    
    @IBOutlet weak var GuionDomingo: NSTextField!
    
    @IBOutlet weak var LabelFecha: NSTextField!
    
    
    var timer = Timer()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
       
        window.isMovableByWindowBackground = true
        window.isOpaque = false
        window.backgroundColor = NSColor(hue: 0, saturation: 1, brightness: 0, alpha: 0.6)
        window.makeKeyAndOrderFront(nil)
        TimerFecha()
       

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
    func TimerFecha() {
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FechaYHora), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func FechaYHora(){
        
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        print(timestamp)
        let datestamp = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
        print(datestamp)
        
        LabelHora.stringValue = timestamp
        LabelFecha.stringValue = datestamp

        let dia = Date().dayOfWeek()
        
        if dia == 1 {
            
            GuionDomingo.isHidden = false
            GuionLunes.isHidden = true
            GuionMartes.isHidden = true
            GuionMiercoles.isHidden = true
            GuionJueves.isHidden = true
            GuionViernes.isHidden = true
            GuionSabado.isHidden = true

        }
        if dia == 2 {
            
            GuionDomingo.isHidden = true
            GuionLunes.isHidden = false
            GuionMartes.isHidden = true
            GuionMiercoles.isHidden = true
            GuionJueves.isHidden = true
            GuionViernes.isHidden = true
            GuionSabado.isHidden = true
        }
        if dia == 3 {
            
            GuionDomingo.isHidden = true
            GuionLunes.isHidden = true
            GuionMartes.isHidden = false
            GuionMiercoles.isHidden = true
            GuionJueves.isHidden = true
            GuionViernes.isHidden = true
            GuionSabado.isHidden = true
        }
        if dia == 4 {
            
            GuionDomingo.isHidden = true
            GuionLunes.isHidden = true
            GuionMartes.isHidden = true
            GuionMiercoles.isHidden = false
            GuionJueves.isHidden = true
            GuionViernes.isHidden = true
            GuionSabado.isHidden = true
        }
        if dia == 5 {
            
            GuionDomingo.isHidden = true
            GuionLunes.isHidden = true
            GuionMartes.isHidden = true
            GuionMiercoles.isHidden = true
            GuionJueves.isHidden = false
            GuionViernes.isHidden = true
            GuionSabado.isHidden = true
        }
        if dia == 6 {
          
            GuionDomingo.isHidden = true
            GuionLunes.isHidden = true
            GuionMartes.isHidden = true
            GuionMiercoles.isHidden = true
            GuionJueves.isHidden = true
            GuionViernes.isHidden = false
            GuionSabado.isHidden = true

            
        }
        if dia == 7 {
            
            GuionDomingo.isHidden = true
            GuionLunes.isHidden = true
            GuionMartes.isHidden = true
            GuionMiercoles.isHidden = true
            GuionJueves.isHidden = true
            GuionViernes.isHidden = true
            GuionSabado.isHidden = false
        }
    }
}

