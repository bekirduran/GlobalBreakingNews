//
//  ContentView.swift
//  Global Breaking News
//
//  Created by Bekir Duran on 19.03.2020.
//  Copyright © 2020 info. All rights reserved.
//

import SwiftUI

struct ContentView: View {
@State var isActive : Bool = false
@State var lang:String = ""
@State var showingHelp = false
    

    var body: some View {
        NavigationView{
           ZStack {
              Color(red:0.03, green:0.63, blue:0.52, opacity: 0.3)
                   .edgesIgnoringSafeArea(.all)
            VStack (alignment: .trailing){
                
               Image("world")
               .resizable()
               .aspectRatio(contentMode: .fit)
                HStack {
                    TextField("Enter Country (exp: 'tr')", text: $lang)
                            .font(.system(size: 30))
                            .padding()
                        .multilineTextAlignment(TextAlignment.center)
                    
                    if validate {
                    NavigationLink(destination: NewsView(rootIsActive: self.$isActive, langroot: lang  ),isActive: self.$isActive    ) {
                            Text("Go->\(lang)").font(.system(size: 30))}.isDetailLink(false)
                    }
                }
                 Spacer()
                    Button("Help"){self.showingHelp.toggle()}.sheet(isPresented: $showingHelp){HelpView()}.foregroundColor(.black)
            }
                .padding()
            }
        }.foregroundColor(.black)
    }
    private var validate:Bool{
        !lang.isEmpty
    }
}



