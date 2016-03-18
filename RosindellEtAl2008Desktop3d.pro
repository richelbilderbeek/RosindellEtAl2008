include(../RibiLibraries/DesktopApplicationNoWeffcpp.pri)
include(../RibiLibraries/GeneralConsole.pri)
include(RosindellEtAl2008Console.pri)

include(../RibiLibraries/Urho3d.pri)

LIBS += \
    -lpthread \
    -lSDL \
    -ldl \
    -lGL

# -lSDL2 \ #Otherwise use -lSDL

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

QMAKE_CXXFLAGS += -Wno-unused-variable
