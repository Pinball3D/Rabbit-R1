package androidx.compose.ui.platform;

import android.content.res.Configuration;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidComposeView.android.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a5\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\nH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000e\u001a\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\nH\u0002\u001a!\u0010\u0011\u001a\u00020\u0012*\u00020\b2\u0006\u0010\u0013\u001a\u00020\bH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"localeLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "Landroid/content/res/Configuration;", "getLocaleLayoutDirection", "(Landroid/content/res/Configuration;)Landroidx/compose/ui/unit/LayoutDirection;", "dot", "", "m1", "Landroidx/compose/ui/graphics/Matrix;", "row", "", "m2", "column", "dot-p89u6pk", "([FI[FI)F", "layoutDirectionFromInt", "layoutDirection", "preTransform", "", "other", "preTransform-JiSxe2E", "([F[F)V", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidComposeView_androidKt {
    public static final LayoutDirection getLocaleLayoutDirection(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "<this>");
        return layoutDirectionFromInt(configuration.getLayoutDirection());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LayoutDirection layoutDirectionFromInt(int i) {
        if (i == 0) {
            return LayoutDirection.Ltr;
        }
        if (i == 1) {
            return LayoutDirection.Rtl;
        }
        return LayoutDirection.Ltr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: preTransform-JiSxe2E, reason: not valid java name */
    public static final void m4180preTransformJiSxe2E(float[] fArr, float[] fArr2) {
        float m4179dotp89u6pk = m4179dotp89u6pk(fArr2, 0, fArr, 0);
        float m4179dotp89u6pk2 = m4179dotp89u6pk(fArr2, 0, fArr, 1);
        float m4179dotp89u6pk3 = m4179dotp89u6pk(fArr2, 0, fArr, 2);
        float m4179dotp89u6pk4 = m4179dotp89u6pk(fArr2, 0, fArr, 3);
        float m4179dotp89u6pk5 = m4179dotp89u6pk(fArr2, 1, fArr, 0);
        float m4179dotp89u6pk6 = m4179dotp89u6pk(fArr2, 1, fArr, 1);
        float m4179dotp89u6pk7 = m4179dotp89u6pk(fArr2, 1, fArr, 2);
        float m4179dotp89u6pk8 = m4179dotp89u6pk(fArr2, 1, fArr, 3);
        float m4179dotp89u6pk9 = m4179dotp89u6pk(fArr2, 2, fArr, 0);
        float m4179dotp89u6pk10 = m4179dotp89u6pk(fArr2, 2, fArr, 1);
        float m4179dotp89u6pk11 = m4179dotp89u6pk(fArr2, 2, fArr, 2);
        float m4179dotp89u6pk12 = m4179dotp89u6pk(fArr2, 2, fArr, 3);
        float m4179dotp89u6pk13 = m4179dotp89u6pk(fArr2, 3, fArr, 0);
        float m4179dotp89u6pk14 = m4179dotp89u6pk(fArr2, 3, fArr, 1);
        float m4179dotp89u6pk15 = m4179dotp89u6pk(fArr2, 3, fArr, 2);
        float m4179dotp89u6pk16 = m4179dotp89u6pk(fArr2, 3, fArr, 3);
        fArr[0] = m4179dotp89u6pk;
        fArr[1] = m4179dotp89u6pk2;
        fArr[2] = m4179dotp89u6pk3;
        fArr[3] = m4179dotp89u6pk4;
        fArr[4] = m4179dotp89u6pk5;
        fArr[5] = m4179dotp89u6pk6;
        fArr[6] = m4179dotp89u6pk7;
        fArr[7] = m4179dotp89u6pk8;
        fArr[8] = m4179dotp89u6pk9;
        fArr[9] = m4179dotp89u6pk10;
        fArr[10] = m4179dotp89u6pk11;
        fArr[11] = m4179dotp89u6pk12;
        fArr[12] = m4179dotp89u6pk13;
        fArr[13] = m4179dotp89u6pk14;
        fArr[14] = m4179dotp89u6pk15;
        fArr[15] = m4179dotp89u6pk16;
    }

    /* renamed from: dot-p89u6pk, reason: not valid java name */
    private static final float m4179dotp89u6pk(float[] fArr, int i, float[] fArr2, int i2) {
        int i3 = i * 4;
        return (fArr[i3] * fArr2[i2]) + (fArr[i3 + 1] * fArr2[4 + i2]) + (fArr[i3 + 2] * fArr2[8 + i2]) + (fArr[i3 + 3] * fArr2[12 + i2]);
    }
}
