include(../RibiLibraries/DesktopApplicationNoWeffcpp.pri)
include(../RibiLibraries/GeneralConsole.pri)
include(RosindellEtAl2008Console.pri)

include(../RibiLibraries/Urho3d.pri)

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
