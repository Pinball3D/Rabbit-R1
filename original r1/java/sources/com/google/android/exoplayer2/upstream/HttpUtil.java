package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.Assertions;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class HttpUtil {
    private static final String TAG = "HttpUtil";
    private static final Pattern CONTENT_RANGE_WITH_START_AND_END = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern CONTENT_RANGE_WITH_SIZE = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    private HttpUtil() {
    }

    public static String buildRangeRequestHeader(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder("bytes=");
        sb.append(j);
        sb.append("-");
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }

    public static long getDocumentSize(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = CONTENT_RANGE_WITH_SIZE.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) Assertions.checkNotNull(matcher.group(1)));
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getContentLength(java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "Inconsistent headers ["
            boolean r1 = android.text.TextUtils.isEmpty(r10)
            java.lang.String r2 = "]"
            java.lang.String r3 = "HttpUtil"
            if (r1 != 0) goto L27
            long r4 = java.lang.Long.parseLong(r10)     // Catch: java.lang.NumberFormatException -> L11
            goto L29
        L11:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r4 = "Unexpected Content-Length ["
            r1.<init>(r4)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.google.android.exoplayer2.util.Log.e(r3, r1)
        L27:
            r4 = -1
        L29:
            boolean r1 = android.text.TextUtils.isEmpty(r11)
            if (r1 != 0) goto La3
            java.util.regex.Pattern r1 = com.google.android.exoplayer2.upstream.HttpUtil.CONTENT_RANGE_WITH_START_AND_END
            java.util.regex.Matcher r1 = r1.matcher(r11)
            boolean r6 = r1.matches()
            if (r6 == 0) goto La3
            r6 = 2
            java.lang.String r6 = r1.group(r6)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.Object r6 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r6)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.NumberFormatException -> L8d
            long r6 = java.lang.Long.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L8d
            r8 = 1
            java.lang.String r1 = r1.group(r8)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.Object r1 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r1)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.NumberFormatException -> L8d
            long r8 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L8d
            long r6 = r6 - r8
            r8 = 1
            long r6 = r6 + r8
            r8 = 0
            int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r1 >= 0) goto L65
            r4 = r6
            goto La3
        L65:
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 == 0) goto La3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L8d
            r1.<init>(r0)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.StringBuilder r10 = r1.append(r10)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r0 = "] ["
            java.lang.StringBuilder r10 = r10.append(r0)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.StringBuilder r10 = r10.append(r11)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.StringBuilder r10 = r10.append(r2)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r10 = r10.toString()     // Catch: java.lang.NumberFormatException -> L8d
            com.google.android.exoplayer2.util.Log.w(r3, r10)     // Catch: java.lang.NumberFormatException -> L8d
            long r10 = java.lang.Math.max(r4, r6)     // Catch: java.lang.NumberFormatException -> L8d
            r4 = r10
            goto La3
        L8d:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r0 = "Unexpected Content-Range ["
            r10.<init>(r0)
            java.lang.StringBuilder r10 = r10.append(r11)
            java.lang.StringBuilder r10 = r10.append(r2)
            java.lang.String r10 = r10.toString()
            com.google.android.exoplayer2.util.Log.e(r3, r10)
        La3:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.HttpUtil.getContentLength(java.lang.String, java.lang.String):long");
    }
}
