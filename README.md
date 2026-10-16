# casegame
# 🕵️ Case: Son İfade

**A Turkish AI-powered murder mystery game.**

Open a murder case. Examine the evidence, **interrogate suspects in Turkish using AI**, uncover contradictions, and find the killer. You only get one accusation.

> Developed with Flutter + Node.js + Anthropic Claude.

---

## 🎮 How Does the Game Work?

1. **Choose a case.** Investigate cases set in different locations, from an apartment in Kadıköy to an old waterfront mansion in Beykoz.
2. **Examine the evidence.** Review forensic reports, security camera footage, message drafts, security logs, and more.
3. **Interrogate the suspects.** Each suspect responds according to their own personality; they may lie, hide information, or give evasive answers.
4. **Record your notes on the investigation board.** Keep track of contradictions and connect the clues.
5. **Accuse the killer.** If you're correct, the case is solved. If you're wrong, the truth is revealed.

## ✨ Features

- 🇹🇷 Entirely Turkish content and Turkey-themed cases (Istanbul, Kadıköy, Beşiktaş, Beykoz, and more)
- 🤖 AI-powered conversations tailored to each suspect's personality, speaking style, secrets, and lies
- 🔒 The solution and suspects' secrets are stored **only on the server**, not inside the application
- 📋 Evidence lists, suspect profiles, an investigation board, and a notebook
- ⚖️ An irreversible accusation system with a confirmation dialogue
- 🎨 A mysterious interface featuring black, burgundy, cream, and dark purple tones
- ➕ Ready-to-use templates and a guide for adding new cases

## 🧠 How Does the AI Work?

```text
Flutter application
      ↓ (message + conversation history)
Node.js + Express backend
      ↓ (suspect's hidden information + rules are added)
Anthropic Claude API
      ↓
Turkish response consistent with the character
      ↓
Flutter chat screen
```

For each suspect, the AI receives the following information: personality, speaking style, **what they know**, **what they don't know**, the **lies** they may tell, and whether they are the killer.

The model:

- Does not make up information it doesn't know.
- Does not introduce events that aren't part of the story.
- Does not directly reveal the killer's identity.
- Provides consistent answers to the same question (using a low `temperature` setting).

## 🔐 Security Design

- The API key is **never** included in the Flutter code; it is stored only in the backend's `.env` file.
- The `.env` file is excluded from Git using `.gitignore`.
- The killer's identity, the suspects' secrets, and the actual sequence of events are stored in the backend's `data/` directory.

> ⚠️ **Note:** The `isKiller` and `truth` fields are currently also present in Flutter-side data files so that the results screen can function. Before releasing the game publicly, it is recommended that accusation validation be moved to the backend as well.

## 🛠️ Technologies

| Layer | Technology |
|---|---|
| Mobile application | Flutter (Dart) |
| Server | Node.js, Express |
| Artificial intelligence | Anthropic Claude API |
| Other | `http`, `dotenv`, `cors` |

## 📁 Project Structure

```text
.
├── lib/                      # Flutter application
│   ├── main.dart
│   ├── models/               # CaseFile, Evidence, Suspect, ...
│   ├── data/                 # Case, evidence, and suspect data
│   ├── screens/              # All screens
│   ├── widgets/              # Card and chat bubble components
│   ├── services/             # Communication with the backend
│   └── theme/                # Colors and page transitions
└── backend/                  # Node.js + Express server
    ├── server.js
    ├── routes/
    ├── controllers/
    ├── services/             # Claude API integration
    ├── prompts/              # Suspect character prompts
    └── data/                 # Hidden case data (killer, secrets, lies)
```

## 🚀 Installation

### Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Node.js](https://nodejs.org/) version 18 or later
- An [Anthropic API key](https://console.anthropic.com/)

### 1. Start the Backend

```bash
cd backend
npm install
```

Open the `backend/.env` file and add your own API key:

```env
ANTHROPIC_API_KEY=sk-ant-...
PORT=3000
```

Then run:

```bash
npm start
```

You should see a message indicating that the server is running when you visit `http://localhost:3000` in your browser.

### 2. Run the Flutter Application

In a separate terminal window, from the project's root directory, run:

```bash
flutter pub get
flutter run
```

Configure the `baseUrl` value in `lib/services/api_service.dart` according to the environment in which you're running the application:

| Environment | `baseUrl` |
|---|---|
| Android emulator | `http://10.0.2.2:3000` |
| iOS simulator / Chrome | `http://localhost:3000` |
| Physical device | `http://YOUR_COMPUTER_IP_ADDRESS:3000` |
| Live server | Your deployment URL |

For more details, see [`FLUTTER_AI_BAGLANTI.md`](https://claude.ai/chat/FLUTTER_AI_BAGLANTI.md), [`DEPLOY.md`](https://claude.ai/chat/DEPLOY.md), and [`MARKA_IKON.md`](https://claude.ai/chat/MARKA_IKON.md).

## ➕ Adding a New Case

The [`YENI_DAVA_EKLEME.md`](https://claude.ai/chat/YENI_DAVA_EKLEME.md) file contains the steps, code templates, and checklist required to add a new murder case.

In short, two Flutter data files and two backend data files need to be updated. The case and suspect `id` values must match exactly on both sides.

## 🗺️ Roadmap

- [ ] Separate screens for WhatsApp messages and witness statements
- [ ] More cases
- [ ] Moving accusation validation to the backend
- [ ] Persistent game progress storage
- [ ] Sound effects

## 🤝 Contributing

Feel free to open an issue or submit a pull request to share ideas, report bugs, or contribute new case scenarios.

## 📄 License

You need to choose a license. If you want to make the project open source, selecting **MIT** under the "Add a license" section when creating a GitHub repository is one of the most common choices.

---

⭐ If you like the project, don't forget to give the repository a star!
