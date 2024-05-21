package kotlin.collections;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
class ArraysUtilJVM {
    ArraysUtilJVM() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<T> asList(T[] tArr) {
        return Arrays.asList(tArr);
    }
}
