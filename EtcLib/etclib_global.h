#ifndef ETCLIB_GLOBAL_H
#define ETCLIB_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(ETCLIB_LIBRARY)
#  define ETCLIBSHARED_EXPORT __declspec(dllexport)
#else
#  define ETCLIBSHARED_EXPORT __declspec(dllimport)
#endif

#endif // ETCLIB_GLOBAL_H
