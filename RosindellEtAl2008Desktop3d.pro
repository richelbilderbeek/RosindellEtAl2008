include(../../Libraries/GeneralConsole.pri)
include(RosindellEtAl2008Console.pri)

include(../../Libraries/Urho3d.pri)

# C++11
CONFIG += c++11
QMAKE_CXX = g++-4.8
QMAKE_LINK = g++-4.8
QMAKE_CC = gcc-4.8
QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror -std=c++11

LIBS += \
    -lpthread \
    -lSDL2 \ #Otherwise use -lSDL
    -ldl \
    -lGL

SOURCES += \
    mastercontrol.cpp \
    inputmaster.cpp \
    cameramaster.cpp

HEADERS += \
    mastercontrol.h \
    inputmaster.h \
    cameramaster.h

RESOURCES += \
    RosindellEtAl2008.qrc
