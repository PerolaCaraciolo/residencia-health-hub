# HealthHub

O **HealthHub** é uma aplicação desenvolvida para melhorar o bem-estar e a experiência dos funcionários de empresas.

A plataforma integra funcionalidades como vídeos educativos, notificações importantes e ferramentas para gerenciar ausências, enviar atestados e acompanhar cursos realizados.

O design intuitivo e a alternância entre temas claro e escuro tornam o app uma solução prática e eficiente para empresas que valorizam o bem-estar de seus colaboradores.

<br>

---

## 📲 Funcionalidades Principais

- 🎥 **Repositório de Vídeos**:
  - Acesso a vídeos educativos de meditação, ergonomia e mindfulness.
- 📄 **Registro de Ausências**:
  - Ferramenta para selecionar data e motivo de ausência, com envio de justificativas.
- 📚 **Histórico de Cursos**:
  - Registro dos cursos realizados com título, descrição e datas.
- ❤️ **Favoritos**:
  - Salve vídeos importantes para acesso rápido.
- 🌗 **Alternância de Tema**:
  - Suporte a modo claro e escuro.
- 🔒 **Tela de Login**:
  - Acesso seguro com CPF e senha.

<br>

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento multiplataforma.
- **Dart**: Linguagem de programação.
- **FlutLab**: Ambiente de desenvolvimento online para Flutter.
- **Pacotes Utilizados**:
  - `file_picker`: Upload de arquivos, como atestados.
  - `http`: Download e manipulação de arquivos PDF.
  - `youtube_player_flutter`: Player integrado para vídeos do YouTube.
  - `flutter_pdfview`: Visualização de PDFs no app.
  - `image_picker`: Upload de imagens, como foto de perfil.
  - `path_provider`: Acesso a diretórios temporários para armazenamento.

<br>

---

## 🎨 Telas Implementadas

### 1. Tela de Login
- Permite autenticação via CPF e senha.
- Inclui opção "Esqueci a Senha" para redefinir credenciais.
- Apresenta logo e design inspirado na identidade visual do HealthHub.

### 2. Tela Inicial (Home)
- Reúne comunicados, vídeos e cursos em seções organizadas.
- Integra cards de anúncios, miniaturas de vídeos e cursos.
- Navegação por Drawer, com atalhos para funcionalidades principais.

### 3. Tela de Perfil
- Permite trocar a foto de perfil.
- Exibe informações do funcionário como nome, cargo e departamento.
- Acesso às configurações da conta.

### 4. Tela de Configurações
- Alternância entre modo claro e escuro.
- Opção de ativar ou desativar notificações.

### 5. Tela de Favoritos
- Lista de vídeos marcados como favoritos para fácil acesso.

### 6. Tela para Solicitar Ausências
- Permite selecionar uma data e adicionar o motivo da ausência.
- Botões para envio da solicitação ou cancelamento.

### 7. Tela de Histórico de Cursos
- Exibe cursos realizados, com título, descrição e data.

### 8. Tela para Enviar Atestados
- Upload de arquivos para justificar ausências.
- Campo de descrição opcional.

### 9. Tela de Visualização de PDFs
- Abre documentos PDF diretamente no app.

### 10. Tela de Visualização de Vídeos
- Player integrado com suporte a vídeos do YouTube.

<br>

---

## 🖥️ Como Rodar o Projeto

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/PerolaCaraciolo/residencia-health-hub.git
### 💻🛠️ Pré-requisitos para executar localmente
2. **Flutter SDK**: Certifique-se de ter o Flutter instalado na máquina.

3. **Acesse o diretório**:
   ```bash
   cd <caminho no qual o repositório foi salvo>
4. **Instale as dependências**:
   ```bash
   flutter pub get
5. **Execute o projeto**:
   ```bash
   flutter run
### ☁️🛠️ Rodando no FlutLab

2. Faça upload do projeto no [FlutLab](https://flutlab.io/).
3. Clique em "Run Project" para executar o app diretamente no ambiente online.

<br>

---

## 💡 Melhorias Futuras

- **💾 Banco de Dados**:
  - Integrar uma solução como Firebase Firestore para armazenar informações persistentes.
- **🤝 Colaboração Mútua**:
  - Suporte a envio de vídeos diretamente pelos usuários.
- **📢 Notificações Push**:
  - Adicionar notificações para alertar sobre novos conteúdos e eventos.

<br>

---

## 📝 Observações Adicionais

- Este projeto utiliza imagens e documentos armazenados na pasta `assets/images/`.
- Os dados apresentados no app (vídeos, registros, cursos) são mockados e podem ser integrados a uma base de dados no futuro.

<br>

---

## 🌟 Créditos

Desenvolvido por **Pérola Iuly** como parte de um projeto acadêmico para **Faculdade Senac**.  
Agradecimentos especiais ao instrutor e colaborador Accenture **Júlio Cesar** pela orientação e feedback.

<br>


> Documentação criada com ❤️ para garantir clareza e organização no desenvolvimento do projeto.

<br>

---

## 📂 Estrutura do Projeto

```plaintext
lib/
├── main.dart                         # Arquivo principal do app
├── login_screen.dart                 # Tela de Login
├── home_screen.dart                  # Tela Inicial
├── profile_screen.dart               # Tela de Perfil
├── account_settings_screen.dart      # Tela de Configurações
├── absence_request_screen.dart       # Tela para Solicitar Ausências
├── absentee_records_screen.dart      # Tela com Registros Faltosos
├── upload_certificate_screen.dart    # Tela para Enviar Atestados
├── course_history_screen.dart        # Histórico de Cursos
├── favorites_screen.dart             # Tela de Favoritos
├── forgot_password_screen.dart       # Tela de Redefinição de Senha
├── course_detail_screen.dart         # Tela com Detalhes de um Curso
├── video_player_screen.dart          # Tela para Visualizar Vídeos
├── image_viewer_screen.dart          # Tela para Visualizar Imagens
├── pdf_viewer_screen.dart            # Tela para Visualizar PDFs
├── announcement_card.dart            # Widget para exibir anúncios
├── course_card.dart                  # Widget para exibir cursos
├── video_thumbnail_card.dart         # Widget para miniaturas de vídeos
assets/
├── images/
│   ├── logo.png                      # Logo principal
│   └── accenture-logo.png            # Logo da empresa
web/                                  # Arquivos para suporte a Flutter Web
android/                              # Configurações da plataforma Android
ios/                                  # Configurações da plataforma iOS
test/                                 # Arquivos de teste
.metadata                             # Metadados do projeto Flutter
analysis_options.yaml                 # Configurações de lint e boas práticas
LICENSE                               # Licença do projeto
pubspec.yaml                          # Configuração de dependências e assets