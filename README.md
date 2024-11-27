# HealthHub

O **HealthHub** é uma plataforma desenvolvida para facilitar a comunicação e o bem-estar dos funcionários de empresas. O aplicativo reúne vídeos educativos, comunicados importantes e funcionalidades como registro de ausências, envio de atestados e muito mais, em uma interface prática e intuitiva.

---

## 🚀 Funcionalidades Principais

- 🎥 **Repositório de Vídeos**: Acesso a conteúdos de meditação, exercícios e orientações corporativas.
- 📄 **Registro de Ausências**: Ferramenta para envio de justificativas e atestados médicos.
- 💼 **Histórico de Cursos**: Acompanhe treinamentos realizados.
- ❤️ **Favoritos**: Salve vídeos e conteúdos importantes para fácil acesso.
- 🌗 **Alternância de Tema**: Escolha entre modo claro ou escuro.
- 🔒 **Autenticação**: Tela de login para acesso seguro.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento multiplataforma.
- **Dart**: Linguagem de programação.
- **Pacotes Usados**:
  - `file_picker`: Para anexar arquivos (como atestados).
  - `http`: Para requisições de rede (exemplo: download de PDFs).
  - `youtube_player_flutter`: Player de vídeos do YouTube integrado.
  - `flutter_pdfview`: Exibição de arquivos PDF.
  - `path_provider`: Acesso a diretórios no dispositivo.
  - `image_picker`: Upload de imagens.

---

## 📂 Estrutura do Projeto

```plaintext
lib/
├── main.dart                  # Arquivo principal do app
├── login_screen.dart          # Tela de Login
├── home_screen.dart           # Tela Inicial
├── profile_screen.dart        # Tela de Perfil
├── account_settings_screen.dart # Tela de Configurações
├── absence_request_screen.dart # Tela para Solicitar Ausências
├── absentee_records_screen.dart # Tela com Registros Faltosos
├── upload_certificate_screen.dart # Tela para Enviar Atestados
├── course_history_screen.dart # Histórico de Cursos
├── favorites_screen.dart      # Tela de Favoritos
├── forgot_password_screen.dart # Tela de Redefinição de Senha
├── course_detail_screen.dart  # Tela com Detalhes de um Curso
├── video_player_screen.dart   # Tela para Visualizar Vídeos
├── image_viewer_screen.dart   # Tela para Visualizar Imagens
├── pdf_viewer_screen.dart     # Tela para Visualizar PDFs
├── components/
│   ├── announcement_card.dart # Widget para exibir anúncios
│   ├── course_card.dart       # Widget para exibir cursos
│   └── video_thumbnail_card.dart # Widget para miniaturas de vídeos
assets/
├── images/
│   ├── logo.png               # Logo principal
│   └── accenture-logo.png     # Logo da empresa
pubspec.yaml                   # Configuração de dependências e assets
