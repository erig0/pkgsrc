? 1283.patch
? tmux
? x.diff.txt
Index: alerts.c
===================================================================
RCS file: /cvs/src/usr.bin/tmux/alerts.c,v
retrieving revision 1.29
diff -u -p -r1.29 alerts.c
--- alerts.c	28 Dec 2017 12:10:50 -0000	1.29
+++ alerts.c	19 Mar 2018 10:52:14 -0000
@@ -200,7 +200,7 @@ alerts_check_bell(struct window *w)
 		 * not check WINLINK_BELL).
 		 */
 		s = wl->session;
-		if (s->curw != wl) {
+		if (s->curw != wl || (!s->attached)) {
 			wl->flags |= WINLINK_BELL;
 			server_status_session(s);
 		}
@@ -236,7 +236,7 @@ alerts_check_activity(struct window *w)
 		if (wl->flags & WINLINK_ACTIVITY)
 			continue;
 		s = wl->session;
-		if (s->curw != wl) {
+		if (s->curw != wl || (!s->attached)) {
 			wl->flags |= WINLINK_ACTIVITY;
 			server_status_session(s);
 		}
@@ -272,7 +272,7 @@ alerts_check_silence(struct window *w)
 		if (wl->flags & WINLINK_SILENCE)
 			continue;
 		s = wl->session;
-		if (s->curw != wl) {
+		if (s->curw != wl || (!s->attached)) {
 			wl->flags |= WINLINK_SILENCE;
 			server_status_session(s);
 		}
