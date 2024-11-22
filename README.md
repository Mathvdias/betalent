# BeTalent - Projeto Flutter com Servidor Dart

Este é o repositório do projeto BeTalent, uma aplicação Flutter que integra com um servidor Dart para realizar operações de CRUD simples, focado na listagem de funcionários. O projeto usa várias ferramentas, incluindo `ChangeNotifier` para gerenciamento de estado, `GetIt` para injeção de dependência, e possui um tema customizável.

## Telas
<div style="display: flex; justify-content: space-between; align-items: center;">
  <img src="https://github.com/user-attachments/assets/30d7eb94-ae43-4589-8145-015df94d5825" width="30%" />
  <img src="https://github.com/user-attachments/assets/5b9c8f4e-ae42-4d34-ab8d-0e667f991f43" width="30%" />
  <img src="https://github.com/user-attachments/assets/2aaa2953-f2b4-4225-ba0b-7f676c5fea65" width="30%" />
  <img src="https://github.com/user-attachments/assets/f694c572-2446-4cb1-9da7-e74184ceaf4c" width="30%" />
</div>


## Requisitos

Antes de rodar o projeto, é necessário ter as seguintes dependências instaladas:

- [Dart SDK](https://dart.dev/get-dart)
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [json_rest_server](https://pub.dev/packages/json_rest_server)

## Configuração do Servidor

Para rodar o servidor localmente, siga as instruções abaixo:

1. No diretório **server**, execute o comando para iniciar o servidor:

   ```bash
   json_rest_server run
   ```

2. O servidor estará rodando em:  
   - **Emulador**: `http://localhost:8080`  
   - **Dispositivo físico**: `http://192.168.15.52:8080`

   O servidor expõe a seguinte API para consulta de funcionários:

   - **GET**: `http://localhost:8080/employees`

## Estrutura do Projeto

O projeto é composto por duas partes principais: o **Flutter app** e o **servidor Dart**. Abaixo estão os detalhes de cada parte:

### Parte Flutter

- **Gerenciamento de estado**: Utiliza `ChangeNotifier` para gerenciamento de estado em toda a aplicação.
- **Injeção de dependência**: `GetIt` é usado para injeção de dependência, garantindo uma estrutura limpa e modular.
- **Tema customizável**: A classe `AppTheme` define o tema principal da aplicação, com cores e estilos personalizados.

### Parte Servidor (Dart)

- O servidor fornece uma API REST que responde a requisições GET para listar os funcionários em formato JSON.
- Para rodar o servidor localmente, utilize o comando mencionado acima.

## Funcionalidades

- **Listagem de funcionários**: A API retorna os funcionários em formato JSON.
- **Tema customizável**: Modifique facilmente as cores e estilos da interface utilizando o `AppTheme`.
- **SVG**: Uso da biblioteca `svg_flutter` para renderizar ícones e imagens vetoriais no app.

## Como Rodar o Projeto

### Passo 1: Clone o Repositório

Clone o repositório para sua máquina local:

```bash
git clone https://github.com/Mathvdias/betalent.git
cd betalent
```

### Passo 2: Configuração do Servidor

No diretório do servidor (`server`), execute o comando abaixo para iniciar o servidor:

```bash
json_rest_server run
```

### Passo 3: Rodar o App Flutter

No diretório do projeto Flutter, execute os seguintes comandos:

1. Instale as dependências:

   ```bash
   flutter pub get
   ```

2. Execute o aplicativo:

   ```bash
   flutter run
   ```

A aplicação estará disponível em seu emulador ou dispositivo físico.

## Tema Customizável

O tema da aplicação pode ser facilmente modificado. As cores e estilos são definidos na classe `AppTheme`, como mostrado abaixo:

```dart
class AppTheme {
  static const Color primaryBlue = Color(0xFF0500FF);
  static const Color backgroundLight = Color(0xFFF5F5F5);
  // ... outras cores e estilos
}
```

Essas cores são aplicadas em toda a aplicação, incluindo o `AppBar`, `Botões`, `InputFields`, etc.

## Exemplo de Uso da API

A API do servidor retorna um JSON com uma lista de funcionários. Abaixo está um exemplo de como fazer uma requisição GET usando o `http` package no Flutter:

```dart
import 'package:http/http.dart' as http;

Future<void> fetchEmployees() async {
  final response = await http.get(Uri.parse('http://localhost:8080/employees'));

  if (response.statusCode == 200) {
    // Processa os dados
    print('Funcionários: ${response.body}');
  } else {
    throw Exception('Falha ao carregar funcionários');
  }
}
```

## Contribuindo

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b minha-feature`).
3. Comite suas alterações (`git commit -am 'Adiciona nova feature'`).
4. Envie para o repositório remoto (`git push origin minha-feature`).
5. Abra um Pull Request.

## Licença

Este projeto é licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

Se tiver dúvidas ou sugestões, sinta-se à vontade para abrir uma issue ou contribuir com um PR.
