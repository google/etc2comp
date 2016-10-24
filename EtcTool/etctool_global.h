#ifndef ETCTOOL_GLOBAL_H
#define ETCTOOL_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(ETCTOOL_LIBRARY)
#  define ETCTOOLSHARED_EXPORT Q_DECL_EXPORT
#else
#  define ETCTOOLSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // ETCTOOL_GLOBAL_H
