# Notes App - Flutter Challenge

## Descrição
Aplicativo de notas desenvolvido em Flutter como parte de um desafio técnico.  
O app permite criar, visualizar, editar e excluir notas, garantindo persistência de dados local através da biblioteca `shared_preferences`.  

O projeto utiliza **MobX** para gerenciamento de estado e implementa boas práticas de arquitetura e experiência do usuário, incluindo feedbacks visuais e estados vazios personalizados.

---

## Tecnologias Utilizadas

- [Flutter](https://flutter.dev/)  
- [MobX](https://pub.dev/packages/mobx) – Gerenciamento de estado reativo  
- [Provider](https://pub.dev/packages/provider) – Injeção de dependências e acesso à store  
- [Shared Preferences](https://pub.dev/packages/shared_preferences) – Persistência de dados local  

---

## Como Rodar o Projeto

1. **Clonar o repositório**
   ```bash
   git clone https://github.com/anselmoparente/Desafio-Target.git
   cd Desafio-Target
   ```

2. **Instalar dependências**
   ```bash
   flutter pub get
   ```

3. **Gerar código MobX**
   ```bash
   dart run build_runner build
   ```

4. **Executar o app**
   ```bash
   flutter run
   ```
