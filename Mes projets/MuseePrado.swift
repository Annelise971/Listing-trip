//
//  Ecran 3 muser prado.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import SwiftUI

struct MuseePrado: View {
    
    @State private var showingAlert = false
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("orangec"))]
    }
    
    var body: some View {
        
        ZStack {
            Color.orangec
            
            VStack {
                
                VStack {
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 130, height: 50)
                            .foregroundColor(.white)
                            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 20, bottomLeading: 0, bottomTrailing: 0, topTrailing: 20)))
                            .shadow(color: .yellow, radius: 0, x: 8, y: 1)
                        
                        VStack {
                            Text(Prado.categorie)
                                .bold()
                                .padding(.bottom, -4.0)
                            
                        }
                    }
                    
                    .padding(.trailing, 240.0)
                }
                
                .padding(.bottom, -9.0)
                
                VStack {
                    
                    
                    Image("prado")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 370, height: 150, alignment: .center)
                        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 0, bottomTrailing: 0, topTrailing: 30)))
                        .shadow(radius: 10, x: 1, y: 10)
                    
                    
                        .padding(.bottom, -24.0)
                    // .padding(.horizontal, 19.0)
                    
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 30, bottomTrailing: 30, topTrailing: 0)))
                                .frame(width: 370, height: 380)
                                .foregroundColor(Color.white)
                                .shadow(radius: 10, x: 1, y: 10)
                            
                            VStack (alignment: .leading) {
                                Text(Prado.titre)
                                    .font(.largeTitle)
                                    .padding(.bottom)
                                
                                Text("Tarifs de groupe: \(Prado.budjet) €")
                                Text(Prado.tempsActivitée)
                                Text(Prado.adresse)
                                Text(Prado.telephone)
                                    .padding(.bottom)
                                Text(Prado.description)
                                Text(Prado.lienweb)
                            }
                            .padding(.horizontal, 19.0)
                        }
                        .padding()
                        
                    }
                    
                }
                
                VStack {
                    Button(action: {
                        showingAlert = true
                    }, label: {
                        Text("Ajouter cette activité")
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .shadow(radius: 10, x: 1, y: 10)
                        
                    })
                    .alert("Votre activité a bien été enregistré dans la destination MADRID !", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }
                    
                }
                
            }
            
        }
    }
}
    #Preview {
        MuseePrado()
    }
    

