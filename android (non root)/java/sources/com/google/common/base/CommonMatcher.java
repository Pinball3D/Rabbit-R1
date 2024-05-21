package com.google.common.base;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
abstract class CommonMatcher {
    public abstract int end();

    public abstract boolean find();

    public abstract boolean find(int i);

    public abstract boolean matches();

    public abstract String replaceAll(String str);

    public abstract int start();
}
