#ifndef ETCTOOL_GLOBAL_H
#define ETCTOOL_GLOBAL_H

#include <QtCore/qglobal.h>

#ifdef _WIN32
#if defined(ETCTOOL_LIBRARY)
#  define ETCTOOLSHARED_EXPORT Q_DECL_EXPORT
#else
#  define ETCTOOLSHARED_EXPORT Q_DECL_IMPORT
#endif
#else
#define ETCTOOLSHARED_EXPORT __attribute__ ((visibility("default")))
#endif

#endif // ETCTOOL_GLOBAL_H
