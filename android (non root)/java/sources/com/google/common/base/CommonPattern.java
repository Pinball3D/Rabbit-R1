package com.google.common.base;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class CommonPattern {
    public abstract int flags();

    public abstract CommonMatcher matcher(CharSequence charSequence);

    public abstract String pattern();

    public abstract String toString();

    public static CommonPattern compile(String str) {
        return Platform.compilePattern(str);
    }

    public static boolean isPcreLike() {
        return Platform.patternCompilerIsPcreLike();
    }
}
