# FlutterFit 🧮💻

## 📌 Visão Geral

**FlutterFit** é uma calculadora desenvolvida em **Flutter**, criada especificamente para **Web**, com foco total em **responsividade**, **usabilidade** e **boa experiência do usuário em diferentes tamanhos de tela**.

O projeto foi pensado para funcionar perfeitamente em **desktop, tablets e dispositivos móveis**, mantendo consistência visual, performance e facilidade de uso.

---

## 🚀 Objetivo do Projeto

O principal objetivo do **FlutterFit** é:

* Praticar e demonstrar o uso do **Flutter Web**
* Aplicar conceitos de **layout responsivo**
* Criar uma calculadora funcional, simples e intuitiva
* Utilizar boas práticas de organização de código e UI

Este projeto também serve como base de estudo e evolução contínua em Flutter.

---

## 🖥️ Plataforma

* 🌐 **Web**

---

## 📱 Responsividade

O FlutterFit foi desenvolvido com foco em **design adaptativo**, garantindo:

* Layout ajustável para diferentes resoluções
* Boa leitura e usabilidade em telas pequenas e grandes
* Componentes redimensionáveis
* Experiência consistente em múltiplos dispositivos

Foram utilizados recursos do Flutter como:

* `LayoutBuilder`
* `MediaQuery`
* Widgets flexíveis (`Expanded`, `Flexible`)

---

## 🛠️ Tecnologias Utilizadas

* **Flutter**
* **Dart**
* **Flutter Web**

---

## 📂 Estrutura do Projeto

```bash
lib/
 ├── domain/
 │   └── imc_service.dart
 │
 ├── enum/
 │   └── enum_classificacao.dart
 │
 ├── layouts/
 │   ├── desktop_layout.dart
 │   ├── mobile_layout.dart
 │   └── tablet_layout.dart
 │
 ├── presentation/
 │   └── presentation_color_ui.dart
 │
 ├── providers/
 │   └── imc_provider.dart
 │
 ├── src/
 │   └── pages/
 │       └── home.dart
 │
 ├── utils/
 │   ├── app_assets.dart
 │   ├── app_colors.dart
 │   ├── app_sizes.dart
 │   └── app_text_style.dart
 │
 ├── widgets/
 │   ├── button_calculator.dart
 │   ├── data_card.dart
 │   ├── flutter_fit.dart
 │   ├── footer.dart
 │   ├── logo_flutter_fit.dart
 │   ├── ranking_card.dart
 │   ├── result_dialog.dart
 │   ├── sub_card_ranking.dart
 │   └── subtitle.dart
 │
 └── main.dart


> A estrutura do projeto foi organizada com foco em **responsividade**, **separação de responsabilidades** e **facilidade de manutenção**, permitindo uma evolução clara do código tanto no Flutter Web quanto em outros targets.

---

## ⚙️ Funcionalidades

* 🎨 Interface limpa e moderna

---

## ▶️ Como Executar o Projeto

1. Clone o repositório:

```bash
git clone https://github.com/LucasBatistaX/Calculadora_IMC
```

2. Acesse o diretório do projeto:

```bash
cd Calculadora_IMC
```

3. Instale as dependências:

```bash
flutter pub get
```

4. Execute no navegador:

```bash
flutter run -d chrome
```

---

## 📸 Layouts

> Atualmente

BreakPoint - (390px);

<img width="411" height="875" alt="image" src="https://github.com/user-attachments/assets/37c2c93f-0393-478e-8981-90c1ccebb77e" />

BreakPoint - (768px);

<img width="300" height="430" alt="image" src="https://github.com/user-attachments/assets/f56df88d-ad4f-442a-8f28-f847923e641b" />


BreakPoint - (1024px);

<img width="955" height="460" alt="image" src="https://github.com/user-attachments/assets/73a7a20c-e5f1-455b-b303-0cecf688c319" />

---

## 📈 Próximas Melhorias

* Refatoração contínua do layout e regra de negócio.

---

## 👨‍💻 Autor

Desenvolvido por **Lucas Batista**
Flutter Developer 🚀

---

## 📄 Licença

Este projeto está sob a licença MIT. Sinta-se à vontade para utilizar, estudar e evoluir este código.

---

⭐ Se este projeto te ajudou ou te inspirou, não esqueça de deixar uma estrela no repositório!



