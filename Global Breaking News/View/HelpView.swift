//
//  HelpView.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 23.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI

struct HelpView: View {
     @Environment(\.presentationMode) var presentation
    
    var body: some View{
        List(countrylist){ coun in
            HStack{
                RemoteImage(url: coun.imageurl)
                    .frame(width: 75.0, height: 50.0, alignment: .center)
               
                Text(coun.text)
            }
            Button(""){
                self.presentation.wrappedValue.dismiss()
            }
        }
        
        
        
    }

    var countrylist = [
           
           country(imageurl:  "https://www.worldometers.info/img/flags/ar-flag.gif", text: "for argentina News: -> ar"),
           country(imageurl:  "https://www.worldometers.info/img/flags/au-flag.gif", text: "for australia News: -> au"),
           country(imageurl: "https://www.worldometers.info/img/flags/be-flag.gif", text: "for belgium News: -> be"),
           country(imageurl: "https://www.worldometers.info/img/flags/br-flag.gif", text: "for brazil News: -> br"),
           country(imageurl: "https://www.worldometers.info/img/flags/bg-flag.gif", text: "for bugaria News: -> bg"),
           country(imageurl: "https://www.worldometers.info/img/flags/ca-flag.gif", text: "for canada News: -> ca"),
           country(imageurl: "https://www.worldometers.info/img/flags/cn-flag.gif", text: "for china News: -> cn"),
           country(imageurl: "https://www.worldometers.info/img/flags/co-flag.gif", text: "for colombia News: -> co"),
           country(imageurl: "https://www.worldometers.info/img/flags/cu-flag.gif", text: "for cuba News: -> cu"),
           country(imageurl: "https://www.worldometers.info/img/flags/ez-flag.gif", text: "for czechrepublic News: -> cz"),
           country(imageurl: "https://www.worldometers.info/img/flags/eg-flag.gif", text: "for egypt News: -> eg"),
           country(imageurl: "https://www.worldometers.info/img/flags/fr-flag.gif", text: "for france News: -> fr"),
           country(imageurl: "https://www.worldometers.info/img/flags/gm-flag.gif", text: "for germany News: -> de"),
           country(imageurl: "https://www.worldometers.info/img/flags/gr-flag.gif", text: "for greece News: -> gr"),
           country(imageurl: "https://www.worldometers.info/img/flags/hu-flag.gif", text: "for hungary News: -> hu"),
           country(imageurl: "https://www.worldometers.info/img/flags/in-flag.gif", text: "for india News: -> in"),
           country(imageurl: "https://www.worldometers.info/img/flags/id-flag.gif", text: "for indonesia News: -> id"),
           country(imageurl: "https://www.worldometers.info/img/flags/ei-flag.gif", text: "for ireland News: -> ie"),
           country(imageurl: "https://www.worldometers.info/img/flags/is-flag.gif", text: "for israel News: -> il"),
           country(imageurl: "https://www.worldometers.info/img/flags/it-flag.gif", text: "for italy News: -> it"),
           country(imageurl: "https://www.worldometers.info/img/flags/ja-flag.gif", text: "for japan News: -> jp"),
           country(imageurl: "https://www.worldometers.info/img/flags/lg-flag.gif", text: "for latvia News: -> lv"),
           country(imageurl: "https://www.worldometers.info/img/flags/lt-flag.gif", text: "for lithuania News: -> lt"),
           country(imageurl: "https://www.worldometers.info/img/flags/my-flag.gif", text: "for malasia News: -> my"),
           country(imageurl: "https://www.worldometers.info/img/flags/mx-flag.gif", text: "for mexico News: -> mx"),
           country(imageurl: "https://www.worldometers.info/img/flags/ma-flag.gif", text: "for morocco News: -> ma"),
           country(imageurl: "https://www.worldometers.info/img/flags/nl-flag.gif", text: "for netherlands News: -> nl"),
           country(imageurl: "https://www.worldometers.info/img/flags/nz-flag.gif", text: "for newzealand News: -> nz"),
           country(imageurl: "https://www.worldometers.info/img/flags/ng-flag.gif", text: "for negeria News: -> ng"),
           country(imageurl: "https://www.worldometers.info/img/flags/no-flag.gif", text: "for norway News: -> no"),
           country(imageurl: "https://www.worldometers.info/img/flags/pl-flag.gif", text: "for poland News: -> pl"),
           country(imageurl: "https://www.worldometers.info/img/flags/po-flag.gif", text: "for portugal News: -> pt"),
           country(imageurl: "https://www.worldometers.info/img/flags/ro-flag.gif", text: "for romania News: -> ro"),
           country(imageurl: "https://www.worldometers.info/img/flags/rs-flag.gif", text: "for russia News: -> ru"),
           country(imageurl: "https://www.worldometers.info/img/flags/sa-flag.gif", text: "for suadiarabia News: -> sa"),
           country(imageurl: "https://www.worldometers.info/img/flags/rs-flag.gif", text: "for serbia News: -> rs"),
           country(imageurl: "https://www.worldometers.info/img/flags/sg-flag.gif", text: "for singapore News: -> sg"),
           country(imageurl: "https://www.worldometers.info/img/flags/sk-flag.gif", text: "for slovakia News: -> sk"),
           country(imageurl: "https://www.worldometers.info/img/flags/si-flag.gif", text: "for slovenia News: -> si"),
           country(imageurl: "https://www.worldometers.info/img/flags/kr-flag.gif", text: "for southkorea News: -> kr"),
           country(imageurl: "https://www.worldometers.info/img/flags/se-flag.gif", text: "for sweden News: -> se"),
           country(imageurl: "https://www.worldometers.info/img/flags/tw-flag.gif", text: "for taiwan News: -> tw"),
           country(imageurl: "https://www.worldometers.info/img/flags/th-flag.gif", text: "for thailand News: -> th"),
           country(imageurl: "https://www.worldometers.info/img/flags/tu-flag.gif", text: "for turkey News: -> tr"),
           country(imageurl: "https://www.worldometers.info/img/flags/up-flag.gif", text: "for ukraine News: -> ua"),
           country(imageurl: "https://www.worldometers.info/img/flags/gb-flag.gif", text: "for unitedkingdom News: -> gb"),
           country(imageurl: "https://www.worldometers.info/img/flags/us-flag.gif", text: "for unitedstate News: -> us"),
           country(imageurl: "https://www.worldometers.info/img/flags/ve-flag.gif", text: "for venuzuela News: -> ve"),
           
       ]
       
}


