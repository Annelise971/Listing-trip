




import SwiftUI

struct ActivitySan: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("orangec"))]
    }
    @State private var showingAlert = false

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
                                .shadow(color: .red, radius: 0, x: 8, y: 1)
                            
                            VStack {
                                Text(Sangria.categorie)
                                    .bold()
                                    .padding(.bottom, -4.0)
                                
                            }
                        }
                        
                        .padding(.trailing, 240.0)
                    }.padding(.bottom, -9.0)
                    
                    VStack {
                        Image("sangria")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 370, height: 150, alignment: .center)
                            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 0, bottomTrailing: 0, topTrailing: 30)))
                            .shadow(radius: 10, x: 1, y: 10)
                        
                        
                            .padding(.bottom, -24.0)
                        // .padding(.horizontal, 19.0)
                        
                        
                        VStack {
                            ZStack{
                            Rectangle()
                             .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 30, bottomTrailing: 30, topTrailing: 0)))
                                .frame(width: 370, height: 380)
                                .foregroundColor(Color.white)
                                .shadow(radius: 10, x: 1, y: 10)

                            VStack (alignment: .leading) {
                                Text(Sangria.titre)
                                    .font(.largeTitle)
                                    .padding(.bottom)

                                Text("Tarifs de groupe: \(Sangria.budjet) €")
                                Text(Sangria.tempsActivitée)
                                Text(Sangria.adresse)
                                Text(Sangria.telephone)
                                
                                    .padding(.bottom)
                                Text(Sangria.description)
                                Text (Sangria.lienweb)
                                }
                            .padding(.horizontal, 19.0)
                          // .paddin (.bottom, 20) augmenter titre du texte
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
                
                .navigationTitle("Les Activités")
                
            }
          
        }
      
}


#Preview {
    ActivitySan()
}


