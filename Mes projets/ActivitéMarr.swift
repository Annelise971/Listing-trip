//
//  ActivityTwo.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import SwiftUI



struct ActivitéMarr: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("orangec"))]
    }
    @State private var isButtonSelected = false
    let FondDecran = Color(red: 0xFF/255,green: 0xEE/255,blue: 0x7A/255)
    
    var body: some View {
        ScrollView{
            ZStack{
                Color.orangec
                
                
                Section {
                    VStack {
                        Image("maroc")
                            .resizable()
                            .frame(width: 393, height: 263)
                            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 15, bottomTrailing: 15, topTrailing: 0)))
                        
                        HStack { // 1er Hstack
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                .foregroundStyle(.white)
                                .frame(width:200 , height:50)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .overlay{ Text ("\(marrakech.nombreDePersonnes) personnes") }
                            
                        } // fin 1er Hstack
                        
                        HStack { // 2eme Hstack
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                            
                                .foregroundStyle(.white)
                                .frame(width:140 , height:50)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .overlay{ Text("\(marrakech.budget) €") }
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                .frame(width:200 , height:50)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .foregroundColor(.white)
                                .overlay{ Text("\(marrakech.durée)") }
                            
                            
                        } //fin 2 eme Htack
                        HStack{ // 3 eme hstack
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                .frame(width: 90, height: 50)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                .foregroundColor(.green)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.green, lineWidth: 2)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2))
                                .overlay{ Text("Aventure") }
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                .frame(width: 130, height: 50)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                .foregroundColor(.red)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.red, lineWidth: 2)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2))
                                .overlay{ Text("Gastronomie") }
                            
                            
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                .frame(width: 90, height: 50)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                .foregroundColor(.green)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.green, lineWidth: 2)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2))
                                .overlay{ Text("Détente") }
                            
                            
                            
                            
                        } // fin 3 eme Hstack
                        
                        Button (action: {
                        },label: {
                            Text("Budget activités en cours: \(marrakech.budgetActivitée) €")
                                .foregroundStyle(.black)
                                .bold()
                                .frame(width:290 , height:50)
                                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                                .background(.white)
                                .cornerRadius (15)
                        })
                        
                        ForEach(Mar) { destination in
                            
                            //tous les éléments de ton array auront ce design v
                            
                            Button(action: {
                                
                                self.isButtonSelected.toggle()
                                
                            }) {
                                Image (systemName: isButtonSelected ? "trash.fill" : "Trash")
                                    .foregroundStyle(isButtonSelected ? .red : .black)
                                HStack {
                                    VStack {
                                        Image(destination.image)
                                            .resizable()
                                            .position(x:61 , y:58)
                                            .frame(width:150 , height: 130)
                                        
                                        
                                        
                                    }
                                    VStack{
                                        Text(destination.titre)
                                            .bold()
                                        Text("\(destination.budjet) €")
                                        Text(destination.description)
                                    }
                                }
                                .foregroundStyle(.black)
                                .frame(width:360 , height:100)
                                .background(.white)
                                .cornerRadius(15)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.white, lineWidth: 2)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2))
                                
                                
                                
                                
                                //fin du label
                            }
                            //fin Vstack
                        }
                        
                        
                    } //fin Vstack
                }
            }
            .navigationTitle("Les Activités")
        }
        .scrollContentBackground(.hidden)
    
    }
}

#Preview {
    ActivitéMarr()
}
