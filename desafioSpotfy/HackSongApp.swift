//
//  HackSongApp.swift
//  desafioSpotfy
//
//  Created by Student07 on 01/08/23.
//

import SwiftUI

struct HackSongApp: View {
    
    
    
    var filteredMeMusics: [Song] {
           if searchText.isEmpty {
               return listaMusicas
           } else {
               return listaMusicas.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
           }
       }
    
    public let listaMusicas = [Song(id: 1, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 2, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 3, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 4, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 5, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 6, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               Song(id: 7, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 8, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 9, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 10, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 11, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),Song(id: 2, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 12, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 13, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 14, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 15, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               Song(id: 16, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 17, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 18, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
                               
                               Song(id: 19, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/440px-The_Dark_Side_of_the_Moon_Cover.svg.png"),
                               
                               Song(id: 20, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"),
    ]
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack{
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 160, height: 160)
                        
                        
                        Image("logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70)
                    }
                    ScrollView {
                        
                        VStack{
                            Text("hackT FM")
                                .offset(x:-150)
                                .bold()
                            
                            ForEach(filteredMeMusics) { musica in
                                NavigationLink(destination: SongDetail(song: musica)){
                                    HStack{
                                        AsyncImage(url: URL(string:musica.capa)){ image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 50, height: 50)
                                        VStack{
                                            Text("musica: \(musica.name)")
                                                .foregroundColor(.white)
                                            Text("artista: \(musica.artist)")
                                                .foregroundColor(.white)
                                            
                                        }
                                        .frame(width: 300,height: 30)
                                        Image(systemName:"ellipsis")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 15, height: 1)
                                        
                                    }
                                }
                            }
                        }
                        AlbunsView()
                    }
                    .searchable(text: $searchText)
                }
            }
        }
    }
}



struct HackSongApp_Previews: PreviewProvider {
    static var previews: some View {
        HackSongApp()
    }
}
