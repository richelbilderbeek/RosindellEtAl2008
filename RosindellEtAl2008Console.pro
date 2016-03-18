include(../RibiLibraries/ConsoleApplicationNoWeffcpp.pri)
include(../RibiLibraries/BoostAll.pri)
include(../RibiLibraries/GeneralConsole.pri)

include(RosindellEtAl2008Console.pri)

SOURCES += main.cpp \
    grid.cpp

HEADERS += \
    grid.h

QMAKE_CXXFLAGS += -Wno-unused-variable
