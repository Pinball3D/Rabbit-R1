package com.google.common.base;

import java.util.Arrays;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Objects extends ExtraObjectsMethodsForWeb {
    private Objects() {
    }

    public static boolean equal(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(@CheckForNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
