package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
public class AnimationUtilsCompat {
    public static Interpolator loadInterpolator(Context context, int i) throws Resources.NotFoundException {
        return AnimationUtils.loadInterpolator(context, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x00c8, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.animation.Interpolator createInterpolatorFromXml(android.content.Context r2, android.content.res.Resources r3, android.content.res.Resources.Theme r4, org.xmlpull.v1.XmlPullParser r5) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            int r3 = r5.getDepth()
            r4 = 0
        L5:
            int r0 = r5.next()
            r1 = 3
            if (r0 != r1) goto L12
            int r1 = r5.getDepth()
            if (r1 <= r3) goto Lc8
        L12:
            r1 = 1
            if (r0 == r1) goto Lc8
            r1 = 2
            if (r0 == r1) goto L19
            goto L5
        L19:
            android.util.AttributeSet r4 = android.util.Xml.asAttributeSet(r5)
            java.lang.String r0 = r5.getName()
            java.lang.String r1 = "linearInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L2f
            android.view.animation.LinearInterpolator r4 = new android.view.animation.LinearInterpolator
            r4.<init>()
            goto L5
        L2f:
            java.lang.String r1 = "accelerateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3e
            android.view.animation.AccelerateInterpolator r0 = new android.view.animation.AccelerateInterpolator
            r0.<init>(r2, r4)
        L3c:
            r4 = r0
            goto L5
        L3e:
            java.lang.String r1 = "decelerateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L4c
            android.view.animation.DecelerateInterpolator r0 = new android.view.animation.DecelerateInterpolator
            r0.<init>(r2, r4)
            goto L3c
        L4c:
            java.lang.String r1 = "accelerateDecelerateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L5a
            android.view.animation.AccelerateDecelerateInterpolator r4 = new android.view.animation.AccelerateDecelerateInterpolator
            r4.<init>()
            goto L5
        L5a:
            java.lang.String r1 = "cycleInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L68
            android.view.animation.CycleInterpolator r0 = new android.view.animation.CycleInterpolator
            r0.<init>(r2, r4)
            goto L3c
        L68:
            java.lang.String r1 = "anticipateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L76
            android.view.animation.AnticipateInterpolator r0 = new android.view.animation.AnticipateInterpolator
            r0.<init>(r2, r4)
            goto L3c
        L76:
            java.lang.String r1 = "overshootInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L84
            android.view.animation.OvershootInterpolator r0 = new android.view.animation.OvershootInterpolator
            r0.<init>(r2, r4)
            goto L3c
        L84:
            java.lang.String r1 = "anticipateOvershootInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L92
            android.view.animation.AnticipateOvershootInterpolator r0 = new android.view.animation.AnticipateOvershootInterpolator
            r0.<init>(r2, r4)
            goto L3c
        L92:
            java.lang.String r1 = "bounceInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto La1
            android.view.animation.BounceInterpolator r4 = new android.view.animation.BounceInterpolator
            r4.<init>()
            goto L5
        La1:
            java.lang.String r1 = "pathInterpolator"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Laf
            androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat r0 = new androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat
            r0.<init>(r2, r4, r5)
            goto L3c
        Laf:
            java.lang.RuntimeException r2 = new java.lang.RuntimeException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unknown interpolator name: "
            r3.<init>(r4)
            java.lang.String r4 = r5.getName()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        Lc8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat.createInterpolatorFromXml(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser):android.view.animation.Interpolator");
    }

    private AnimationUtilsCompat() {
    }
}
