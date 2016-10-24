#-------------------------------------------------
#
# Project created by QtCreator 2016-10-24T11:51:10
#
#-------------------------------------------------

QT       -= gui

TARGET = EtcLib
TEMPLATE = lib
CONFIG += c++11

DEFINES += ETCLIB_LIBRARY

isEmpty(BUILD_DIR) : BUILD_DIR = $$(BUILD_DIR)
DESTDIR = $$BUILD_DIR

INCLUDEPATH += EtcCodec/ \
               Etc/

SOURCES += \
    Etc/Etc.cpp \
    Etc/EtcImage.cpp \
    Etc/EtcMath.cpp \
    EtcCodec/EtcBlock4x4.cpp \
    EtcCodec/EtcBlock4x4Encoding.cpp \
    EtcCodec/EtcBlock4x4Encoding_ETC1.cpp \
    EtcCodec/EtcBlock4x4Encoding_R11.cpp \
    EtcCodec/EtcBlock4x4Encoding_RG11.cpp \
    EtcCodec/EtcBlock4x4Encoding_RGB8.cpp \
    EtcCodec/EtcBlock4x4Encoding_RGB8A1.cpp \
    EtcCodec/EtcBlock4x4Encoding_RGBA8.cpp \
    EtcCodec/EtcDifferentialTrys.cpp \
    EtcCodec/EtcIndividualTrys.cpp \
    EtcCodec/EtcSortedBlockList.cpp

HEADERS +=\
        etclib_global.h \
    Etc/Etc.h \
    Etc/EtcColor.h \
    Etc/EtcColorFloatRGBA.h \
    Etc/EtcConfig.h \
    Etc/EtcImage.h \
    Etc/EtcMath.h \
    EtcCodec/EtcBlock4x4.h \
    EtcCodec/EtcBlock4x4Encoding.h \
    EtcCodec/EtcBlock4x4Encoding_ETC1.h \
    EtcCodec/EtcBlock4x4Encoding_R11.h \
    EtcCodec/EtcBlock4x4Encoding_RG11.h \
    EtcCodec/EtcBlock4x4Encoding_RGB8.h \
    EtcCodec/EtcBlock4x4Encoding_RGB8A1.h \
    EtcCodec/EtcBlock4x4Encoding_RGBA8.h \
    EtcCodec/EtcBlock4x4EncodingBits.h \
    EtcCodec/EtcDifferentialTrys.h \
    EtcCodec/EtcErrorMetric.h \
    EtcCodec/EtcIndividualTrys.h \
    EtcCodec/EtcSortedBlockList.h
