#ifndef ETCLIB_GLOBAL_H
#define ETCLIB_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(ETCLIB_LIBRARY)
#  define ETCLIBSHARED_EXPORT Q_DECL_EXPORT
#else
#  define ETCLIBSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // ETCLIB_GLOBAL_H
