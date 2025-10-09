# Nashik Darshan

A Flutter application for exploring Nashik.

## Commit Linting

This project uses conventional commit messages to maintain a clean and consistent git history.

### Commit Message Format

Each commit message consists of a **header**, a **body** and a **footer**. The header has a special format that includes a **type**, a **scope** and a **subject**:

```
type (scope): subject
```

Example:

```
feat (auth): Add user login functionality
```

#### Types

- `feat`: A new feature
- `fix`: A bug fix
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `style`: Changes that do not affect the meaning of the code (formatting, etc.)
- `docs`: Documentation only changes
- `test`: Adding missing tests or correcting existing tests
- `chore`: Changes to the build process or auxiliary tools
- `perf`: A code change that improves performance
- `ui`: UI/UX improvements
- `i18n`: Internationalization and localization
- `a11y`: Accessibility improvements

### Setup

The project uses Dart's `commitlint_cli` and `husky` packages to enforce conventional commits:

1. Install dependencies:

   ```bash
   flutter pub get
   ```

2. Set up Git hooks (first time only):

   ```bash
   dart run husky install
   dart run husky set .husky/commit-msg 'dart run commitlint_cli --edit "$1"'
   ```

3. Set commit template:
   ```bash
   git config --local commit.template .gitmessage
   ```

### Making Commits

When making commits, follow these guidelines:

1. Use the imperative mood in the subject line
2. Do not end the subject line with a period
3. Separate subject from body with a blank line
4. Use the body to explain what and why vs. how
5. Can use multiple lines with "-" for bullet points in body

## Code Formatting and IDE Configuration

The project uses Dart's built-in formatter and additional linting rules:

- **Pre-commit Hook**: Code is automatically formatted before each commit
- **Linting Rules**: Custom rules are defined in `analysis_options.yaml`
- **Dart Code Metrics**: Advanced static analysis for better code quality
- **Cursor IDE Configuration**: Specific settings for Cursor IDE in `.cursor.config.json`
- **AI-Assisted Commits**: AI suggestions follow commit conventions via `.cursor.ai.config.json`
