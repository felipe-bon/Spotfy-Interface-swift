//
//  SongDetail.swift
//  desafioSpotfy
//
//  Created by Student07 on 01/08/23.
//

import SwiftUI

struct SongDetail: View {
    
    let song: Song
    let tamanho:CGFloat = 200
    let altura:CGFloat = 50
    
    var body: some View {
        
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string:song.capa)){ image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                } placeholder: {
                    Color.gray
                }
                .frame(width: tamanho, height: tamanho)
                VStack{
                    Text("\(song.name)")
                        .foregroundColor(.black)
                    Text("\(song.artist)")
                        .foregroundColor(.black)
                    
                }
                .frame(width: tamanho,height: altura)
                
                HStack(spacing: 30){
                    Image(systemName:"shuffle")
                    Image(systemName:"backward.end.fill")
                    Image(systemName:"play.fill")
                    Image(systemName:"forward.end.fill")
                    Image(systemName:"repeat")
                }.font(.system(size: 30))
                
                
            }
        }
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song:  Song(id: 2, name: "Heart-Shaped Box", artist: "Nirvana", capa: "https://americansongwriter.com/wp-content/uploads/2023/04/Nirvana-InUtero_albumcover.jpg?resize=300%2C300"))
    }
}
