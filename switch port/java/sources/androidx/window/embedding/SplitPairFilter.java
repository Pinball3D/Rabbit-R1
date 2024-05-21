package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: SplitPairFilter.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014J\b\u0010\u0019\u001a\u00020\u0006H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001a"}, d2 = {"Landroidx/window/embedding/SplitPairFilter;", "", "primaryActivityName", "Landroid/content/ComponentName;", "secondaryActivityName", "secondaryActivityIntentAction", "", "(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V", "getPrimaryActivityName", "()Landroid/content/ComponentName;", "getSecondaryActivityIntentAction", "()Ljava/lang/String;", "getSecondaryActivityName", "equals", "", "other", "hashCode", "", "matchesActivityIntentPair", "primaryActivity", "Landroid/app/Activity;", "secondaryActivityIntent", "Landroid/content/Intent;", "matchesActivityPair", "secondaryActivity", "toString", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SplitPairFilter {
    private final ComponentName primaryActivityName;
    private final String secondaryActivityIntentAction;
    private final ComponentName secondaryActivityName;

    public final ComponentName getPrimaryActivityName() {
        return this.primaryActivityName;
    }

    public final String getSecondaryActivityIntentAction() {
        return this.secondaryActivityIntentAction;
    }

    public final ComponentName getSecondaryActivityName() {
        return this.secondaryActivityName;
    }

    public SplitPairFilter(ComponentName primaryActivityName, ComponentName secondaryActivityName, String str) {
        Intrinsics.checkNotNullParameter(primaryActivityName, "primaryActivityName");
        Intrinsics.checkNotNullParameter(secondaryActivityName, "secondaryActivityName");
        this.primaryActivityName = primaryActivityName;
        this.secondaryActivityName = secondaryActivityName;
        this.secondaryActivityIntentAction = str;
        String packageName = primaryActivityName.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "primaryActivityName.packageName");
        String className = primaryActivityName.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "primaryActivityName.className");
        String packageName2 = secondaryActivityName.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName2, "secondaryActivityName.packageName");
        String className2 = secondaryActivityName.getClassName();
        Intrinsics.checkNotNullExpressionValue(className2, "secondaryActivityName.className");
        String str2 = packageName;
        if (str2.length() == 0 || packageName2.length() == 0) {
            throw new IllegalArgumentException("Package name must not be empty".toString());
        }
        String str3 = className;
        if (str3.length() == 0 || className2.length() == 0) {
            throw new IllegalArgumentException("Activity class name must not be empty.".toString());
        }
        if (StringsKt.contains$default((CharSequence) str2, (CharSequence) "*", false, 2, (Object) null) && StringsKt.indexOf$default((CharSequence) str2, "*", 0, false, 6, (Object) null) != packageName.length() - 1) {
            throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.".toString());
        }
        if (StringsKt.contains$default((CharSequence) str3, (CharSequence) "*", false, 2, (Object) null) && StringsKt.indexOf$default((CharSequence) str3, "*", 0, false, 6, (Object) null) != className.length() - 1) {
            throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.".toString());
        }
        String str4 = packageName2;
        if (StringsKt.contains$default((CharSequence) str4, (CharSequence) "*", false, 2, (Object) null) && StringsKt.indexOf$default((CharSequence) str4, "*", 0, false, 6, (Object) null) != packageName2.length() - 1) {
            throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.".toString());
        }
        String str5 = className2;
        if (StringsKt.contains$default((CharSequence) str5, (CharSequence) "*", false, 2, (Object) null) && StringsKt.indexOf$default((CharSequence) str5, "*", 0, false, 6, (Object) null) != className2.length() - 1) {
            throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
    
        if (matchesActivityIntentPair(r6, r7) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean matchesActivityPair(android.app.Activity r6, android.app.Activity r7) {
        /*
            r5 = this;
            java.lang.String r0 = "primaryActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "secondaryActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            androidx.window.embedding.MatcherUtils r0 = androidx.window.embedding.MatcherUtils.INSTANCE
            android.content.ComponentName r1 = r6.getComponentName()
            android.content.ComponentName r2 = r5.primaryActivityName
            boolean r0 = r0.areComponentsMatching$window_release(r1, r2)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L2a
            androidx.window.embedding.MatcherUtils r0 = androidx.window.embedding.MatcherUtils.INSTANCE
            android.content.ComponentName r3 = r7.getComponentName()
            android.content.ComponentName r4 = r5.secondaryActivityName
            boolean r0 = r0.areComponentsMatching$window_release(r3, r4)
            if (r0 == 0) goto L2a
            r0 = r1
            goto L2b
        L2a:
            r0 = r2
        L2b:
            android.content.Intent r3 = r7.getIntent()
            if (r3 == 0) goto L45
            if (r0 == 0) goto L43
            android.content.Intent r7 = r7.getIntent()
            java.lang.String r0 = "secondaryActivity.intent"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            boolean r5 = r5.matchesActivityIntentPair(r6, r7)
            if (r5 == 0) goto L43
            goto L44
        L43:
            r1 = r2
        L44:
            r0 = r1
        L45:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.embedding.SplitPairFilter.matchesActivityPair(android.app.Activity, android.app.Activity):boolean");
    }

    public final boolean matchesActivityIntentPair(Activity primaryActivity, Intent secondaryActivityIntent) {
        Intrinsics.checkNotNullParameter(primaryActivity, "primaryActivity");
        Intrinsics.checkNotNullParameter(secondaryActivityIntent, "secondaryActivityIntent");
        if (!MatcherUtils.INSTANCE.areComponentsMatching$window_release(primaryActivity.getComponentName(), this.primaryActivityName) || !MatcherUtils.INSTANCE.areComponentsMatching$window_release(secondaryActivityIntent.getComponent(), this.secondaryActivityName)) {
            return false;
        }
        String str = this.secondaryActivityIntentAction;
        return str == null || Intrinsics.areEqual(str, secondaryActivityIntent.getAction());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SplitPairFilter)) {
            return false;
        }
        SplitPairFilter splitPairFilter = (SplitPairFilter) other;
        return Intrinsics.areEqual(this.primaryActivityName, splitPairFilter.primaryActivityName) && Intrinsics.areEqual(this.secondaryActivityName, splitPairFilter.secondaryActivityName) && Intrinsics.areEqual(this.secondaryActivityIntentAction, splitPairFilter.secondaryActivityIntentAction);
    }

    public int hashCode() {
        int hashCode = ((this.primaryActivityName.hashCode() * 31) + this.secondaryActivityName.hashCode()) * 31;
        String str = this.secondaryActivityIntentAction;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "SplitPairFilter{primaryActivityName=" + this.primaryActivityName + ", secondaryActivityName=" + this.secondaryActivityName + ", secondaryActivityAction=" + ((Object) this.secondaryActivityIntentAction) + '}';
    }
}
