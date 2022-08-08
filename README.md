# Leaf App Template

This is a simple app template for [Leaf](https://github.com/Naheuldark/Leaf) - unlike the example within the Leaf repository, this keeps Leaf as an external submodule and is much more sensible for actually building applications. See the [Leaf](https://github.com/TheCherno/Leaf) repository for more details.

## Getting Started
Once you've cloned, you can customize the `premake5.lua` and `LeafApp/premake5.lua` files to your liking (eg. change the name from "LeafApp" to something else).  Once you're happy, run `scripts/Setup.bat` to generate Visual Studio 2022 solution/project files. Your app is located in the `LeafApp/` directory, which some basic example code to get you going in `LeafApp/src/LeafApp.cpp`. I recommend modifying that LeafApp project to create your own application, as everything should be setup and ready to go.