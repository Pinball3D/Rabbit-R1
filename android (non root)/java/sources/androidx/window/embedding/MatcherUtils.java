package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: MatcherUtils.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fJ\u001f\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u000fJ\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/window/embedding/MatcherUtils;", "", "()V", "sDebugMatchers", "", "sMatchersTag", "", "areActivityOrIntentComponentsMatching", "activity", "Landroid/app/Activity;", "ruleComponent", "Landroid/content/ComponentName;", "areActivityOrIntentComponentsMatching$window_release", "areComponentsMatching", "activityComponent", "areComponentsMatching$window_release", "wildcardMatch", "name", "pattern", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MatcherUtils {
    public static final MatcherUtils INSTANCE = new MatcherUtils();
    public static final boolean sDebugMatchers = false;
    public static final String sMatchersTag = "SplitRuleResolution";

    private MatcherUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean areComponentsMatching$window_release(android.content.ComponentName r7, android.content.ComponentName r8) {
        /*
            r6 = this;
            java.lang.String r0 = "ruleComponent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "*"
            r1 = 1
            r2 = 0
            if (r7 != 0) goto L22
            java.lang.String r6 = r8.getPackageName()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
            if (r6 == 0) goto L20
            java.lang.String r6 = r8.getClassName()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
            if (r6 == 0) goto L20
            goto L21
        L20:
            r1 = r2
        L21:
            return r1
        L22:
            java.lang.String r3 = r7.toString()
            java.lang.String r4 = "activityComponent.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r4 = 2
            r5 = 0
            boolean r0 = kotlin.text.StringsKt.contains$default(r3, r0, r2, r4, r5)
            r0 = r0 ^ r1
            if (r0 == 0) goto L93
            java.lang.String r0 = r7.getPackageName()
            java.lang.String r3 = r8.getPackageName()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r3)
            if (r0 != 0) goto L61
            java.lang.String r0 = r7.getPackageName()
            java.lang.String r3 = "activityComponent.packageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            java.lang.String r3 = r8.getPackageName()
            java.lang.String r4 = "ruleComponent.packageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            boolean r0 = r6.wildcardMatch(r0, r3)
            if (r0 == 0) goto L5f
            goto L61
        L5f:
            r0 = r2
            goto L62
        L61:
            r0 = r1
        L62:
            java.lang.String r3 = r7.getClassName()
            java.lang.String r4 = r8.getClassName()
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 != 0) goto L8b
            java.lang.String r7 = r7.getClassName()
            java.lang.String r3 = "activityComponent.className"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r3)
            java.lang.String r8 = r8.getClassName()
            java.lang.String r3 = "ruleComponent.className"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r3)
            boolean r6 = r6.wildcardMatch(r7, r8)
            if (r6 == 0) goto L89
            goto L8b
        L89:
            r6 = r2
            goto L8c
        L8b:
            r6 = r1
        L8c:
            if (r0 == 0) goto L91
            if (r6 == 0) goto L91
            goto L92
        L91:
            r1 = r2
        L92:
            return r1
        L93:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "Wildcard can only be part of the rule."
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.embedding.MatcherUtils.areComponentsMatching$window_release(android.content.ComponentName, android.content.ComponentName):boolean");
    }

    public final boolean areActivityOrIntentComponentsMatching$window_release(Activity activity, ComponentName ruleComponent) {
        ComponentName component;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(ruleComponent, "ruleComponent");
        if (areComponentsMatching$window_release(activity.getComponentName(), ruleComponent)) {
            return true;
        }
        Intent intent = activity.getIntent();
        if (intent == null || (component = intent.getComponent()) == null) {
            return false;
        }
        return INSTANCE.areComponentsMatching$window_release(component, ruleComponent);
    }

    private final boolean wildcardMatch(String name, String pattern) {
        String str = pattern;
        if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "*", false, 2, (Object) null)) {
            return false;
        }
        if (Intrinsics.areEqual(pattern, "*")) {
            return true;
        }
        if (StringsKt.indexOf$default((CharSequence) str, "*", 0, false, 6, (Object) null) != StringsKt.lastIndexOf$default((CharSequence) str, "*", 0, false, 6, (Object) null) || !StringsKt.endsWith$default(pattern, "*", false, 2, (Object) null)) {
            throw new IllegalArgumentException("Name pattern with a wildcard must only contain a single wildcard in the end".toString());
        }
        String substring = pattern.substring(0, pattern.length() - 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return StringsKt.startsWith$default(name, substring, false, 2, (Object) null);
    }
}
