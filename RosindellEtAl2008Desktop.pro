include(../RibiLibraries/BoostAll.pri)
include(../RibiLibraries/GeneralConsole.pri)

include(RosindellEtAl2008Console.pri)

# C++11
CONFIG += c++11
QMAKE_CXX = g++-4.8
QMAKE_LINK = g++-4.8
QMAKE_CC = gcc-4.8
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++11


SOURCES += qtmain.cpp \
    qttree.cpp

FORMS += \
    qttree.ui

HEADERS += \
    qttree.h
