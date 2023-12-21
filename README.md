# PICR Editor

Welcome to PICR Editor, a Vim-inspired terminal text editor designed for efficiency and ease of use. This editor is powered by the SFML library for mutexes and threading, and the FTXUI library for rendering and general terminal logic.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
  - [File Locks](#file-locks)
  - [Multiple Processes](#multiple-processes)
  - [New File Creation](#new-file-creation)
  - [Auto Save](#auto-save)
  - [Editing Modes](#editing-modes)
- [Keybindings](#keybindings)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Introduction

PICR Editor is a powerful terminal text editor inspired by Vim. It aims to provide a seamless and efficient editing experience for both beginners and advanced users.

## Features

### File Locks

Implementing file locks ensures that a file cannot be opened simultaneously by two different processes, preventing conflicts and data corruption.

### Multiple Processes

PICR Editor supports preventing the same file from being opened by two different processes, enhancing data integrity and supporting collaborative editing.

### New File Creation

If the file you want to edit does not exist, PICR Editor will automatically create a new file for you, streamlining the editing process.

### Auto Save

Auto-save functionality using separate threads ensures that your changes are periodically saved without disrupting your workflow. Auto-save intervals are customizable.

### Editing Modes

PICR Editor provides three distinct modes:

- **VISUAL Mode:** Navigate and select text visually.
- **INSERT Mode:** Add or edit text.
- **COMMAND Mode:** Execute commands and navigate the editor.

Switch seamlessly between these modes using intuitive keybindings, allowing for a fluid editing experience.

## Installation

To install PICR Editor, follow these steps:

```bash
# Clone the repository
git clone https://github.com/PI-CR-Team/picr

# Navigate to the project directory
cd picr

# Build the editor
bash build_executable.sh

# Run the editor
./build/build_executable/PiCr <filename>
```

For more detailed installation instructions, refer to the Installation Guide.

# Usage
## File Locks
File locks ensure that only one instance of PICR Editor can open a file at a time, providing a secure editing environment.

## Multiple Processes
Avoid opening the same file with two different processes to maintain data integrity. PICR Editor enforces this rule, providing a smooth editing experience across multiple instances.

## New File Creation
If the file you want to edit does not exist, PICR Editor will automatically create a new file for you, simplifying your workflow.

## Auto Save
Enjoy the convenience of auto-save functionality, implemented using separate threads. Your edits are periodically saved in the background, ensuring that your work is always secure.

## Editing Modes
Switch between different editing modes seamlessly using the keyboard:

Press V for VISUAL Mode.
Press I for INSERT Mode.
Press : for COMMAND Mode.

## Keybindings
PICR Editor features a range of keybindings for efficient navigation and editing. Familiarize yourself with the keybindings to make the most of the editor's capabilities. For a comprehensive list of keybindings, refer to the Keybindings Guide.

## Customization
Tailor PICR Editor to suit your preferences by exploring customization options such as color schemes, keybindings, and plugins. Create an editing environment that aligns with your workflow. For detailed customization instructions, refer to the Customization Guide.

## Contributing
Contributions to PICR Editor are welcome! Whether you want to report a bug, suggest a new feature, or contribute code, please read our Contribution Guidelines before getting started.

License
PICR Editor is licensed under the MIT License. Feel free to use, modify, and distribute the editor in accordance with the terms of the license.

Happy Editing with PICR Editor! 🚀