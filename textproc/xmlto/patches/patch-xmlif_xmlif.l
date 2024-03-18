$NetBSD$

--- xmlif/xmlif.l.orig	2024-03-18 14:29:38.318505316 +0000
+++ xmlif/xmlif.l
@@ -43,7 +43,7 @@
 
 static char **selections;	/* selection tokens */
 static int nselections;		/* number of selections */
-static ifsense;			/* sense of last `if' or unless seen */
+static int ifsense;			/* sense of last `if' or unless seen */
 static char *attribute;		/* last attribute scanned */
 
 struct stack_t {
@@ -239,7 +239,7 @@ WS		[ \t\n]*
 
 int yywrap() {exit(0);};
 
-main(int argc, char *argv[])
+int main(int argc, char *argv[])
 {
     int i;
 
