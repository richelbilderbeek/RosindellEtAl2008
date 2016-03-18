include(../RibiLibraries/DesktopApplicationNoWeffcpp.pri)
include(../RibiLibraries/BoostAll.pri)
include(../RibiLibraries/GeneralConsole.pri)

include(RosindellEtAl2008Console.pri)

SOURCES += qtmain.cpp \
    qttree.cpp

FORMS += \
    qttree.ui

HEADERS += \
    qttree.h

QMAKE_CXXFLAGS += -Wno-unused-variable
