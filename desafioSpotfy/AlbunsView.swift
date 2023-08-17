//
//  AlbunsView.swift
//  desafioSpotfy
//
//  Created by Student07 on 01/08/23.
//

import SwiftUI

struct AlbunsView: View {
    
    public let listaAlbuns = [
        Suggestions(id: 3, albumCover: "https://lh3.googleusercontent.com/p2_pHFA7u4uxGvEYoKvhiyxLDUCxPxJCMwRQLVMAMs4FF5lxb0hcVAa6iJY4UvMjrSiAwM6HiqXzyy4=w544-h544-l90-rj", albumName: "Meddle"),
        Suggestions(id: 4, albumCover: "https://lh3.googleusercontent.com/p2_pHFA7u4uxGvEYoKvhiyxLDUCxPxJCMwRQLVMAMs4FF5lxb0hcVAa6iJY4UvMjrSiAwM6HiqXzyy4=w544-h544-l90-rj", albumName: "Meddle"),
        Suggestions(id: 5, albumCover: "https://lh3.googleusercontent.com/p2_pHFA7u4uxGvEYoKvhiyxLDUCxPxJCMwRQLVMAMs4FF5lxb0hcVAa6iJY4UvMjrSiAwM6HiqXzyy4=w544-h544-l90-rj", albumName: "Meddle"),
        Suggestions(id: 6, albumCover: "https://lh3.googleusercontent.com/p2_pHFA7u4uxGvEYoKvhiyxLDUCxPxJCMwRQLVMAMs4FF5lxb0hcVAa6iJY4UvMjrSiAwM6HiqXzyy4=w544-h544-l90-rj", albumName: "Meddle")
    ]
    
    let tamanho:CGFloat = 100.0
    let altura:CGFloat = 30.0
    
    var body: some View {
        
        
        
        ScrollView(.horizontal){
            HStack{
                ForEach(listaAlbuns) { album in
                    VStack{
                        AsyncImage(url: URL(string:album.albumCover)){ image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: tamanho, height: tamanho)
                        VStack{
                            Text("Album: \(album.albumName)")
                                .foregroundColor(.white)
                            
                        }
                        .frame(width: tamanho,height: altura)
                        
                    }
                }
            }
        }
    }
}

struct AlbunsView_Previews: PreviewProvider {
    static var previews: some View {
        AlbunsView()
    }
}
