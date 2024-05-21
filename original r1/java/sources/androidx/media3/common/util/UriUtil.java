package androidx.media3.common.util;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class UriUtil {
    private static final int FRAGMENT = 3;
    private static final int INDEX_COUNT = 4;
    private static final int PATH = 1;
    private static final int QUERY = 2;
    private static final int SCHEME_COLON = 0;

    private UriUtil() {
    }

    public static Uri resolveToUri(String str, String str2) {
        return Uri.parse(resolve(str, str2));
    }

    public static String resolve(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] uriIndices = getUriIndices(str2);
        if (uriIndices[0] != -1) {
            sb.append(str2);
            removeDotSegments(sb, uriIndices[1], uriIndices[2]);
            return sb.toString();
        }
        int[] uriIndices2 = getUriIndices(str);
        if (uriIndices[3] == 0) {
            return sb.append((CharSequence) str, 0, uriIndices2[3]).append(str2).toString();
        }
        if (uriIndices[2] == 0) {
            return sb.append((CharSequence) str, 0, uriIndices2[2]).append(str2).toString();
        }
        int i = uriIndices[1];
        if (i != 0) {
            int i2 = uriIndices2[0] + 1;
            sb.append((CharSequence) str, 0, i2).append(str2);
            return removeDotSegments(sb, uriIndices[1] + i2, i2 + uriIndices[2]);
        }
        if (str2.charAt(i) == '/') {
            sb.append((CharSequence) str, 0, uriIndices2[1]).append(str2);
            int i3 = uriIndices2[1];
            return removeDotSegments(sb, i3, uriIndices[2] + i3);
        }
        int i4 = uriIndices2[0] + 2;
        int i5 = uriIndices2[1];
        if (i4 < i5 && i5 == uriIndices2[2]) {
            sb.append((CharSequence) str, 0, i5).append('/').append(str2);
            int i6 = uriIndices2[1];
            return removeDotSegments(sb, i6, uriIndices[2] + i6 + 1);
        }
        int lastIndexOf = str.lastIndexOf(47, uriIndices2[2] - 1);
        int i7 = lastIndexOf == -1 ? uriIndices2[1] : lastIndexOf + 1;
        sb.append((CharSequence) str, 0, i7).append(str2);
        return removeDotSegments(sb, uriIndices2[1], i7 + uriIndices[2]);
    }

    public static boolean isAbsolute(String str) {
        return (str == null || getUriIndices(str)[0] == -1) ? false : true;
    }

    public static Uri removeQueryParameter(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.clearQuery();
        for (String str2 : uri.getQueryParameterNames()) {
            if (!str2.equals(str)) {
                Iterator<String> it = uri.getQueryParameters(str2).iterator();
                while (it.hasNext()) {
                    buildUpon.appendQueryParameter(str2, it.next());
                }
            }
        }
        return buildUpon.build();
    }

    private static String removeDotSegments(StringBuilder sb, int i, int i2) {
        int i3;
        int i4;
        if (i >= i2) {
            return sb.toString();
        }
        if (sb.charAt(i) == '/') {
            i++;
        }
        int i5 = i;
        int i6 = i5;
        while (i5 <= i2) {
            if (i5 == i2) {
                i3 = i5;
            } else if (sb.charAt(i5) == '/') {
                i3 = i5 + 1;
            } else {
                i5++;
            }
            int i7 = i6 + 1;
            if (i5 == i7 && sb.charAt(i6) == '.') {
                sb.delete(i6, i3);
                i2 -= i3 - i6;
            } else {
                if (i5 == i6 + 2 && sb.charAt(i6) == '.' && sb.charAt(i7) == '.') {
                    i4 = sb.lastIndexOf("/", i6 - 2) + 1;
                    int i8 = i4 > i ? i4 : i;
                    sb.delete(i8, i3);
                    i2 -= i3 - i8;
                } else {
                    i4 = i5 + 1;
                }
                i6 = i4;
            }
            i5 = i6;
        }
        return sb.toString();
    }

    private static int[] getUriIndices(String str) {
        int i;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i2 = indexOf4 + 2;
        if (i2 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i2) == '/') {
            i = str.indexOf(47, indexOf4 + 3);
            if (i == -1 || i > indexOf2) {
                i = indexOf2;
            }
        } else {
            i = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }
}
