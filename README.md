# Dotfiles for macOS & Zsh

A modern, modular dotfiles setup for macOS (Sonoma and newer) and Zsh. Focused on productivity, clean shell experience, and easy extensibility. Includes a rich set of aliases and functions for daily development and system tasks.

## Features
- **Optimized for macOS & Zsh**: No Bash cruft, works out-of-the-box on modern macOS.
- **Productivity aliases**: Fast navigation, Git, Finder, system, and more.
- **Handy functions**: Notes, Reminders, Trello, Todoist, archives, DNS, and more.
- **Modular**: All config split into `.aliases`, `.functions`, `.exports`, `.zshrc`, `.zprofile`.
- **Easy install & update**: One script to sync everything.

---

## Installation

```sh
./bootstrap.sh
```
- This will sync all dotfiles to your home directory.
- You can force overwrite with `./bootstrap.sh --force`.
- After install, restart your terminal or run `source ~/.zshrc`.

## Updating
Just pull the latest changes and re-run `./bootstrap.sh`.

---

## Secrets: API tokens for Trello & Todoist

Some functions require API tokens/IDs (for Trello and Todoist). This is handled via a local `.secrets` file:

- **.secrets.example** – template with variable names and instructions (committed to git)
- **.secrets** – your real secrets (NOT committed, in .gitignore)

**How to use:**
1. Copy `.secrets.example` to `.secrets` in your dotfiles directory.
2. Fill in your real API keys and IDs.
3. Functions like `trello` and `todo` will load `.secrets` automatically.

---

## Aliases

| Alias      | Command / Description |
|------------|----------------------|
| ..         | cd ..                |
| ...        | cd ../..             |
| ....       | cd ../../..          |
| .....      | cd ../../../..       |
| ~          | cd ~                 |
| -          | cd -                 |
| dl         | cd ~/Downloads       |
| dt         | cd ~/Desktop         |
| w          | cd ~/Work            |
| g          | git                  |
| gc         | git checkout         |
| gcb        | git checkout -b      |
| gp         | git pull             |
| gpr        | git pull --rebase    |
| gps        | git push             |
| gb         | git branch -av       |
| gv         | git branch -vv       |
| gm         | git merge            |
| grs        | git reset --hard     |
| gpsall     | git remote \| xargs -L 1 git push |
| h          | history              |
| j          | jobs                 |
| v          | vim                  |
| m          | mate .               |
| s          | subl .               |
| o          | open                 |
| oo         | open .               |
| l          | ls -lG               |
| ll         | ls -laG              |
| lsd        | ls -alG \| grep "^d" |
| ls         | command ls -G        |
| sudo       | sudo (preserves aliases) |
| gurl       | curl --compressed    |
| update     | system & package update |
| ip         | public IP (dig)      |
| localip    | local IP (auto iface) |
| ips        | all IPs (ifconfig)   |
| whois      | whois -h whois-servers.net |
| flush      | flush DNS cache      |
| lscleanup  | clean Finder "Open With" |
| sniff      | HTTP traffic (ngrep) |
| httpdump   | HTTP dump (tcpdump)  |
| hd         | hexdump -C           |
| md5sum     | md5                  |
| sha1sum    | shasum               |
| cleanup    | delete .DS_Store     |
| emptytrash | empty Trash & logs   |
| show       | show hidden files    |
| hide       | hide hidden files    |
| hidedesktop| hide desktop icons   |
| showdesktop| show desktop icons   |
| urlencode  | URL-encode string    |

---

## Functions

| Function      | Description |
|---------------|-------------|
| mkd           | Create a new directory and enter it. Usage: `mkd mydir` |
| fs            | Show size of file or directory (human-readable). Usage: `fs [file|dir]` |
| diff          | Git diff with color (if git present). Usage: `diff file1 file2` |
| digga         | Show all DNS info for a domain. Usage: `digga example.com` |
| note          | Add a note to Notes.app (macOS). Usage: `note 'text'` or `echo 'text' | note` |
| remind        | Add a reminder to Reminders.app (macOS). Usage: `remind 'text'` or `echo 'text' | remind` |
| extract       | Extract almost any archive file. Usage: `extract file.zip` |
| trello        | Add a card to Trello. Usage: `trello "Task title" "Optional description"` (requires .secrets) |
| todo          | Add a task to Todoist. Usage: `todo "Task title"` (requires .secrets) |

---

## Compatibility
- macOS Sonoma and newer
- Zsh (default shell on macOS)

## Extending
- You can add your own aliases/functions to `.aliases`/`.functions`.
- For advanced prompt and plugins, try [Oh My Zsh](https://ohmyz.sh/) or [Powerlevel10k](https://github.com/romkatv/powerlevel10k).

---

## License

MIT © 2024 Alex Popek

**Enjoy your productive shell!** 