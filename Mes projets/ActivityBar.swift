//
//  ActivityBar.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import SwiftUI


struct ActivityBar: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("orange"))]
    }
    var Flamenco = Activité (titre: "Spectacle de Flamenco au City Hall", description: "Venez découvrir ou re découvrir le Flamenco, un art traditionnel espagnol, classé au patrimoine mondial de l'UNESCO en 2010. Regardez certains des artistes les plus talentueux d'Espagne créer une atmosphère unique avec de la musique des chants et des danses", image: "flamenco", budjet: 150, categorie: "Culture", choisi: false, adresse: "Rambla de Catalunya, 2, Eixample 08007 Barcelone", telephone: "+34660769865", tempsActivitée:"1 heure", lienweb: "")

    
    
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
                            Text(Flamenco.categorie)
                            .bold()
                            .padding(.bottom, -4.0)

                                }
                        }
                    
                        .padding(.trailing, 240.0)
                    }
                

                .padding(.bottom, -9.0)

                VStack {
                    
                    
                    Image("flamenco")
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
                            .frame(width: 370, height: 410)
                            .foregroundColor(Color.white)
                            .shadow(radius: 10, x: 1, y: 10)

                        VStack (alignment: .leading) {
                            Text(Flamenco.titre)
                                .font(.largeTitle)
                                .padding(.bottom)

                            Text("Tarifs de groupe: \(Flamenco.budjet) €")
                            Text(Flamenco.tempsActivitée)
                            Text(Flamenco.adresse)
                            Text(Flamenco.telephone)
                                .padding(.bottom)
                            Text(Flamenco.description)

                            }
                        .padding(.horizontal, 19.0)
                        }
                 .padding()

                    }
                    
                    
                }
                
                VStack {
                    NavigationLink {
                        
                    } label: {
                            Text("Ajouter cette activité")
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                                .padding()
                                .background(.white)
                                .cornerRadius(20)
                                .shadow(radius: 10, x: 1, y: 10)
                                               
                                    
                    };
                
        }
             
            }
            
        }
        .navigationTitle("Les Activités")
    }
}


#Preview {
    ActivityBar()
}

