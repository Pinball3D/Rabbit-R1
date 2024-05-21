package io.sentry.util;

import java.net.URI;
import java.util.List;

/* loaded from: classes3.dex */
public final class PropagationTargetsUtils {
    public static boolean contain(List<String> list, String str) {
        if (list.isEmpty()) {
            return false;
        }
        for (String str2 : list) {
            if (str.contains(str2)) {
                return true;
            }
            if (str.matches(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean contain(List<String> list, URI uri) {
        return contain(list, uri.toString());
    }
}
