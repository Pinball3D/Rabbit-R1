package io.sentry.android.ndk;

/* loaded from: classes3.dex */
interface INativeScope {
    void addBreadcrumb(String str, String str2, String str3, String str4, String str5, String str6);

    void removeExtra(String str);

    void removeTag(String str);

    void removeUser();

    void setExtra(String str, String str2);

    void setTag(String str, String str2);

    void setUser(String str, String str2, String str3, String str4);
}
