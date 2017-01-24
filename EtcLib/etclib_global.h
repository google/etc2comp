#ifndef ETCLIB_GLOBAL_H
#define ETCLIB_GLOBAL_H

#include <QtCore/qglobal.h>

#ifdef _WIN32
#if defined(ETCLIB_LIBRARY)
#  define ETCLIBSHARED_EXPORT __declspec(dllexport)
#else
#  define ETCLIBSHARED_EXPORT __declspec(dllimport)
#endif
#else
#define ETCLIBSHARED_EXPORT __attribute__ ((visibility("default")))
#endif

#endif // ETCLIB_GLOBAL_H
