#!/bin/bash
cd ..
git clone https://github.com/richelbilderbeek/RibiClasses
git clone https://github.com/richelbilderbeek/RibiLibraries
ls
cd RibiLibraries
./Urho3d.sh
cd ..
cd RosindellEtAl2008
qmake RosindellEtAl2008Console.pro
make
qmake RosindellEtAl2008Desktop.pro
make
qmake RosindellEtAl2008Desktop3d.pro
make