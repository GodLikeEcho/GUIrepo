Alt text
Description: Cross platform playzone application for Chessgames.com that lets users play chess against one another across the world on iOS, Android and all major desktop platforms (Windows, OSX, Linux). Built from entirely from scratch using C++ and the Qt framework. http://www.cgplayzone.com

Technologies:
C++, Qt, QML, Javascript, SQLite

Screenshots:

Alt text 
Login screen for the Chessgames application.


Alt text 
Lobby for the Chessgames application.


Alt text 
Profile of a user in the Chessgames application.


Alt text 
Playing a game in the Chessgames application.


Installation:
1. Install Qt 5.6 
2. Open project 
3. Clean all, run qmake, build all, run. 

Contribution Guidelines:
For any future contributors to the Chessgames project, development changes are primarily made through dev branches which are denoted with: dev_contributor_task. Where the task is the current item that the developer is working on.

When a task is deemed complete, the contribution should be reviewed prior to being merged with the master branch.

Note on naming convention: We prefix all of our classes and .h, .cpp, and .qml files with "CG_". (E.g. CG_board.qml)

Bounty List (bugs):
Currently there are bugs relating to the scalability of some of the UI components.
At the end of a game the QML connecting back to the lobby was recently broken and needs to be looked into.

Contributors:
Past, present, and future.

StewartTaylor
JacobNeal
Tpimp
SaudMoh
Tigereye504
r-hurtado
jared-smithype
JLRaffaele
AaronCostner
LewisSanchez

Inspiration:
Although Chessgames.com has been one of the largest chess databases for a long time, it has lacked a play zone that allows users to play chess online against one another. This is the aim of this project.

License:
The MIT License (MIT)
Copyright (c) 2016 Chessgames LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
