package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: ListItem.kt */
@Metadata(d1 = {"\u0000^\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a¬\u0001\u0010\b\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0015\b\u0002\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00012\b\b\u0002\u0010\u0016\u001a\u00020\u0001H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u007f\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u0015\u001a\u00020\u00012\b\b\u0002\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020 2\u001c\u0010!\u001a\u0018\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\t0\"¢\u0006\u0002\b\f¢\u0006\u0002\b$H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a8\u0010'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020*2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\fH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a<\u0010-\u001a\u00020\t*\u00020#2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\fH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a<\u00102\u001a\u00020\t*\u00020#2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020/2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\u0002\b\fH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u00101\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0004\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0006\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0007\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u00064"}, d2 = {"ContentEndPadding", "Landroidx/compose/ui/unit/Dp;", "F", "LeadingContentEndPadding", "ListItemHorizontalPadding", "ListItemThreeLineVerticalPadding", "ListItemVerticalPadding", "TrailingHorizontalPadding", "ListItem", "", "headlineContent", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "modifier", "Landroidx/compose/ui/Modifier;", "overlineContent", "supportingContent", "leadingContent", "trailingContent", "colors", "Landroidx/compose/material3/ListItemColors;", "tonalElevation", "shadowElevation", "ListItem-HXNGIdc", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;FFLandroidx/compose/runtime/Composer;II)V", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "minHeight", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Lkotlin/ExtensionFunctionType;", "ListItem-xOgov6c", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "ProvideTextStyleFromToken", "color", "textToken", "Landroidx/compose/material3/tokens/TypographyKeyTokens;", "ProvideTextStyleFromToken-3J-VO9M", "(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "LeadingContent", "topAlign", "", "LeadingContent-3IgeMak", "(Landroidx/compose/foundation/layout/RowScope;JZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "TrailingContent", "TrailingContent-3IgeMak", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ListItemKt {
    private static final float ContentEndPadding;
    private static final float LeadingContentEndPadding;
    private static final float ListItemHorizontalPadding;
    private static final float ListItemThreeLineVerticalPadding;
    private static final float ListItemVerticalPadding;
    private static final float TrailingHorizontalPadding;

    /* JADX WARN: Removed duplicated region for block: B:100:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02ed  */
    /* renamed from: ListItem-HXNGIdc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1267ListItemHXNGIdc(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r40, androidx.compose.ui.Modifier r41, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r42, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, androidx.compose.material3.ListItemColors r46, float r47, float r48, androidx.compose.runtime.Composer r49, final int r50, final int r51) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ListItemKt.m1267ListItemHXNGIdc(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material3.ListItemColors, float, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0101  */
    /* renamed from: ListItem-xOgov6c, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1268ListItemxOgov6c(androidx.compose.ui.Modifier r29, androidx.compose.ui.graphics.Shape r30, long r31, long r33, float r35, float r36, final float r37, final androidx.compose.foundation.layout.PaddingValues r38, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ListItemKt.m1268ListItemxOgov6c(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, float, float, float, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LeadingContent-3IgeMak, reason: not valid java name */
    public static final void m1266LeadingContent3IgeMak(final RowScope rowScope, final long j, final boolean z, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        final int i2;
        Composer startRestartGroup = composer.startRestartGroup(1383930970);
        ComposerKt.sourceInformation(startRestartGroup, "C(LeadingContent)P(1:c#ui.graphics.Color,2)236@9308L274:ListItem.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(rowScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        if ((i2 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1383930970, i2, -1, "androidx.compose.material3.LeadingContent (ListItem.kt:232)");
            }
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j))}, ComposableLambdaKt.composableLambda(startRestartGroup, 315166618, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ListItemKt$LeadingContent$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    float f;
                    ComposerKt.sourceInformation(composer2, "C237@9384L192:ListItem.kt#uh7d8r");
                    if ((i3 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(315166618, i3, -1, "androidx.compose.material3.LeadingContent.<anonymous> (ListItem.kt:236)");
                        }
                        Modifier.Companion companion = Modifier.INSTANCE;
                        f = ListItemKt.LeadingContentEndPadding;
                        Modifier then = PaddingKt.m494paddingqDBjuR0$default(companion, 0.0f, 0.0f, f, 0.0f, 11, null).then(!z ? rowScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterVertically()) : Modifier.INSTANCE);
                        Function2<Composer, Integer, Unit> function22 = function2;
                        int i4 = i2;
                        composer2.startReplaceableGroup(733328855);
                        ComposerKt.sourceInformation(composer2, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer2, 0);
                        composer2.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation(composer2, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume = composer2.consume(localDensity);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        Density density = (Density) consume;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume2 = composer2.consume(localLayoutDirection);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        LayoutDirection layoutDirection = (LayoutDirection) consume2;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume3 = composer2.consume(localViewConfiguration);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(then);
                        if (!(composer2.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        composer2.disableReusing();
                        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer2);
                        Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer2.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer2)), composer2, 0);
                        composer2.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer2, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer2, -161018455, "C241@9565L9:ListItem.kt#uh7d8r");
                        function22.invoke(composer2, Integer.valueOf((i4 >> 9) & 14));
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endReplaceableGroup();
                        composer2.endNode();
                        composer2.endReplaceableGroup();
                        composer2.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }), startRestartGroup, 56);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ListItemKt$LeadingContent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                ListItemKt.m1266LeadingContent3IgeMak(RowScope.this, j, z, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TrailingContent-3IgeMak, reason: not valid java name */
    public static final void m1270TrailingContent3IgeMak(final RowScope rowScope, final long j, final boolean z, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(1404787004);
        ComposerKt.sourceInformation(startRestartGroup, "C(TrailingContent)P(1:c#ui.graphics.Color,2)249@9723L316:ListItem.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(rowScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        if ((i2 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1404787004, i2, -1, "androidx.compose.material3.TrailingContent (ListItem.kt:245)");
            }
            Modifier m492paddingVpY3zN4$default = PaddingKt.m492paddingVpY3zN4$default(Modifier.INSTANCE, TrailingHorizontalPadding, 0.0f, 2, null);
            Modifier.Companion companion = Modifier.INSTANCE;
            if (!z) {
                companion = rowScope.align(companion, Alignment.INSTANCE.getCenterVertically());
            }
            Modifier then = m492paddingVpY3zN4$default.then(companion);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(then);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1419469451, "C254@9892L141:ListItem.kt#uh7d8r");
            int i3 = i2 >> 3;
            m1269ProvideTextStyleFromToken3JVO9M(j, ListTokens.INSTANCE.getListItemTrailingSupportingTextFont(), function2, startRestartGroup, (i3 & 14) | 48 | (i3 & 896));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ListItemKt$TrailingContent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                ListItemKt.m1270TrailingContent3IgeMak(RowScope.this, j, z, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ProvideTextStyleFromToken-3J-VO9M, reason: not valid java name */
    public static final void m1269ProvideTextStyleFromToken3JVO9M(final long j, final TypographyKeyTokens typographyKeyTokens, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        final int i2;
        Composer startRestartGroup = composer.startRestartGroup(1133967795);
        ComposerKt.sourceInformation(startRestartGroup, "C(ProvideTextStyleFromToken)P(0:c#ui.graphics.Color,2)394@15546L10,395@15582L111:ListItem.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(typographyKeyTokens) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 256 : 128;
        }
        if ((i2 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1133967795, i2, -1, "androidx.compose.material3.ProvideTextStyleFromToken (ListItem.kt:389)");
            }
            final TextStyle fromToken = TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), typographyKeyTokens);
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j))}, ComposableLambdaKt.composableLambda(startRestartGroup, -514310925, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ListItemKt$ProvideTextStyleFromToken$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    ComposerKt.sourceInformation(composer2, "C396@15651L36:ListItem.kt#uh7d8r");
                    if ((i3 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-514310925, i3, -1, "androidx.compose.material3.ProvideTextStyleFromToken.<anonymous> (ListItem.kt:395)");
                    }
                    TextKt.ProvideTextStyle(TextStyle.this, function2, composer2, (i2 >> 3) & 112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), startRestartGroup, 56);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ListItemKt$ProvideTextStyleFromToken$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                ListItemKt.m1269ProvideTextStyleFromToken3JVO9M(j, typographyKeyTokens, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    static {
        float f = 8;
        ListItemVerticalPadding = Dp.m4883constructorimpl(f);
        float f2 = 16;
        ListItemThreeLineVerticalPadding = Dp.m4883constructorimpl(f2);
        ListItemHorizontalPadding = Dp.m4883constructorimpl(f2);
        LeadingContentEndPadding = Dp.m4883constructorimpl(f2);
        ContentEndPadding = Dp.m4883constructorimpl(f);
        TrailingHorizontalPadding = Dp.m4883constructorimpl(f);
    }
}
