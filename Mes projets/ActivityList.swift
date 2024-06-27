//
//  ActivityList.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//

import SwiftUI
struct ActivityList: View {
    @State private var showingAlert = false
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("orangec"))]
    }
    var body: some View {
        ZStack {
   //         Button("Show Alert") {
     //                   showingAlert = true
       //             }
                    
            Color.orangec
            VStack {
                ScrollView {
                    Group {
                        
                        VStack(spacing: 20) {
                            
                            //début Button
                            Button(action: {
                                showingAlert = true
                            }, label: {
                                VStack(alignment: .leading) { // Vstack1
                                    
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                        .foregroundStyle(.white)
                                        .frame(width: 365, height: 105)
                                        .shadow(color: Color.orange.opacity(1), radius: 3, x: 0, y: 4)
                                        .overlay {
                                            Image(madrid.image)
                                                .resizable()
                                                .frame(width: 123, height: 105)
                                                .clipShape(
                                                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 12, bottomLeading: 12, bottomTrailing: 12, topTrailing: 12)))
                                                .shadow(color: Color.orange.opacity(1), radius: 3, x: 0, y: 4)
                                                .padding(.trailing, 242)
                                            VStack (alignment: .leading) { // Vstack 2
                                                Text(madrid.name)
                                                    .bold()
                                                Text("\(madrid.nombreDePersonnes) personnes")
                                                Text("\(madrid.budget)€")
                                                
                                                Text(madrid.durée)
                                            } // fin Vstack 2
                                            
                                            
                                           
                                             .padding(.leading, 95)
                                        }//fin overlay
                                } // fin vstack1
                            }) //fin label
                   
                            .alert("Votre activité a bien été enregistré", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                            }
                            
                            
                           
                            
                            Button(action: {
                                showingAlert = true
                            }, label: {
                                VStack(alignment: .leading) { // Vstack3
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                        .foregroundStyle(.white)
                                        .frame(width: 365, height: 105)
                                        .shadow(color: Color.orange.opacity(1), radius: 3, x: 0, y: 4)
                                        .overlay {
                                            Image(barcelone.image)
                                                .resizable()
                                                .frame(width: 123, height: 105)
                                            
                                                .clipShape(
                                                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 12, bottomLeading: 12, bottomTrailing: 12, topTrailing: 12)))
                                                .shadow(color: Color.orange.opacity(1), radius: 3, x: 0, y: 4)
                                                .padding(.trailing, 242)
                                            VStack(alignment: .leading) { // Vstack 4
                                                Text(barcelone.name)
                                                    .bold()
                                                Text("\(barcelone.nombreDePersonnes) personnes")
                                                Text("\(barcelone.budget)€")
                                                
                                                Text(barcelone.durée)

                                                
                                            } //fin Vstack 4
                                             .padding(.leading, 95)
                                        }//fin overlay
                                } // fin vstack3
                            }) // fin label et action
                            
                            
                            Button(action: {
                                showingAlert = true
                            }, label: {
                                VStack(alignment: .leading) { // Vstack5
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                                        .foregroundStyle(.white)
                                        .frame(width: 365, height: 105)
                                        .shadow(color: Color.orange.opacity(1), radius: 3, x: 0, y: 4)
                                        .overlay {
                                            Image(marrakech.image)
                                                .resizable()
                                                .frame(width: 123, height: 105)
                                                .clipShape(
                                                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 12, bottomLeading: 12, bottomTrailing: 12, topTrailing: 12)))
                                                .shadow(color: Color.orange.opacity(1), radius: 3, x: 0, y: 4)
                                                .padding(.trailing, 242)
                                            VStack(alignment: .leading) { // Vstack 6
                                                
                                                Text(marrakech.name)
                                                    .bold()
                                                Text("\(marrakech.nombreDePersonnes) personnes")
                                                Text("\(marrakech.budget)€")
                                                Text(marrakech.durée)
                                            
                                            } //fin Vstack 6
    
                                            .padding(.leading, 95)
                                        
                                        } // fin overlay
                                } // fin Vstack5
                            }) //fin label

                            
                            
                        } //fin Vstack
                        
                    } //fin group
                    
                } // fin scroll view
               
            }
            .padding(.top)
           

        } //fin Zstack
         
        .navigationTitle("Ajout")
          

        }
}



#Preview {
    ActivityList()
}

