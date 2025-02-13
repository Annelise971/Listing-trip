//
//  MaScreen.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 05/06/2024.
//

import SwiftUI
import MapKit

struct Location : Identifiable {
    var id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct MaScreen: View {
    
    var locations = [
        Location(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)),
        Location(name: "Tokyo", coordinate: CLLocationCoordinate2D(latitude: 35.682194, longitude: 139.762221)),
        Location(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.918639657910816, longitude: 12.483113871917714)),
        Location(name: "Bangkok", coordinate: CLLocationCoordinate2D(latitude: 13.761229251291944, longitude: 100.52529107842545))
    ]
    
    @State var position: MapCameraPosition = .automatic
    @State private var searchTerm = ""
    @State var coco = ""
    //@State private var selectLocation: Location? = nil
    //@State private var showPopover = false
    @State private var showModal = false
    @State private var readyToNavigate: Bool = true
    @State private var selectedMarker: Location?
    
    //cherche un endroit sur le map
    var search : [Location] {
        if searchTerm.isEmpty {
            return locations
        } else {
            return locations.filter { $0.name.lowercased().contains(searchTerm.lowercased()) }
        }
    }
    
    
    var body: some View {
        NavigationStack
        {
            ZStack {
                Text(selectedMarker?.name ?? "no selection")
                //boucle sur locations et afficher le marker dans le map
                Map(position: $position) {
                    
                    ForEach(locations) { location in
                        Marker(location.name,coordinate: location.coordinate)
                            .tag(location.id)
                    }
                }
                
                Text(coco)
                VStack {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        //barre de recherche sur le 1 position
                        TextField("chercher votre activités", text: $searchTerm, onCommit: {
                            if let firstPosition = search.first {
                                position = MapCameraPosition.region(
                                    MKCoordinateRegion(
                                        center: firstPosition.coordinate,
                                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                    ))
                            }
                        })
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 40))
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .padding(.top)
                    .padding(.bottom, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Button(action: {
                                position = MapCameraPosition.region(
                                    MKCoordinateRegion(
                                        center: CLLocationCoordinate2D(latitude: 35.682194, longitude: 139.762221),
                                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                    )
                                )
                                
                                showModal.toggle()
                                
                            }) {
                                Label("Tea ceremony", systemImage: "mug.fill")
                                    .buttonStyle(.plain)
                                    .padding(8)
                                    .background(Color("ColorButtons"))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                            }
                            .sheet(isPresented: $showModal) {
                                ModalListLieux()
                                    .presentationDetents([.height(300), .large])
                            }
                            
                            Button(action: {
                                
                                position = MapCameraPosition.region(
                                    MKCoordinateRegion(
                                        center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522),
                                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                    )
                                )
                                
                                showModal.toggle()
                                
                            }) {
                                Label("Cheese", systemImage: "heart.fill")
                                    .buttonStyle(.plain)
                                    .padding(10)
                                    .background(Color("ColorButtons"))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                                
                            }
                            .sheet(isPresented: $showModal) {
                                SheetView()
                                    .presentationDetents([.height(300), .large])
                            }
                            
                            Button(action: {
                                
                                position = MapCameraPosition.region(
                                    MKCoordinateRegion(
                                        center: CLLocationCoordinate2D(latitude: 41.918639657910816, longitude: 12.483113871917714),
                                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                    )
                                )
                                
                                showModal.toggle()
                                
                            }) {
                                Label("Masque", systemImage: "theatermasks")
                                    .buttonStyle(.plain)
                                    .padding(10)
                                    .background(Color("ColorButtons"))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                            }
                            
                            Button(action: {
                                
                                position = MapCameraPosition.region(
                                    MKCoordinateRegion(
                                        center: CLLocationCoordinate2D(latitude: 13.761229251291944, longitude: 100.52529107842545),
                                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                    )
                                )
                                
                                showModal.toggle()
                                
                            }) {
                                Label("Thai danse", systemImage: "flame.fill")
                                    .buttonStyle(.plain)
                                    .padding(10)
                                    .background(Color("ColorButtons"))
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                            }
                            
                            
                            NavigationLink(destination: EcranFiiltrage())
                            {
                                HStack
                                {
                                    Text("Plus")
                                    Image(systemName: "plus.app.fill")
                                }
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color("ColorButtons"))
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                                
                                
                            }
                                    Text("Filtre")
                                    Image(systemName: "plus.app.fill")
                                }
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color("ColorButtons"))
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                                
                                
                            }
                            
                            NavigationLink(destination: AddActivity())
                            {
                                HStack
                                {
                                    Text("Ajouter")
                                    Image(systemName: "plus.app.fill")
                                }
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color("ColorButtons"))
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                                
                                
                            }
                            
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    Spacer()
                    
                }
                
            }
        }
    

#Preview {
    MaScreen()
}

extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}
