//
//  OneView.swift
//  Mes projets
//
//  Created by Apprenant 162 on 27/06/2024.
//
import SwiftUI

struct OneView: View {
    
    @State private var BoutonLieu = false
    @State private var BoutonDurée = false
    @State private var BoutonBudget = false
    @State private var BoutonNbdepers = false
    @State private var saisie: String = ""
    @State private var saisieDurée: String = ""
    @State private var saisieNbDePers: String = ""
    @State private var saisieLieu: String = ""
    
    
    @State private var isNavigationdisabled: Bool = true
    
    @State private var BoutonCulture: Bool = false
    @State private var BoutonGastronomie: Bool = false
    @State private var BoutonDétente: Bool = false
    @State private var BoutonAventure: Bool = false
    @State private var BoutonSportif: Bool = false
    @State private var BoutonCamping: Bool = false
    
    func ConditionRempli() {
        if !saisieLieu.isEmpty && !saisie.isEmpty && !saisieNbDePers.isEmpty && !saisieDurée.isEmpty   {
            if BoutonCulture || BoutonGastronomie || BoutonDétente || BoutonAventure || BoutonSportif || BoutonCamping {
                isNavigationdisabled = false
            } else {
                isNavigationdisabled = true
            }
            
        } else {
            isNavigationdisabled = true
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.orangec
                ScrollView {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack(spacing: 20) {
                        VStack {
                            HStack {
                                ZStack {
                                    
                                    Image("photobarcelona")
                                        .resizable()
                                        .frame(height: 225)
                                    
                                        .opacity(0.930)
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .opacity(0.5)
                                        .frame(width: 200, height: 50)
                                        .clipShape(
                                            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 0, bottomTrailing: 0, topTrailing: 15)))
                                        .position(x: 100, y: 200)
                                        .overlay(
                                            
                                            
                                            Text("Listing Trip")
                                                .font(.title)
                                                .foregroundStyle(.white)
                                                .bold()
                                                .padding(.top, 177)
                                                .padding(.trailing, 230))
                                    
                                }
                            }
                        }
                        .padding(.top, -50)
                        VStack {
                            HStack {
                                Mes4Boutons(isNavigationdisabled: $isNavigationdisabled, BoutonLieu: $BoutonLieu, Saisie: $saisieLieu, nom: "Lieu", Width: 88, Height: 30, text: "Choisir le lieu", titre: "Choisir le lieu")
                                Mes4Boutons(isNavigationdisabled: $isNavigationdisabled, BoutonLieu: $BoutonDurée, Saisie: $saisieDurée, nom: "Durée",  Width: 88, Height: 30, text: "Entrez vos dates", titre: "Entrez vos dates")
                                Mes4Boutons(isNavigationdisabled: $isNavigationdisabled, BoutonLieu: $BoutonBudget, Saisie: $saisie, nom: "Budget",  Width: 88, Height: 30, text: "Entrez votre budget", titre: "Entrez votre budget")
                            }
                            Mes4Boutons(isNavigationdisabled: $isNavigationdisabled, BoutonLieu: $BoutonNbdepers, Saisie: $saisieNbDePers, nom: "Nombre de personnes", Width: 264, Height: 30, text: "Entrez le nombre de personnes", titre: "Entrez le nombre de personnes")
                        }
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(height: 230)
                                .overlay {
                                    VStack {
                                        HStack {
                                            Text("Que recherchez-vous ?")
                                                .font(.title2)
                                                .foregroundColor(.orange)
                                                .underline(color: .red)
                                                .padding(.trailing, 150)
                                        }
                                        Spacer()
                                        VStack {
                                            HStack {
                                                MyCustomButton(isNavigationdisabled: $isNavigationdisabled, isButtonPressed: $BoutonCulture, text: "Culture", BoutonActivé: .yellow, BordureColor: .yellow)
                                                MyCustomButton(isNavigationdisabled: $isNavigationdisabled, isButtonPressed: $BoutonGastronomie, text: "Gastronomie", BoutonActivé: .red, BordureColor: .red)
                                                MyCustomButton(isNavigationdisabled: $isNavigationdisabled, isButtonPressed: $BoutonDétente,  text: "Détente", BoutonActivé: .pink, BordureColor: .pink)
                                            }
                                            .padding()
                                            HStack {
                                                MyCustomButton(isNavigationdisabled: $isNavigationdisabled, isButtonPressed: $BoutonAventure, text: "Aventure", BoutonActivé: .green, BordureColor: .green)
                                                MyCustomButton(isNavigationdisabled: $isNavigationdisabled, isButtonPressed: $BoutonSportif, text: "Sportif", BoutonActivé: .blue, BordureColor: .blue)
                                                MyCustomButton(isNavigationdisabled: $isNavigationdisabled, isButtonPressed: $BoutonCamping,  text: "Camping", BoutonActivé: .orange, BordureColor: .orange)
                                            }
                                            .padding()
                                        }
                                        .padding(.bottom)
                                        Spacer()
                                    }
                                }
                            
                        }
                        
                        NavigationLink(destination: ActivityView()) {
                            Text("Je crée mon voyage")
                                .fontWeight(.bold)
                                .padding()
                                .background(Color.orange)
                                .foregroundColor(.black)
                                .cornerRadius(15)
                        }
                        .frame(width: 300)
                        .disabled(isNavigationdisabled)
                    }
                }
            }
            .onChange(of: [saisieNbDePers, saisie, saisieLieu, saisieDurée, BoutonCulture.description, BoutonGastronomie.description, BoutonDétente.description, BoutonAventure.description, BoutonSportif.description, BoutonCamping.description]) { _ , newValue in
                ConditionRempli()
            }
        }
        .navigationTitle("Je crée mon voyage")
    }
    
    
    
    
    struct MyCustomButton: View {
        
        @Binding var isNavigationdisabled: Bool
        @Binding var isButtonPressed: Bool
        
        var text: String
        var BoutonActivé: Color
        var BordureColor: Color
        
        var body: some View {
            Button(action: {
                self.isButtonPressed.toggle()
                print("Bouton cliqué !")
            }) {
                Text(text)
                    .padding()
                    .background(isButtonPressed ? BoutonActivé: .white)
                    .foregroundColor(Color.black)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(BordureColor, lineWidth: 3)
                    )
                    .frame(width: 130)
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 2)
            
        }
    }
    
    struct Mes4Boutons: View {
        
        @Binding var isNavigationdisabled: Bool
        @Binding var BoutonLieu: Bool
        @Binding var Saisie: String
        
        var nom: String
        var Width: CGFloat
        var Height: CGFloat
        var text: String
        var titre: String
        var body: some View {
            Button(action: {
                BoutonLieu.toggle()
                
            }) {
                Text(nom)
                    .frame(width: Width, height: Height)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(15)
                
            }
            .alert(titre, isPresented: $BoutonLieu) {
                TextField(text, text: $Saisie)
                Button("Ok") {
                }
            }
        }
    }
    
}
#Preview {
    //Ecran_1()
    OneView()
}
