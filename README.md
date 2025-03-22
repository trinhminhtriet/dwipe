# 🚀 dwipe

```text
     _          _
  __| |_      _(_)_ __   ___
 / _` \ \ /\ / / | '_ \ / _ \
| (_| |\ V  V /| | |_) |  __/
 \__,_| \_/\_/ |_| .__/ \___|
                 |_|
```

🧹 Fast, cross-platform disk cleanup tool with interactive UI for easy directory size visualization.

## ✨ Features

- **Blazing Fast** ⚡ – Efficiently scans directories and subdirectories to provide accurate size metrics in seconds.
- **Cross-Platform** 🌍 – Works seamlessly on **Linux**, **Windows**, and **macOS**.
- **User-Friendly Output** 📊 – Presents results in a **clear and readable** format.
- **Intuitive Sorting** 🔍 – Easily identify the largest folders consuming your disk space.
- **Lightweight & Portable** 🏗 – Built in Rust for **minimal resource usage** and **fast execution**.
- **Customizable Filters** 🎯 – Exclude specific directories or set size thresholds for better insights.

## 🚀 Installation

To install **dwipe**, simply clone the repository and follow the instructions below:

```bash
git clone git@github.com:trinhminhtriet/dwipe.git
cd dwipe

cargo build --release
cp ./target/release/dwipe /usr/local/bin/
dwipe --version
dwipe --help
```

Running the below command will globally install the `dwipe` binary.

```bash
cargo install dwipe
```

Optionally, you can add `~/.cargo/bin` to your PATH if it's not already there

```bash
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## 💡 Usage

#### Run in current dir

`dwipe`

#### Run in specific dir

`dwipe [PATH]`

## Keybindings

- `jk/↓↑` - Navigate up/down
- `l/→/Enter` - Navigate into folder
- `h/←/Backspace` - Navigate to parent
- `d` - Delete file/folder. First hit - selects entry. Second hit - confirms deletion.
- `s` - Toggle sorting (`Title` / `Size`)
- `c` - Toggle coloring. When enabled - shows space usage with gradient
- `t` - Toggle trash. When enabled - removed content goes to Trash bin.
- `q` - Quit

## 🗑️ Uninstallation

Running the below command will globally uninstall the `dwipe` binary.

```bash
cargo uninstall dwipe
```

Remove the project repo

```bash
rm -rf /path/to/git/clone/dwipe
```

## 🤝 How to contribute

We welcome contributions!

- Fork this repository;
- Create a branch with your feature: `git checkout -b my-feature`;
- Commit your changes: `git commit -m "feat: my new feature"`;
- Push to your branch: `git push origin my-feature`.

Once your pull request has been merged, you can delete your branch.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
