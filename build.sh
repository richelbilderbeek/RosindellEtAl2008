#!/bin/bash
cd ..
git clone https://github.com/richelbilderbeek/RibiClasses
git clone https://github.com/richelbilderbeek/RibiLibraries
cd RosindellEtAl2008
./Urho3d.sh
qmake RosindellEtAl2008Console.pro
make
qmake RosindellEtAl2008Desktop.pro
make
qmake RosindellEtAl2008Desktop3d.pro
make