import 'dart:io';

void main() async {
  print('Setting up Git hooks for the project...');

  // Install husky
  await _runCommand('dart run husky install');

  // Create commit-msg hook
  await _runCommand(
    'dart run husky set .husky/commit-msg "dart run commitlint_cli --edit \\\$1"',
  );

  // Create pre-commit hook for formatting
  await _runCommand(
    'dart run husky set .husky/pre-commit "dart format --fix ."',
  );

  // Set git commit template
  await _runCommand('git config --local commit.template .gitmessage');

  print('Git hooks setup completed successfully!');
}

Future<void> _runCommand(String command) async {
  print('Running: $command');

  final parts = command.split(' ');
  final executable = parts[0];
  final arguments = parts.sublist(1);

  final result = await Process.run(executable, arguments);

  if (result.exitCode != 0) {
    print('Error executing command: ${result.stderr}');
    exit(1);
  }

  print('${result.stdout}');
}
