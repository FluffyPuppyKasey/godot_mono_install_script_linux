# Godot Mono/.NET Install Script for linux

Adapted from [SingingBush/godot-fedora.md](https://gist.github.com/SingingBush/a16ef4bc8b94f57d3aa0e74d9c358d24).
(improved by fluffypuppykasey)

## Prerequisites
- Mono (Required for Godot)
    - [Debian-based instructions](https://www.mono-project.com/download/stable/#download-lin)
    - Arch: `mono`
    - Fedora: `mono-devel`
- ImageMagick (Required for the script. Could already be installed since it is a popular dependancy)
    - Debian-based: `imagemagick`
    - Arch: `imagemagick `
    - Fedora: `ImageMagick`
.NET (Latest version is 10.0 as of latest commit)
- The command is the same for every package manager and follows the format `dotnet-sdk-<version>`. It's available on the following the distos using the latest version as an example.
    - Debian-based: `dotnet-sdk-10.0`
    - Arch AUR: `dotnet-sdk-10.0`
    - Fedora: `dotnet-sdk-10.0`

## This script works for any version and acts as a first time install as it downloads an icon and creates a launcher.
I hope to make this work as an update script as well.
