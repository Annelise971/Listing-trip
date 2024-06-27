//
//  TabView.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//


import SwiftUI

struct Tabview: View {
    
   
    var body: some View {
        ZStack {

            TabView {

             
                OneView()
                    .tabItem {
                        Label ("Créer un voyage", systemImage: "plus.circle.fill")
                    }
               
                MesVoyagesView()
                    .tabItem {
                        Label ("Mes voyages", systemImage: "airplane.departure")
                    }
          
            } // fin tabview
            
            
            
            
            
            
            
            
            
            
            
            
            
        } //fin Zstack
    }
}

#Preview {
    Tabview()
}

