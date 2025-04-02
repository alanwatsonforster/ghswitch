# ghswitch: Managing GitHub Identities

The `ghswitch` program facilitates for switching between accounts on [GitHub](https://github.com). I use it for switching between my home and work accounts when I start working in a repository.

It:

- Switches or authenticates with the specified account on GitHub.
- Optionally, sets the name and email address in the local git configuration.

## Use

When you start working in a repository, run `ghswitch` with appropriate arguments. For example, to switch to my home account, I use:

    ghswitch alanwatsonforster "Alan Watson Forster" "68709385+alanwatsonforster@users.noreply.github.com"

If you do not want to set the name and email address, omit the second and third arguments.

You may want to configure shell scripts or shell aliases for your different accounts to avoid having to remember the arguments. I have an shell script `ghswitch-home` for my home account and another `ghswitch-work` for my work account. My `ghswitch-home` script is just:

    #!/bin/sh

    name="Alan Watson Forster"
    email="68709385+alanwatsonforster@users.noreply.github.com"
    account="alanwatsonforster"

    ghswitch "$account" "$name" "$email"

    exit 0

## Installation

1. Install git if you need to.

2. Install the [GitHub CLI](https://cli.github.com/). If you have Homebrew installed, this is just:

        brew install gh

3. Then:

        sudo make install

    This will install the files in /usr/local/bin by default. If you want to install them elsewhere, use:

        make install prefix=/some/other/prefix

    