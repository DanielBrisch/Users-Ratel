# Ratel Users CRUD Project

An example Users CRUD (Create, Read, Update, Delete) service built with the [Ratel framework](https://ratel-dart.github.io/Documentation/).

## 🔗 Ratel Framework

Learn more about Ratel and its features on the official repo:

> [https://github.com/Ratel-Dart/Ratel](https://github.com/Ratel-Dart/Ratel)

---

## 📁 Project Structure

```text
.
├── config
│   └── di.dart
├── internal
│   ├── application
│   │   ├── DTOs
│   │   │   └── user_dto.dart
│   │   └── usecases
│   │       └── users_usecase.dart
│   ├── database
│   │   └── models
│   │       └── users.dart
│   ├── repository
│   │   └── users
│   │       ├── users_repository.dart
│   │       ├── users_repository_impl.dart
│   │       └── db.dart
│   └── handlers
│       └── users_handler.dart
├── .env
├── .gitignore
├── Dockerfile
├── main.dart
├── pubspec.lock
└── pubspec.yaml
```

---

## ⚙️ Prerequisites

* **Dart SDK**
* A `.env` file in the project root with any required environment variables, such as database URL or API keys.

---

## 🚀 Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/DanielBrisch/Users-Ratel.git
   cd Users-Ratel
   ```

2. **Install dependencies**

   ```bash
   dart pub get
   ```

3. **Configure environment**
   Create a `.env` file at the project root and define variables, for example:

   ```dotenv
   DATABASE_URL="postgres://user:pass@localhost:5432/usersdb"
   JWT_SECRET="your_jwt_secret"
   ```

4. **Run the application**

   ```bash
   dart main.dart
   ```

---

## 🐳 Docker

Build and run with Docker:

```bash
docker build -t ratel-users-crud .
docker run --env-file .env -p 8080:8080 ratel-users-crud
```

---