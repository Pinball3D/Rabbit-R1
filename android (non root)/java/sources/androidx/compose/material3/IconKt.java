package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.IconButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Icon.kt */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a;\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u000f\u001a;\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u0012\u001a\u0014\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0019\u0010\u0014\u001a\u00020\u0015*\u00020\u0016H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"DefaultIconSizeModifier", "Landroidx/compose/ui/Modifier;", "Icon", "", "bitmap", "Landroidx/compose/ui/graphics/ImageBitmap;", "contentDescription", "", "modifier", "tint", "Landroidx/compose/ui/graphics/Color;", "Icon-ww6aTOc", "(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V", "painter", "Landroidx/compose/ui/graphics/painter/Painter;", "(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V", "imageVector", "Landroidx/compose/ui/graphics/vector/ImageVector;", "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V", "defaultSizeFor", "isInfinite", "", "Landroidx/compose/ui/geometry/Size;", "isInfinite-uvyYCjk", "(J)Z", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IconKt {
    private static final Modifier DefaultIconSizeModifier = SizeKt.m537size3ABfNKs(Modifier.INSTANCE, IconButtonTokens.INSTANCE.m1944getIconSizeD9Ej5fM());

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0051  */
    /* renamed from: Icon-ww6aTOc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1246Iconww6aTOc(final androidx.compose.ui.graphics.vector.ImageVector r17, final java.lang.String r18, androidx.compose.ui.Modifier r19, long r20, androidx.compose.runtime.Composer r22, final int r23, final int r24) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.IconKt.m1246Iconww6aTOc(androidx.compose.ui.graphics.vector.ImageVector, java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: Icon-ww6aTOc, reason: not valid java name */
    public static final void m1244Iconww6aTOc(final ImageBitmap bitmap, final String str, Modifier modifier, long j, Composer composer, final int i, final int i2) {
        long j2;
        int i3;
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Composer startRestartGroup = composer.startRestartGroup(-1092052280);
        ComposerKt.sourceInformation(startRestartGroup, "C(Icon)P(!,3:c#ui.graphics.Color)99@4907L7,101@4937L42,102@4984L136:Icon.kt#uh7d8r");
        Modifier modifier2 = (i2 & 4) != 0 ? Modifier.INSTANCE : modifier;
        if ((i2 & 8) != 0) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            j2 = ((Color) consume).m2649unboximpl();
            i3 = i & (-7169);
        } else {
            j2 = j;
            i3 = i;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1092052280, i3, -1, "androidx.compose.material3.Icon (Icon.kt:95)");
        }
        startRestartGroup.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = startRestartGroup.changed(bitmap);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            BitmapPainter bitmapPainter = new BitmapPainter(bitmap, 0L, 0L, 6, null);
            startRestartGroup.updateRememberedValue(bitmapPainter);
            rememberedValue = bitmapPainter;
        }
        startRestartGroup.endReplaceableGroup();
        m1245Iconww6aTOc((BitmapPainter) rememberedValue, str, modifier2, j2, startRestartGroup, (i3 & 112) | 8 | (i3 & 896) | (i3 & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Modifier modifier3 = modifier2;
        final long j3 = j2;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.IconKt$Icon$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                IconKt.m1244Iconww6aTOc(ImageBitmap.this, str, modifier3, j3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    /* renamed from: Icon-ww6aTOc, reason: not valid java name */
    public static final void m1245Iconww6aTOc(final Painter painter, final String str, Modifier modifier, long j, Composer composer, final int i, final int i2) {
        long j2;
        int i3;
        Modifier.Companion companion;
        Intrinsics.checkNotNullParameter(painter, "painter");
        Composer startRestartGroup = composer.startRestartGroup(-2142239481);
        ComposerKt.sourceInformation(startRestartGroup, "C(Icon)P(2!,3:c#ui.graphics.Color)135@6639L7,147@6998L217:Icon.kt#uh7d8r");
        Modifier modifier2 = (i2 & 4) != 0 ? Modifier.INSTANCE : modifier;
        if ((i2 & 8) != 0) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            i3 = i & (-7169);
            j2 = ((Color) consume).m2649unboximpl();
        } else {
            j2 = j;
            i3 = i;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2142239481, i3, -1, "androidx.compose.material3.Icon (Icon.kt:131)");
        }
        ColorFilter m2680tintxETnrds$default = Color.m2640equalsimpl0(j2, Color.INSTANCE.m2675getUnspecified0d7_KjU()) ? null : ColorFilter.Companion.m2680tintxETnrds$default(ColorFilter.INSTANCE, j2, 0, 2, null);
        startRestartGroup.startReplaceableGroup(69356817);
        ComposerKt.sourceInformation(startRestartGroup, "140@6830L115");
        if (str != null) {
            Modifier.Companion companion2 = Modifier.INSTANCE;
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(str);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.IconKt$Icon$semantics$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SemanticsPropertyReceiver semantics) {
                        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                        SemanticsPropertiesKt.setContentDescription(semantics, str);
                        SemanticsPropertiesKt.m4270setRolekuIjeqM(semantics, Role.INSTANCE.m4259getImageo7Vup1c());
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            companion = SemanticsModifierKt.semantics$default(companion2, false, (Function1) rememberedValue, 1, null);
        } else {
            companion = Modifier.INSTANCE;
        }
        startRestartGroup.endReplaceableGroup();
        final long j3 = j2;
        BoxKt.Box(PainterModifierKt.paint$default(defaultSizeFor(GraphicsLayerModifierKt.toolingGraphicsLayer(modifier2), painter), painter, false, null, ContentScale.INSTANCE.getFit(), 0.0f, m2680tintxETnrds$default, 22, null).then(companion), startRestartGroup, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Modifier modifier3 = modifier2;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.IconKt$Icon$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                IconKt.m1245Iconww6aTOc(Painter.this, str, modifier3, j3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    private static final Modifier defaultSizeFor(Modifier modifier, Painter painter) {
        return modifier.then((Size.m2465equalsimpl0(painter.getIntrinsicSize(), Size.INSTANCE.m2477getUnspecifiedNHjbRc()) || m1247isInfiniteuvyYCjk(painter.getIntrinsicSize())) ? DefaultIconSizeModifier : Modifier.INSTANCE);
    }

    /* renamed from: isInfinite-uvyYCjk, reason: not valid java name */
    private static final boolean m1247isInfiniteuvyYCjk(long j) {
        return Float.isInfinite(Size.m2469getWidthimpl(j)) && Float.isInfinite(Size.m2466getHeightimpl(j));
    }
}
