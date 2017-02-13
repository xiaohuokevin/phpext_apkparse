dnl $Id$
dnl config.m4 for extension apkparse

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(apkparse, for apkparse support,
dnl Make sure that the comment is aligned:
dnl [  --with-apkparse             Include apkparse support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(apkparse, whether to enable apkparse support,
dnl Make sure that the comment is aligned:
[  --enable-apkparse           Enable apkparse support])

if test "$PHP_APKPARSE" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-apkparse -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/apkparse.h"  # you most likely want to change this
  dnl if test -r $PHP_APKPARSE/$SEARCH_FOR; then # path given as parameter
  dnl   APKPARSE_DIR=$PHP_APKPARSE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for apkparse files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       APKPARSE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$APKPARSE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the apkparse distribution])
  dnl fi

  dnl # --with-apkparse -> add include path
  dnl PHP_ADD_INCLUDE($APKPARSE_DIR/include)

  dnl # --with-apkparse -> check for lib and symbol presence
  dnl LIBNAME=apkparse # you may want to change this
  dnl LIBSYMBOL=apkparse # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $APKPARSE_DIR/$PHP_LIBDIR, APKPARSE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_APKPARSELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong apkparse lib version or lib not found])
  dnl ],[
  dnl   -L$APKPARSE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(APKPARSE_SHARED_LIBADD)

  PHP_NEW_EXTENSION(apkparse, apkparse.c, $ext_shared)
fi
