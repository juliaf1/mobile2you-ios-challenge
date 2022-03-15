# mobile2you-ios-challenge

Este projeto foi desenvolvido como parte do teste de migração interna para a plataforma iOS da mobile2you - Dimensa.

## 🎯 Requisitos
1. Usar algum design pattern: MVP, MVVM, MVVM-C, VIPER.
2. As informações do filme devem vir do endpoint getMovieDetails.
3. Usar o vote_count que retorna da API para representar o número de likes.
4. Substituir o “3 of 10 watched” por “<popularity> views”, utilizando o valor retornado da API e
mantendo algum ícone ao lado.
5. O ícone de like (coração) deve mudar quando clicado, alternando entre preenchido e vazio.
6. Deve haver uma lista de filmes abaixo dos detalhes.
7. O app deve ser desenvolvido utilizando a linguagem Swift.
8. O projeto deve ser disponibilizado em um repositório aberto no GitHub. Envie a URL assim que
possível.
  
## 👩‍💻 Implementação
Usei MVVM como desgin pattern escolhido. As APIs utilizadas foram [Get Movie Details](https://developers.themoviedb.org/3/movies/get-movie-details) e [Get Similar Movies](https://developers.themoviedb.org/3/movies/get-similar-movies), no entanto, por dificuldades técnicas, não consegui utilizar Alamofire, nem fazer as requests dentro do aplicativo. Para solucionar este impeditivo técnico, utilizei o Postman para acessar a API e inclui manualmente as informações necessárias no ViewModel. Outro requisito que tive dificuldades e não consegui finalizar foi a manipulação de imagens com o photo path retornado pela API. Inclui o arquivo Pod em que tentei adicionar Alamofire e SDWebImageSwiftUI, ainda que não tenha connseguido utilizá-los no projeto. 

  <img width="341" alt="tela" src="https://user-images.githubusercontent.com/72105468/158426477-d2ff3bce-f272-4bb0-9fdb-6466c334566e.png">
  
## ✨ Considerações Finais
Apesar de estar iniciando meus estudos em Swift e desenvolvimento iOS e não ter conseguido implementar todos os requisitos do desafio, achei bem divertida a proposta e pretendo finalizá-la conforme reduzir o débito técnico. Para desenvolver esse projeto, conclui as quatro primeiras aulas do curso [CS193p](https://cs193p.sites.stanford.edu/).
