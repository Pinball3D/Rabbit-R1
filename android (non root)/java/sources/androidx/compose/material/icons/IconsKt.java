package androidx.compose.material.icons;

import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Icons.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a-\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0017\u0010\b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\b\u000bH\u0086\bø\u0001\u0000\u001aT\u0010\f\u001a\u00020\n*\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\u00012\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\t¢\u0006\u0002\b\u000bH\u0086\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u0082\u0002\u0012\n\u0005\b\u009920\u0001\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"MaterialIconDimension", "", "getMaterialIconDimension$annotations", "()V", "materialIcon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "name", "", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;", "Lkotlin/ExtensionFunctionType;", "materialPath", "fillAlpha", "strokeAlpha", "pathFillType", "Landroidx/compose/ui/graphics/PathFillType;", "pathBuilder", "Landroidx/compose/ui/graphics/vector/PathBuilder;", "", "materialPath-YwgOQQI", "(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;", "material-icons-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IconsKt {
    public static final float MaterialIconDimension = 24.0f;

    public static /* synthetic */ void getMaterialIconDimension$annotations() {
    }

    public static final ImageVector materialIcon(String name, Function1<? super ImageVector.Builder, ImageVector.Builder> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(new ImageVector.Builder(name, Dp.m4883constructorimpl(24.0f), Dp.m4883constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, false, 224, null)).build();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: androidx.compose.ui.graphics.vector.ImageVector.Builder.addPath-oIyEayM$default(androidx.compose.ui.graphics.vector.ImageVector$Builder, java.util.List, int, java.lang.String, androidx.compose.ui.graphics.Brush, float, androidx.compose.ui.graphics.Brush, float, float, int, int, float, float, float, float, int, java.lang.Object):androidx.compose.ui.graphics.vector.ImageVector$Builder
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:49)
        Caused by: java.lang.NullPointerException
        */
    /* renamed from: materialPath-YwgOQQI$default, reason: not valid java name */
    public static /* synthetic */ androidx.compose.ui.graphics.vector.ImageVector.Builder m965materialPathYwgOQQI$default(androidx.compose.ui.graphics.vector.ImageVector.Builder r20, float r21, float r22, int r23, kotlin.jvm.functions.Function1 r24, int r25, java.lang.Object r26) {
        /*
            r0 = r24
            r1 = r25 & 1
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r1 == 0) goto La
            r8 = r2
            goto Lc
        La:
            r8 = r21
        Lc:
            r1 = r25 & 2
            if (r1 == 0) goto L12
            r10 = r2
            goto L14
        L12:
            r10 = r22
        L14:
            r1 = r25 & 4
            if (r1 == 0) goto L1e
            int r1 = androidx.compose.ui.graphics.vector.VectorKt.getDefaultFillType()
            r5 = r1
            goto L20
        L1e:
            r5 = r23
        L20:
            java.lang.String r1 = "$this$materialPath"
            r2 = r20
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.String r1 = "pathBuilder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            androidx.compose.ui.graphics.SolidColor r1 = new androidx.compose.ui.graphics.SolidColor
            androidx.compose.ui.graphics.Color$Companion r3 = androidx.compose.ui.graphics.Color.INSTANCE
            long r3 = r3.m2665getBlack0d7_KjU()
            r6 = 0
            r1.<init>(r3, r6)
            r7 = r1
            androidx.compose.ui.graphics.Brush r7 = (androidx.compose.ui.graphics.Brush) r7
            r9 = 0
            r11 = 1065353216(0x3f800000, float:1.0)
            androidx.compose.ui.graphics.StrokeCap$Companion r1 = androidx.compose.ui.graphics.StrokeCap.INSTANCE
            int r12 = r1.m2985getButtKaPHkGw()
            androidx.compose.ui.graphics.StrokeJoin$Companion r1 = androidx.compose.ui.graphics.StrokeJoin.INSTANCE
            int r13 = r1.m2995getBevelLxFBmk8()
            r14 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r6 = ""
            androidx.compose.ui.graphics.vector.PathBuilder r1 = new androidx.compose.ui.graphics.vector.PathBuilder
            r1.<init>()
            r0.invoke(r1)
            java.util.List r4 = r1.getNodes()
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 14336(0x3800, float:2.0089E-41)
            r19 = 0
            r3 = r20
            androidx.compose.ui.graphics.vector.ImageVector$Builder r0 = androidx.compose.ui.graphics.vector.ImageVector.Builder.m3263addPathoIyEayM$default(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.icons.IconsKt.m965materialPathYwgOQQI$default(androidx.compose.ui.graphics.vector.ImageVector$Builder, float, float, int, kotlin.jvm.functions.Function1, int, java.lang.Object):androidx.compose.ui.graphics.vector.ImageVector$Builder");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: androidx.compose.ui.graphics.vector.ImageVector.Builder.addPath-oIyEayM$default(androidx.compose.ui.graphics.vector.ImageVector$Builder, java.util.List, int, java.lang.String, androidx.compose.ui.graphics.Brush, float, androidx.compose.ui.graphics.Brush, float, float, int, int, float, float, float, float, int, java.lang.Object):androidx.compose.ui.graphics.vector.ImageVector$Builder
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:49)
        Caused by: java.lang.NullPointerException
        */
    /* renamed from: materialPath-YwgOQQI, reason: not valid java name */
    public static final androidx.compose.ui.graphics.vector.ImageVector.Builder m964materialPathYwgOQQI(androidx.compose.ui.graphics.vector.ImageVector.Builder r18, float r19, float r20, int r21, kotlin.jvm.functions.Function1<? super androidx.compose.ui.graphics.vector.PathBuilder, kotlin.Unit> r22) {
        /*
            r0 = r22
            r1 = r18
            r6 = r19
            r8 = r20
            r3 = r21
            java.lang.String r2 = "$this$materialPath"
            r4 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
            java.lang.String r2 = "pathBuilder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            androidx.compose.ui.graphics.SolidColor r2 = new androidx.compose.ui.graphics.SolidColor
            androidx.compose.ui.graphics.Color$Companion r4 = androidx.compose.ui.graphics.Color.INSTANCE
            long r4 = r4.m2665getBlack0d7_KjU()
            r7 = 0
            r2.<init>(r4, r7)
            r5 = r2
            androidx.compose.ui.graphics.Brush r5 = (androidx.compose.ui.graphics.Brush) r5
            r9 = 1065353216(0x3f800000, float:1.0)
            androidx.compose.ui.graphics.StrokeCap$Companion r2 = androidx.compose.ui.graphics.StrokeCap.INSTANCE
            int r10 = r2.m2985getButtKaPHkGw()
            androidx.compose.ui.graphics.StrokeJoin$Companion r2 = androidx.compose.ui.graphics.StrokeJoin.INSTANCE
            int r11 = r2.m2995getBevelLxFBmk8()
            r12 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r4 = ""
            androidx.compose.ui.graphics.vector.PathBuilder r2 = new androidx.compose.ui.graphics.vector.PathBuilder
            r2.<init>()
            r0.invoke(r2)
            java.util.List r2 = r2.getNodes()
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 14336(0x3800, float:2.0089E-41)
            r17 = 0
            androidx.compose.ui.graphics.vector.ImageVector$Builder r0 = androidx.compose.ui.graphics.vector.ImageVector.Builder.m3263addPathoIyEayM$default(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.icons.IconsKt.m964materialPathYwgOQQI(androidx.compose.ui.graphics.vector.ImageVector$Builder, float, float, int, kotlin.jvm.functions.Function1):androidx.compose.ui.graphics.vector.ImageVector$Builder");
    }
}
