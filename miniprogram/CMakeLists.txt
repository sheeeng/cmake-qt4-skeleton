cmake_minimum_required(VERSION 2.6.0)

set(TARGET
    miniprogram
)

project(${TARGET})

set(QT_REQUIRED 1)
set(DESIRED_QT_VERSION "4.5.3")
set(QT_USE_QTCORE 1)
set(QT_USE_QTGUI 1)
set(QT_USE_QTXML 1)

# Uncomment if you want to see the commands that make runs
set(CMAKE_VERBOSE_MAKEFILE ON)

# This module can be used to find Qt4.
# The most important issue is that the Qt4 qmake is available via the system path.
# This qmake is then used to detect basically everything else.
# This module defines a number of key variables and macros.
# First is QT_USE_FILE which is the path to a CMake file that can be included to compile Qt 4 applications and libraries.
# By default, the QtCore and QtGui libraries are loaded.
# This behavior can be changed by setting one or more of the following variables to true before doing INCLUDE(${QT_USE_FILE}):
    # QT_DONT_USE_QTCORE
    # QT_DONT_USE_QTGUI
    # QT_USE_QT3SUPPORT
    # QT_USE_QTASSISTANT
    # QT_USE_QAXCONTAINER
    # QT_USE_QAXSERVER
    # QT_USE_QTDESIGNER
    # QT_USE_QTMOTIF
    # QT_USE_QTMAIN
    # QT_USE_QTNETWORK
    # QT_USE_QTNSPLUGIN
    # QT_USE_QTOPENGL
    # QT_USE_QTSQL
    # QT_USE_QTXML
    # QT_USE_QTSVG
    # QT_USE_QTTEST
    # QT_USE_QTUITOOLS
    # QT_USE_QTDBUS
    # QT_USE_QTSCRIPT
    # QT_USE_QTASSISTANTCLIENT
    # QT_USE_QTHELP
    # QT_USE_QTWEBKIT
    # QT_USE_QTXMLPATTERNS
    # QT_USE_PHONON
# The file pointed to by QT_USE_FILE will set up your compile environment by adding include directories, preprocessor defines, and populate a QT_LIBRARIES variable containing all the Qt libraries and their dependencies.
# Add the QT_LIBRARIES variable to your TARGET_LINK_LIBRARIES.
# https://cmake.org/cmake/help/cmake2.6docs.html#module:FindQt4
find_package(Qt4 4.4.2 REQUIRED QtCore QtGui QtXml)

if ( NOT ${Qt_QtCore_FOUND} )
  message(FATAL_ERROR "Package Qt component QtCore required, but not found!")
endif( NOT ${Qt_QtCore_FOUND} )

# set(CMAKE_AUTOMOC ON)
# set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Definitions to use when compiling code that uses Qt.
# You do not need to use this if you include QT_USE_FILE.
# The QT_USE_FILE will also define QT_DEBUG and QT_NO_DEBUG
# to fit your current build type.  Those are not contained
# in QT_DEFINITIONS.
add_definitions(${QT_DEFINITIONS})

# List of paths to all include directories of 
# Qt4 QT_INCLUDE_DIR and QT_QTCORE_INCLUDE_DIR are
# always in this variable even if NOTFOUND,
# all other INCLUDE_DIRS are
# only added if they are found.
# You do not need to use this if you include QT_USE_FILE.
include_directories(${QT_INCLUDES})

include(${QT_USE_FILE})
message( STATUS "QT_USE_FILE      : " ${QT_USE_FILE} )
MESSAGE( STATUS "QT_LIBRARIES     : " ${QT_LIBRARIES} )

MESSAGE( STATUS "QT3_INSTALLED    : " ${QT3_INSTALLED} )
MESSAGE( STATUS "QT4_INSTALLED    : " ${QT4_INSTALLED} )

MESSAGE( STATUS "QT_INCLUDE_DIR   : " ${QT_INCLUDE_DIR} )
MESSAGE( STATUS "QT_DEFINITIONS   : " ${QT_DEFINITIONS} )
MESSAGE( STATUS "QT_INCLUDES      : " ${QT_INCLUDES} )

MESSAGE( STATUS "QT_FOUND         : " ${QT_FOUND} )
MESSAGE( STATUS "QT4_FOUND        : " ${QT4_FOUND} )
MESSAGE( STATUS "QT_VERSION_MAJOR : " ${QT_VERSION_MAJOR} )
MESSAGE( STATUS "QT_VERSION_MINOR : " ${QT_VERSION_MINOR} )
MESSAGE( STATUS "QT_VERSION_PATCH : " ${QT_VERSION_PATCH} )

MESSAGE( STATUS "QT_EDITION                 : " ${QT_EDITION} )
MESSAGE( STATUS "QT_EDITION_DESKTOPLIGHT    : " ${QT_EDITION_DESKTOPLIGHT} )
MESSAGE( STATUS "QT_QTCORE_FOUND            : " ${QT_QTCORE_FOUND} )
MESSAGE( STATUS "QT_QTGUI_FOUND             : " ${QT_QTGUI_FOUND} )
MESSAGE( STATUS "QT_QT3SUPPORT_FOUND        : " ${QT_QT3SUPPORT_FOUND} )
MESSAGE( STATUS "QT_QTASSISTANT_FOUND       : " ${QT_QTASSISTANT_FOUND} )
MESSAGE( STATUS "QT_QAXCONTAINER_FOUND      : " ${QT_QAXCONTAINER_FOUND} )
MESSAGE( STATUS "QT_QAXSERVER_FOUND         : " ${QT_QAXSERVER_FOUND} )
MESSAGE( STATUS "QT_QTDBUS_FOUND            : " ${QT_QTDBUS_FOUND} )
MESSAGE( STATUS "QT_QTDESIGNER_FOUND        : " ${QT_QTDESIGNER_FOUND} )
MESSAGE( STATUS "QT_QTDESIGNERCOMPONENTS    : " ${QT_QTDESIGNERCOMPONENTS} )
MESSAGE( STATUS "QT_QTMOTIF_FOUND           : " ${QT_QTMOTIF_FOUND} )
MESSAGE( STATUS "QT_QTNETWORK_FOUND         : " ${QT_QTNETWORK_FOUND} )
MESSAGE( STATUS "QT_QTNSPLUGIN_FOUND        : " ${QT_QTNSPLUGIN_FOUND} )
MESSAGE( STATUS "QT_QTOPENGL_FOUND          : " ${QT_QTOPENGL_FOUND} )
MESSAGE( STATUS "QT_QTSQL_FOUND             : " ${QT_QTSQL_FOUND} )
MESSAGE( STATUS "QT_QTXML_FOUND             : " ${QT_QTXML_FOUND} )
MESSAGE( STATUS "QT_QTSVG_FOUND             : " ${QT_QTSVG_FOUND} )
MESSAGE( STATUS "QT_QTSCRIPT_FOUND          : " ${QT_QTSCRIPT_FOUND} )
MESSAGE( STATUS "QT_QTTEST_FOUND            : " ${QT_QTTEST_FOUND} )
MESSAGE( STATUS "QT_QTUITOOLS_FOUND         : " ${QT_QTUITOOLS_FOUND} )
MESSAGE( STATUS "QT_QTASSISTANTCLIENT_FOUND : " ${QT_QTASSISTANTCLIENT_FOUND} )
MESSAGE( STATUS "QT_QTHELP_FOUND            : " ${QT_QTHELP_FOUND} )
MESSAGE( STATUS "QT_QTWEBKIT_FOUND          : " ${QT_QTWEBKIT_FOUND} )
MESSAGE( STATUS "QT_QTXMLPATTERNS_FOUND     : " ${QT_QTXMLPATTERNS_FOUND} )
MESSAGE( STATUS "QT_PHONON_FOUND            : " ${QT_PHONON_FOUND} )

MESSAGE( STATUS "QT_QT_LIBRARY              : " ${QT_QT_LIBRARY} )
MESSAGE( STATUS "QT_QTMAIN_LIBRARY          : " ${QT_QTMAIN_LIBRARY} )

MESSAGE( STATUS "QT_MOC_EXECUTABLE          : " ${QT_MOC_EXECUTABLE} )
MESSAGE( STATUS "QT_UIC_EXECUTABLE          : " ${QT_UIC_EXECUTABLE} )
MESSAGE( STATUS "QT_UIC3_EXECUTABLE         : " ${QT_UIC3_EXECUTABLE} )
MESSAGE( STATUS "QT_RCC_EXECUTABLE          : " ${QT_RCC_EXECUTABLE} )
MESSAGE( STATUS "QT_DBUSCPP2XML_EXECUTABLE  : " ${QT_DBUSCPP2XML_EXECUTABLE} )
MESSAGE( STATUS "QT_DBUSXML2CPP_EXECUTABLE  : " ${QT_DBUSXML2CPP_EXECUTABLE} )
MESSAGE( STATUS "QT_LUPDATE_EXECUTABLE      : " ${QT_LUPDATE_EXECUTABLE} )
MESSAGE( STATUS "QT_LRELEASE_EXECUTABLE     : " ${QT_LRELEASE_EXECUTABLE} )

# support for out-of-source build
include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}
)

MESSAGE( STATUS "CMAKE_CURRENT_BINARY_DIR   : " ${CMAKE_CURRENT_BINARY_DIR} )
MESSAGE( STATUS "CMAKE_CURRENT_SOURCE_DIR   : " ${CMAKE_CURRENT_SOURCE_DIR} )

set(HEADERS
    mainwindow.h
)

set(SOURCES
    mainwindow.cpp
    main.cpp
)

set(QT_RESOURCES
    resources.qrc
)

set(UIS
    mainwindow.ui
)

MESSAGE( STATUS "HEADERS : " ${HEADERS} )
MESSAGE( STATUS "SOURCES : " ${SOURCES} )
MESSAGE( STATUS "QT_RESOURCES : " ${QT_RESOURCES} )
MESSAGE( STATUS "UIS  : " ${UIS} )

# Produce moc files for all the .h files.
# https://cmake.org/cmake/help/cmake2.6docs.html#command:qt_wrap_cpp
qt4_wrap_cpp(HEADERS_GENERATED ${HEADERS})

# Produce .h and .cxx files for all the .ui files.
# https://cmake.org/cmake/help/cmake2.6docs.html#command:qt_wrap_ui
qt4_wrap_ui(UIS_GENERATED ${UIS})

# Create code from a list of Qt resource files.
qt4_add_resources(QT_RESOURCES_GENERATED ${QT_RESOURCES})

MESSAGE( STATUS "HEADERS_GENERATED : " ${HEADERS_GENERATED} )
MESSAGE( STATUS "QT_RESOURCES_GENERATED : " ${QT_RESOURCES_GENERATED} )
MESSAGE( STATUS "UIS_GENERATED  : " ${UIS_GENERATED} )

source_group( "Header Files" FILES ${HEADERS} )
source_group( "Form Files" FILES ${UIS} )
source_group( "Resource Files" FILES ${QT_RESOURCES} )
source_group( "Generated Files" FILES ${HEADERS_GENERATED} ${QT_RESOURCES_GENERATED} ${UIS_GENERATED} )

# add_library(${TARGET}
    # ${HEADERS}
    # ${SOURCES}
    # ${QT_RESOURCES}
    # ${HEADERS_GENERATED}
    # ${QT_RESOURCES_GENERATED}
    # ${UIS_GENERATED}
# )

add_executable(${TARGET}
    ${HEADERS}
    ${SOURCES}
    ${QT_RESOURCES}
    ${HEADERS_GENERATED}
    ${QT_RESOURCES_GENERATED}
    ${UIS_GENERATED}
)

target_link_libraries(${TARGET}
    ${QT_LIBRARIES}
    ${QT_QTCORE_LIBRARIES}
    ${QT_QTGUI_LIBRARIES}
    ${QT_QTMAIN_LIBRARY}
    ${QT_QTXML_LIBRARIES}
)
