//
//  ActivityView.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import SwiftUI




struct ActivityView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("orangec"))]
    }
    @State private var total = 0
    @State private var ajouterActi = false
    @State private var ajouterActiv = false

    var boutonUn: Int = 75
    var boutonDeux: Int = 170
   
    func additionner (activite: Int) {
    total += activite
    }
    func soustraire (activite: Int) {
    total -= activite
    }
    var body: some View {
        
        NavigationStack {
            
        ZStack{
            
            Color.orangec
     
                
                VStack{
                    ScrollView {
                        Spacer()
                        HStack{
                            Button {
                                
                            } label: {
                                Text(madrid.name)
                                    .foregroundStyle(.black)
                                    .frame(width:80 , height:50)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                            }
                            Button {
                                
                            } label: {
                                Text(madrid.durée)
                                    .foregroundStyle(.black)
                                    .frame(width: 150 , height:50)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                            }
                            Button {
                                
                            } label: {
                                Text("\(madrid.budget) €")
                                    .foregroundStyle(.black)
                                    .frame(width:80 , height:50)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                            }
                            
                        }//hstack
                        Button {
                            
                        } label: {
                            Text("\(madrid.nombreDePersonnes) personnes")
                                .foregroundStyle(.black)
                                .frame(width:200 , height:50)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        
                        HStack{
                            Button(action: {
                
                            }) {
                                Text("Gastronomie")
                                    .padding()
                                    .background(Color.red)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.red, lineWidth: 3)
                                    )
                                    .frame(width: 130)
                            }
                            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 2)
                            Button(action: {
                
                            }) {
                                Text("Détente")
                                    .padding()
                                    .background(Color.green)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.green, lineWidth: 3)
                                    )
                                    .frame(width: 130)
                            }
                            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 2)
                            
                        }//hstack
                        
                        Image("09")
                            .resizable()
                            .frame(width:400 , height: 200)
                        
                        Button (action: {
                        },label: {
                            Text("Budget activités en cours: \(total)")
                                .foregroundStyle(.black)
                                .bold()
                                .frame(width:250 , height:50)
                                .background(.white)
                                .cornerRadius (15)
                        })
                        
                        NavigationLink {
                            MuseePrado()
                        } label: {
                            VStack(alignment: .leading){
                                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                    .stroke(Color.green, lineWidth: 3)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .frame(width:330, height: 88)
                                  
                           
                                
                                    .overlay {
                                        HStack {
                                            Image("prado.r 1")
                                                .resizable()
                                                .position(x:49, y: 40)
                                                .frame(width:109 , height: 88)
                                                
                                                .padding(.top, 8)
                                          
                                            VStack {
                                                Text(Prado.titre)
                                                    .bold()
                                                    .font(.subheadline)
                                                Text("\(Prado.budjet) €")
                                                    .font(.subheadline)
                                                Text(Prado.description)
                                                    .font(.subheadline)
                                            } // fin vstack
                                            
                                        }
                                    }
                                    }
                        }
                            Spacer()
                            .frame(height: 0)
                        HStack {
                            Spacer()
                            
                            
                            //si t'as appuyé dessus 1 fois, le text "ajouter" doit devenir "retirer"
                            Button {
                               
                                ajouterActi.toggle()
                                if ajouterActi {
                                    additionner (activite: 75)
                                } else { soustraire(activite: 75)
                                    
                                }
                            } label:{
                                Text (ajouterActi ? "Retirer" : "Ajouter")
                                    .foregroundStyle(.black)
                                    .frame(width:100 , height: 40)
                                    .background(.white)
                                    .cornerRadius(15)
                                    .padding(.trailing, 30)
                                    .padding(.top, 5)
                            }
                            
                            Spacer()
                                .frame(width: 0)
                        }
                        
                        NavigationLink {
                            ActivitySan()
                        } label: {
    
                            VStack(alignment: .leading){
                                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                    .stroke(Color.red, lineWidth: 3)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .frame(width:330, height: 88)
                                  
                                
                                    .overlay {
                                        HStack{
                                            Image("sangria.r")
                                                .resizable()
                                                .position(x:49, y: 40)
                                                .frame(width:109 , height: 88)
                                         
                                                .padding(.top, 8)
                                            
                                            VStack {
                                                Text(Sangria.titre)
                                                    .bold()
                                                    .font(.subheadline)
                                                Text("\(Sangria.budjet) €")
                                                    .font(.subheadline)
                                                Text(Sangria.description)
                                                    .font(.subheadline)
                                            }
                                            
                                        }
                                        }
                                    }
                        }
                        Spacer()
                            .frame(height: 0)
                        HStack {
                            Spacer()
                            Button {
                                ajouterActiv.toggle()
                                if ajouterActiv {
                                    additionner (activite: 170)
                                } else { soustraire(activite: 170)
                                }
                            } label:{
                                Text (ajouterActiv ? "Retirer" : "Ajouter")
                                    .foregroundStyle(.black)
                                    .frame(width:100 , height: 40)
                                    
                                    .background(.white)
                                    
                                    .cornerRadius(15)
                                    .padding(.trailing, 30)
                                    .padding(.top, 5)
                            }
                            Spacer()
                                .frame(width: 0)
                        }
                    }
                }//vstack@
            } //zstack
        
        .padding(.bottom)
        }
        }
    }
        
        
    
#Preview {
    ActivityView()
//    Tabview()
    }


