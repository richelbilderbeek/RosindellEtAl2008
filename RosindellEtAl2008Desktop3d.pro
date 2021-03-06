QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TEMPLATE = app
CONFIG(release, debug|release) {
  message(Release mode)
  DEFINES += NDEBUG
}

QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++11

#equals(QT_MAJOR_VERSION, 4): LIBS +=  -lQtSvg
#greaterThan(QT_MAJOR_VERSION, 4): QT +=  concurrent opengl printsupport svg
include(../RibiLibraries/GeneralConsole.pri)

include(RosindellEtAl2008Console.pri)

INCLUDEPATH += \
    ../RosindellEtAl2008/Urho3D/include \
    ../RosindellEtAl2008/Urho3D/include/Urho3D/ThirdParty

LIBS += \
  ../RosindellEtAl2008/Urho3D/lib/libUrho3D.a

LIBS += \
    -lpthread \
    -lSDL \
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

QMAKE_CXXFLAGS += -Wno-unused-variable

# Debug and release mode
CONFIG += debug_and_release

# In release mode, define NDEBUG
CONFIG(release, debug|release) {

  DEFINES += NDEBUG
}

# In debug mode, turn on gcov and UBSAN
CONFIG(debug, debug|release) {

  # gcov
  QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
  LIBS += -lgcov

  # UBSAN
  QMAKE_CXXFLAGS += -fsanitize=undefined
  QMAKE_LFLAGS += -fsanitize=undefined
  LIBS += -lubsan
}
