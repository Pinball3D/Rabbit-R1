package io.sentry.android.core;

import android.util.Log;
import io.sentry.Breadcrumb;
import io.sentry.Sentry;
import io.sentry.SentryLevel;
import io.sentry.protocol.ViewHierarchyNode;

/* loaded from: classes3.dex */
public final class SentryLogcatAdapter {
    private static void addAsBreadcrumb(String str, SentryLevel sentryLevel, String str2) {
        addAsBreadcrumb(str, sentryLevel, str2, null);
    }

    private static void addAsBreadcrumb(String str, SentryLevel sentryLevel, Throwable th) {
        addAsBreadcrumb(str, sentryLevel, null, th);
    }

    private static void addAsBreadcrumb(String str, SentryLevel sentryLevel, String str2, Throwable th) {
        Breadcrumb breadcrumb = new Breadcrumb();
        breadcrumb.setCategory("Logcat");
        breadcrumb.setMessage(str2);
        breadcrumb.setLevel(sentryLevel);
        if (str != null) {
            breadcrumb.setData(ViewHierarchyNode.JsonKeys.TAG, str);
        }
        if (th != null && th.getMessage() != null) {
            breadcrumb.setData("throwable", th.getMessage());
        }
        Sentry.addBreadcrumb(breadcrumb);
    }

    public static int v(String str, String str2) {
        addAsBreadcrumb(str, SentryLevel.DEBUG, str2);
        return Log.v(str, str2);
    }

    public static int v(String str, String str2, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.DEBUG, str2, th);
        return Log.v(str, str2, th);
    }

    public static int d(String str, String str2) {
        addAsBreadcrumb(str, SentryLevel.DEBUG, str2);
        return Log.d(str, str2);
    }

    public static int d(String str, String str2, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.DEBUG, str2, th);
        return Log.d(str, str2, th);
    }

    public static int i(String str, String str2) {
        addAsBreadcrumb(str, SentryLevel.INFO, str2);
        return Log.i(str, str2);
    }

    public static int i(String str, String str2, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.INFO, str2, th);
        return Log.i(str, str2, th);
    }

    public static int w(String str, String str2) {
        addAsBreadcrumb(str, SentryLevel.WARNING, str2);
        return Log.w(str, str2);
    }

    public static int w(String str, String str2, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.WARNING, str2, th);
        return Log.w(str, str2, th);
    }

    public static int w(String str, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.WARNING, th);
        return Log.w(str, th);
    }

    public static int e(String str, String str2) {
        addAsBreadcrumb(str, SentryLevel.ERROR, str2);
        return Log.e(str, str2);
    }

    public static int e(String str, String str2, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.ERROR, str2, th);
        return Log.e(str, str2, th);
    }

    public static int wtf(String str, String str2) {
        addAsBreadcrumb(str, SentryLevel.ERROR, str2);
        return Log.wtf(str, str2);
    }

    public static int wtf(String str, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.ERROR, th);
        return Log.wtf(str, th);
    }

    public static int wtf(String str, String str2, Throwable th) {
        addAsBreadcrumb(str, SentryLevel.ERROR, str2, th);
        return Log.wtf(str, str2, th);
    }
}
