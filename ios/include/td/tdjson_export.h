
#ifndef TDJSON_EXPORT_H
#define TDJSON_EXPORT_H

#ifdef TDJSON_STATIC_DEFINE
#  define TDJSON_EXPORT
#  define TDJSON_NO_EXPORT
#else
#  ifndef TDJSON_EXPORT
#    ifdef tdjson_EXPORTS
        /* We are building this library */
#      define TDJSON_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define TDJSON_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef TDJSON_NO_EXPORT
#    define TDJSON_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef TDJSON_DEPRECATED
#  define TDJSON_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef TDJSON_DEPRECATED_EXPORT
#  define TDJSON_DEPRECATED_EXPORT TDJSON_EXPORT TDJSON_DEPRECATED
#endif

#ifndef TDJSON_DEPRECATED_NO_EXPORT
#  define TDJSON_DEPRECATED_NO_EXPORT TDJSON_NO_EXPORT TDJSON_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef TDJSON_NO_DEPRECATED
#    define TDJSON_NO_DEPRECATED
#  endif
#endif

#endif /* TDJSON_EXPORT_H */
