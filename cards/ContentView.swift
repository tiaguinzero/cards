//
//  ContentView.swift
//  cards
//
//  Created by TIAGO COSTA CONCEICAO on 24/09/24.
//  RA: 23337

import SwiftUI

struct ConteudoView: View {
    var imagem: String
    var titulo: String
    var subtitulo: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imagem) //Imagem base
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300) //tamanho da imagem
                .cornerRadius(10) //bordar arredondadas

            Text(titulo) //titulo base
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding(.leading, 2)
                .padding(.bottom, 0)

            Text(subtitulo) //subtitulo base
                .font(.title3)
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .padding(.leading, 2)
                .padding(.top, 0)
        }
        .padding()
    }
}

struct ContentView: View {
    // Array de dados para os cartões
    let dados = [
        ("flor", "Flor", "Leva 2h à 3h para ser feito"), // 1º card
        ("gato", "Gato", "Leva menos 1h para ser feito"), // 2º card
        ("besouro", "Besouro", "Leva 4h para ser feito"),// 3º card
        ("cisney", "Ciney", "Leva 30min para ser feito")// 4º card
    ]
    
    var body: some View {
        ScrollView { // Adicionando o ScrollView
            VStack(alignment: .leading, spacing: 20) { // Adicionando espaço entre os elementos
                ForEach(dados, id: \.0) { dado in // Iterando sobre o array de dados
                    ConteudoView(imagem: dado.0, titulo: dado.1, subtitulo: dado.2)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
