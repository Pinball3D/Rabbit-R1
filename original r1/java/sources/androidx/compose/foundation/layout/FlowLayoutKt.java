package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.Device;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: FlowLayout.kt */
@Metadata(d1 = {"\u0000¨\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001aW\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u0011H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001aW\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u0014\u001a\u00020\f2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\u0002\b\u0010¢\u0006\u0002\b\u0011H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\fH\u0001¢\u0006\u0002\u0010\u001a\u001a\u009d\u0001\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2*\u0010\u001e\u001a&\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00012*\u0010(\u001a&\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010)\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\fH\u0002ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b*\u0010+\u001a4\u0010,\u001a&\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010\t\u001a\u00020\nH\u0002\u001a4\u0010-\u001a&\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\u0080\u0001\u0010.\u001a\u00020\f2\f\u0010/\u001a\b\u0012\u0004\u0012\u000201002#\u00102\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f03¢\u0006\u0002\b\u00112#\u0010%\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f03¢\u0006\u0002\b\u00112\u0006\u00104\u001a\u00020\f2\u0006\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fH\u0002\u001aF\u0010.\u001a\u00020\f2\f\u0010/\u001a\b\u0012\u0004\u0012\u000201002\u0006\u00107\u001a\u00020 2\u0006\u00108\u001a\u00020 2\u0006\u00104\u001a\u00020\f2\u0006\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fH\u0002\u001aS\u00109\u001a\u00020\f2\f\u0010/\u001a\b\u0012\u0004\u0012\u000201002#\u00102\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f03¢\u0006\u0002\b\u00112\u0006\u0010:\u001a\u00020\f2\u0006\u00105\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fH\u0002\u001a\u0080\u0001\u0010;\u001a\u00020\f2\f\u0010/\u001a\b\u0012\u0004\u0012\u000201002#\u00102\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f03¢\u0006\u0002\b\u00112#\u0010%\u001a\u001f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f03¢\u0006\u0002\b\u00112\u0006\u0010:\u001a\u00020\f2\u0006\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fH\u0002\u001a%\u0010<\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\fH\u0001¢\u0006\u0002\u0010=\u001a9\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020D2\u0006\u0010\u0019\u001a\u00020\fH\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\bE\u0010F\u001a\u001c\u0010G\u001a\u00020\f*\u00020H2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\fH\u0000\u001a\u0014\u0010%\u001a\u00020\f*\u00020I2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a\u001c\u0010J\u001a\u00020\f*\u00020H2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\fH\u0000\u001a\u0014\u00102\u001a\u00020\f*\u00020I2\u0006\u0010\u001c\u001a\u00020\u001dH\u0000\u001a?\u0010K\u001a\u00020\f*\u00020H2\u0006\u0010C\u001a\u00020D2\u0006\u0010\u001c\u001a\u00020\u001d2\u0014\u0010L\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010I\u0012\u0004\u0012\u00020\u00040\u000eH\u0002ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\bM\u0010N\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0012\n\u0005\b\u009920\u0001\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006O"}, d2 = {"CROSS_AXIS_ALIGNMENT_START", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "CROSS_AXIS_ALIGNMENT_TOP", "FlowColumn", "", "modifier", "Landroidx/compose/ui/Modifier;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "maxItemsInEachColumn", "", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/FlowColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "FlowRow", "maxItemsInEachRow", "Landroidx/compose/foundation/layout/FlowRowScope;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "columnMeasurementHelper", "Landroidx/compose/ui/layout/MeasurePolicy;", "maxItemsInMainAxis", "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;", "flowMeasurePolicy", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/layout/LayoutOrientation;", "mainAxisArrangement", "Lkotlin/Function5;", "", "Landroidx/compose/ui/unit/LayoutDirection;", "Landroidx/compose/ui/unit/Density;", "mainAxisArrangementSpacing", "Landroidx/compose/ui/unit/Dp;", "crossAxisSize", "Landroidx/compose/foundation/layout/SizeMode;", "crossAxisAlignment", "crossAxisArrangement", "crossAxisArrangementSpacing", "flowMeasurePolicy-bs7tm-s", "(Landroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function5;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Lkotlin/jvm/functions/Function5;FI)Landroidx/compose/ui/layout/MeasurePolicy;", "getHorizontalArrangement", "getVerticalArrangement", "intrinsicCrossAxisSize", ViewHierarchyNode.JsonKeys.CHILDREN, "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "mainAxisSize", "Lkotlin/Function3;", "mainAxisAvailable", "mainAxisSpacing", "crossAxisSpacing", "mainAxisSizes", "crossAxisSizes", "maxIntrinsicMainAxisSize", "crossAxisAvailable", "minIntrinsicMainAxisSize", "rowMeasurementHelper", "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;", "breakDownItems", "Landroidx/compose/foundation/layout/FlowResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measureHelper", "Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;", "constraints", "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;", "breakDownItems-w1Onq5I", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;", "crossAxisMin", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/Placeable;", "mainAxisMin", "measureAndCache", "storePlaceable", "measureAndCache-6m2dt9o", "(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I", "foundation-layout_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FlowLayoutKt {
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_TOP = CrossAxisAlignment.INSTANCE.vertical$foundation_layout_release(Alignment.INSTANCE.getTop());
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_START = CrossAxisAlignment.INSTANCE.horizontal$foundation_layout_release(Alignment.INSTANCE.getStart());

    public static final void FlowRow(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, int i, Function3<? super FlowRowScope, ? super Composer, ? super Integer, Unit> content, Composer composer, int i2, int i3) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(1098475987);
        ComposerKt.sourceInformation(composer, "CC(FlowRow)P(3,1,4,2)61@2468L113,66@2586L134:FlowLayout.kt#2w3rfo");
        if ((i3 & 1) != 0) {
            modifier = Modifier.INSTANCE;
        }
        if ((i3 & 2) != 0) {
            horizontal = Arrangement.INSTANCE.getStart();
        }
        if ((i3 & 4) != 0) {
            vertical = Arrangement.INSTANCE.getTop();
        }
        if ((i3 & 8) != 0) {
            i = Integer.MAX_VALUE;
        }
        int i4 = i2 >> 3;
        MeasurePolicy rowMeasurementHelper = rowMeasurementHelper(horizontal, vertical, i, composer, (i4 & 896) | (i4 & 14) | (i4 & 112));
        composer.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation(composer, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> modifierMaterializerOf = LayoutKt.modifierMaterializerOf(modifier);
        int i5 = ((((i2 << 3) & 112) << 9) & 7168) | 6;
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer);
        Updater.m2280setimpl(m2273constructorimpl, rowMeasurementHelper, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m2280setimpl(m2273constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (m2273constructorimpl.getInserting() || !Intrinsics.areEqual(m2273constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m2273constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m2273constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        modifierMaterializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer)), composer, Integer.valueOf((i5 >> 3) & 112));
        composer.startReplaceableGroup(2058660585);
        ComposerKt.sourceInformationMarkerStart(composer, 483375157, "C67@2635L9:FlowLayout.kt#2w3rfo");
        content.invoke(FlowRowScopeInstance.INSTANCE, composer, Integer.valueOf(((i2 >> 9) & 112) | 6));
        ComposerKt.sourceInformationMarkerEnd(composer);
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    public static final void FlowColumn(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, int i, Function3<? super FlowColumnScope, ? super Composer, ? super Integer, Unit> content, Composer composer, int i2, int i3) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-310290901);
        ComposerKt.sourceInformation(composer, "CC(FlowColumn)P(3,4,1,2)111@4318L119,116@4442L137:FlowLayout.kt#2w3rfo");
        if ((i3 & 1) != 0) {
            modifier = Modifier.INSTANCE;
        }
        if ((i3 & 2) != 0) {
            vertical = Arrangement.INSTANCE.getTop();
        }
        if ((i3 & 4) != 0) {
            horizontal = Arrangement.INSTANCE.getStart();
        }
        if ((i3 & 8) != 0) {
            i = Integer.MAX_VALUE;
        }
        int i4 = i2 >> 3;
        MeasurePolicy columnMeasurementHelper = columnMeasurementHelper(vertical, horizontal, i, composer, (i4 & 896) | (i4 & 14) | (i4 & 112));
        composer.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation(composer, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> modifierMaterializerOf = LayoutKt.modifierMaterializerOf(modifier);
        int i5 = ((((i2 << 3) & 112) << 9) & 7168) | 6;
        if (!(composer.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer);
        Updater.m2280setimpl(m2273constructorimpl, columnMeasurementHelper, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m2280setimpl(m2273constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (m2273constructorimpl.getInserting() || !Intrinsics.areEqual(m2273constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m2273constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m2273constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        modifierMaterializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer)), composer, Integer.valueOf((i5 >> 3) & 112));
        composer.startReplaceableGroup(2058660585);
        ComposerKt.sourceInformationMarkerStart(composer, -681937527, "C117@4494L9:FlowLayout.kt#2w3rfo");
        content.invoke(FlowColumnScopeInstance.INSTANCE, composer, Integer.valueOf(((i2 >> 9) & 112) | 6));
        ComposerKt.sourceInformationMarkerEnd(composer);
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function5<Integer, int[], LayoutDirection, Density, int[], Unit> getVerticalArrangement(final Arrangement.Vertical vertical) {
        return new Function5<Integer, int[], LayoutDirection, Density, int[], Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$getVerticalArrangement$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(5);
            }

            @Override // kotlin.jvm.functions.Function5
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
                invoke(num.intValue(), iArr, layoutDirection, density, iArr2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int[] size, LayoutDirection layoutDirection, Density density, int[] outPosition) {
                Intrinsics.checkNotNullParameter(size, "size");
                Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 2>");
                Intrinsics.checkNotNullParameter(density, "density");
                Intrinsics.checkNotNullParameter(outPosition, "outPosition");
                Arrangement.Vertical.this.arrange(density, i, size, outPosition);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function5<Integer, int[], LayoutDirection, Density, int[], Unit> getHorizontalArrangement(final Arrangement.Horizontal horizontal) {
        return new Function5<Integer, int[], LayoutDirection, Density, int[], Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$getHorizontalArrangement$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(5);
            }

            @Override // kotlin.jvm.functions.Function5
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
                invoke(num.intValue(), iArr, layoutDirection, density, iArr2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, int[] size, LayoutDirection layoutDirection, Density density, int[] outPosition) {
                Intrinsics.checkNotNullParameter(size, "size");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(density, "density");
                Intrinsics.checkNotNullParameter(outPosition, "outPosition");
                Arrangement.Horizontal.this.arrange(density, i, size, layoutDirection, outPosition);
            }
        };
    }

    public static final MeasurePolicy rowMeasurementHelper(Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, int i, Composer composer, int i2) {
        Intrinsics.checkNotNullParameter(horizontalArrangement, "horizontalArrangement");
        Intrinsics.checkNotNullParameter(verticalArrangement, "verticalArrangement");
        composer.startReplaceableGroup(1479255111);
        ComposerKt.sourceInformation(composer, "C(rowMeasurementHelper)P(!1,2)168@6017L633:FlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1479255111, i2, -1, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:163)");
        }
        Integer valueOf = Integer.valueOf(i);
        composer.startReplaceableGroup(1618982084);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(horizontalArrangement) | composer.changed(verticalArrangement);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = m438flowMeasurePolicybs7tms(LayoutOrientation.Horizontal, getHorizontalArrangement(horizontalArrangement), horizontalArrangement.getSpacing(), SizeMode.Wrap, CROSS_AXIS_ALIGNMENT_TOP, getVerticalArrangement(verticalArrangement), verticalArrangement.getSpacing(), i);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return measurePolicy;
    }

    public static final MeasurePolicy columnMeasurementHelper(Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, int i, Composer composer, int i2) {
        Intrinsics.checkNotNullParameter(verticalArrangement, "verticalArrangement");
        Intrinsics.checkNotNullParameter(horizontalArrangement, "horizontalArrangement");
        composer.startReplaceableGroup(-2013098357);
        ComposerKt.sourceInformation(composer, "C(columnMeasurementHelper)P(2)189@6875L634:FlowLayout.kt#2w3rfo");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2013098357, i2, -1, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:184)");
        }
        Integer valueOf = Integer.valueOf(i);
        composer.startReplaceableGroup(1618982084);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(verticalArrangement) | composer.changed(horizontalArrangement);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = m438flowMeasurePolicybs7tms(LayoutOrientation.Vertical, getVerticalArrangement(verticalArrangement), verticalArrangement.getSpacing(), SizeMode.Wrap, CROSS_AXIS_ALIGNMENT_START, getHorizontalArrangement(horizontalArrangement), horizontalArrangement.getSpacing(), i);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return measurePolicy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: flowMeasurePolicy-bs7tm-s, reason: not valid java name */
    public static final MeasurePolicy m438flowMeasurePolicybs7tms(final LayoutOrientation layoutOrientation, final Function5<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], Unit> function5, final float f, final SizeMode sizeMode, final CrossAxisAlignment crossAxisAlignment, final Function5<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], Unit> function52, final float f2, final int i) {
        return new MeasurePolicy(function5, f, sizeMode, crossAxisAlignment, i, f2, function52) { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1
            final /* synthetic */ CrossAxisAlignment $crossAxisAlignment;
            final /* synthetic */ Function5<Integer, int[], LayoutDirection, Density, int[], Unit> $crossAxisArrangement;
            final /* synthetic */ float $crossAxisArrangementSpacing;
            final /* synthetic */ SizeMode $crossAxisSize;
            final /* synthetic */ Function5<Integer, int[], LayoutDirection, Density, int[], Unit> $mainAxisArrangement;
            final /* synthetic */ float $mainAxisArrangementSpacing;
            final /* synthetic */ int $maxItemsInMainAxis;
            private final Function3<IntrinsicMeasurable, Integer, Integer, Integer> maxCrossAxisIntrinsicItemSize;
            private final Function3<IntrinsicMeasurable, Integer, Integer, Integer> maxMainAxisIntrinsicItemSize;
            private final Function3<IntrinsicMeasurable, Integer, Integer, Integer> minCrossAxisIntrinsicItemSize;
            private final Function3<IntrinsicMeasurable, Integer, Integer, Integer> minMainAxisIntrinsicItemSize;

            public final Function3<IntrinsicMeasurable, Integer, Integer, Integer> getMaxCrossAxisIntrinsicItemSize() {
                return this.maxCrossAxisIntrinsicItemSize;
            }

            public final Function3<IntrinsicMeasurable, Integer, Integer, Integer> getMaxMainAxisIntrinsicItemSize() {
                return this.maxMainAxisIntrinsicItemSize;
            }

            public final Function3<IntrinsicMeasurable, Integer, Integer, Integer> getMinCrossAxisIntrinsicItemSize() {
                return this.minCrossAxisIntrinsicItemSize;
            }

            public final Function3<IntrinsicMeasurable, Integer, Integer, Integer> getMinMainAxisIntrinsicItemSize() {
                return this.minMainAxisIntrinsicItemSize;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Multi-variable type inference failed */
            {
                this.$mainAxisArrangement = function5;
                this.$mainAxisArrangementSpacing = f;
                this.$crossAxisSize = sizeMode;
                this.$crossAxisAlignment = crossAxisAlignment;
                this.$maxItemsInMainAxis = i;
                this.$crossAxisArrangementSpacing = f2;
                this.$crossAxisArrangement = function52;
                this.maxMainAxisIntrinsicItemSize = LayoutOrientation.this == LayoutOrientation.Horizontal ? new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$maxMainAxisIntrinsicItemSize$1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.maxIntrinsicWidth(i3));
                    }
                } : new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$maxMainAxisIntrinsicItemSize$2
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.maxIntrinsicHeight(i3));
                    }
                };
                this.maxCrossAxisIntrinsicItemSize = LayoutOrientation.this == LayoutOrientation.Horizontal ? new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$maxCrossAxisIntrinsicItemSize$1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.maxIntrinsicHeight(i3));
                    }
                } : new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$maxCrossAxisIntrinsicItemSize$2
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.maxIntrinsicWidth(i3));
                    }
                };
                this.minCrossAxisIntrinsicItemSize = LayoutOrientation.this == LayoutOrientation.Horizontal ? new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$minCrossAxisIntrinsicItemSize$1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.minIntrinsicHeight(i3));
                    }
                } : new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$minCrossAxisIntrinsicItemSize$2
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.minIntrinsicWidth(i3));
                    }
                };
                this.minMainAxisIntrinsicItemSize = LayoutOrientation.this == LayoutOrientation.Horizontal ? new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$minMainAxisIntrinsicItemSize$1
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.minIntrinsicWidth(i3));
                    }
                } : new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$minMainAxisIntrinsicItemSize$2
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                        return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
                    }

                    public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i2, int i3) {
                        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "$this$null");
                        return Integer.valueOf(intrinsicMeasurable.minIntrinsicHeight(i3));
                    }
                };
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo21measure3p2s80s(final MeasureScope measure, List<? extends Measurable> measurables, long j) {
                int mainAxisTotalSize;
                Intrinsics.checkNotNullParameter(measure, "$this$measure");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (measurables.isEmpty()) {
                    return MeasureScope.layout$default(measure, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$measure$1
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.INSTANCE;
                        }
                    }, 4, null);
                }
                final RowColumnMeasurementHelper rowColumnMeasurementHelper = new RowColumnMeasurementHelper(LayoutOrientation.this, this.$mainAxisArrangement, this.$mainAxisArrangementSpacing, this.$crossAxisSize, this.$crossAxisAlignment, measurables, new Placeable[measurables.size()], null);
                final FlowResult m437breakDownItemsw1Onq5I = FlowLayoutKt.m437breakDownItemsw1Onq5I(measure, rowColumnMeasurementHelper, LayoutOrientation.this, OrientationIndependentConstraints.m459constructorimpl(j, LayoutOrientation.this), this.$maxItemsInMainAxis);
                MutableVector<RowColumnMeasureHelperResult> items = m437breakDownItemsw1Onq5I.getItems();
                int size = items.getSize();
                int[] iArr = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr[i2] = items.getContent()[i2].getCrossAxisSize();
                }
                final int[] iArr2 = new int[size];
                int crossAxisTotalSize = m437breakDownItemsw1Onq5I.getCrossAxisTotalSize() + (measure.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing) * (items.getSize() - 1));
                this.$crossAxisArrangement.invoke(Integer.valueOf(crossAxisTotalSize), iArr, measure.getLayoutDirection(), measure, iArr2);
                if (LayoutOrientation.this == LayoutOrientation.Horizontal) {
                    crossAxisTotalSize = m437breakDownItemsw1Onq5I.getMainAxisTotalSize();
                    mainAxisTotalSize = crossAxisTotalSize;
                } else {
                    mainAxisTotalSize = m437breakDownItemsw1Onq5I.getMainAxisTotalSize();
                }
                return MeasureScope.layout$default(measure, ConstraintsKt.m4853constrainWidthK40F9xA(j, crossAxisTotalSize), ConstraintsKt.m4852constrainHeightK40F9xA(j, mainAxisTotalSize), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$flowMeasurePolicy$1$measure$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Placeable.PlacementScope layout) {
                        Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        MutableVector<RowColumnMeasureHelperResult> items2 = FlowResult.this.getItems();
                        RowColumnMeasurementHelper rowColumnMeasurementHelper2 = rowColumnMeasurementHelper;
                        int[] iArr3 = iArr2;
                        MeasureScope measureScope = measure;
                        int size2 = items2.getSize();
                        if (size2 > 0) {
                            RowColumnMeasureHelperResult[] content = items2.getContent();
                            int i3 = 0;
                            do {
                                rowColumnMeasurementHelper2.placeHelper(layout, content[i3], iArr3[i3], measureScope.getLayoutDirection());
                                i3++;
                            } while (i3 < size2);
                        }
                    }
                }, 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (LayoutOrientation.this == LayoutOrientation.Horizontal) {
                    return minIntrinsicMainAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing), intrinsicMeasureScope.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing));
                }
                return intrinsicCrossAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing), intrinsicMeasureScope.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing));
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (LayoutOrientation.this == LayoutOrientation.Horizontal) {
                    return intrinsicCrossAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing), intrinsicMeasureScope.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing));
                }
                return minIntrinsicMainAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing), intrinsicMeasureScope.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing));
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (LayoutOrientation.this == LayoutOrientation.Horizontal) {
                    return intrinsicCrossAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing), intrinsicMeasureScope.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing));
                }
                return maxIntrinsicMainAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing));
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (LayoutOrientation.this == LayoutOrientation.Horizontal) {
                    return maxIntrinsicMainAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing));
                }
                return intrinsicCrossAxisSize(measurables, i2, intrinsicMeasureScope.mo329roundToPx0680j_4(this.$mainAxisArrangementSpacing), intrinsicMeasureScope.mo329roundToPx0680j_4(this.$crossAxisArrangementSpacing));
            }

            public final int minIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> measurables, int crossAxisAvailable, int mainAxisSpacing, int crossAxisSpacing) {
                int minIntrinsicMainAxisSize;
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                minIntrinsicMainAxisSize = FlowLayoutKt.minIntrinsicMainAxisSize(measurables, this.minMainAxisIntrinsicItemSize, this.minCrossAxisIntrinsicItemSize, crossAxisAvailable, mainAxisSpacing, crossAxisSpacing, this.$maxItemsInMainAxis);
                return minIntrinsicMainAxisSize;
            }

            public final int maxIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> measurables, int height, int arrangementSpacing) {
                int maxIntrinsicMainAxisSize;
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                maxIntrinsicMainAxisSize = FlowLayoutKt.maxIntrinsicMainAxisSize(measurables, this.maxMainAxisIntrinsicItemSize, height, arrangementSpacing, this.$maxItemsInMainAxis);
                return maxIntrinsicMainAxisSize;
            }

            public final int intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> measurables, int mainAxisAvailable, int mainAxisSpacing, int crossAxisSpacing) {
                int intrinsicCrossAxisSize;
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                intrinsicCrossAxisSize = FlowLayoutKt.intrinsicCrossAxisSize((List<? extends IntrinsicMeasurable>) measurables, (Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer>) this.minMainAxisIntrinsicItemSize, (Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer>) this.minCrossAxisIntrinsicItemSize, mainAxisAvailable, mainAxisSpacing, crossAxisSpacing, this.$maxItemsInMainAxis);
                return intrinsicCrossAxisSize;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.collections.IntIterator] */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.collections.IntIterator] */
    public static final int minIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function32, int i, int i2, int i3, int i4) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i5 = 0; i5 < size; i5++) {
            iArr[i5] = 0;
        }
        int size2 = list.size();
        int[] iArr2 = new int[size2];
        for (int i6 = 0; i6 < size2; i6++) {
            iArr2[i6] = 0;
        }
        int size3 = list.size();
        for (int i7 = 0; i7 < size3; i7++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i7);
            int intValue = function3.invoke(intrinsicMeasurable, Integer.valueOf(i7), Integer.valueOf(i)).intValue();
            iArr[i7] = intValue;
            iArr2[i7] = function32.invoke(intrinsicMeasurable, Integer.valueOf(i7), Integer.valueOf(intValue)).intValue();
        }
        int sum = ArraysKt.sum(iArr);
        if (size2 != 0) {
            int i8 = iArr2[0];
            ?? it = new IntRange(1, ArraysKt.getLastIndex(iArr2)).iterator();
            while (it.hasNext()) {
                int i9 = iArr2[it.nextInt()];
                if (i8 < i9) {
                    i8 = i9;
                }
            }
            if (size != 0) {
                int i10 = iArr[0];
                ?? it2 = new IntRange(1, ArraysKt.getLastIndex(iArr)).iterator();
                while (it2.hasNext()) {
                    int i11 = iArr[it2.nextInt()];
                    if (i10 < i11) {
                        i10 = i11;
                    }
                }
                int i12 = sum;
                while (i10 < i12 && i8 != i) {
                    int i13 = (i10 + i12) / 2;
                    i8 = intrinsicCrossAxisSize(list, iArr, iArr2, i13, i2, i3, i4);
                    if (i8 == i) {
                        return i13;
                    }
                    if (i8 > i) {
                        i10 = i13 + 1;
                    } else {
                        i12 = i13 - 1;
                    }
                    sum = i13;
                }
                return sum;
            }
            throw new NoSuchElementException();
        }
        throw new NoSuchElementException();
    }

    private static final int intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, final int[] iArr, final int[] iArr2, int i, int i2, int i3, int i4) {
        return intrinsicCrossAxisSize(list, new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$intrinsicCrossAxisSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicCrossAxisSize, int i5, int i6) {
                Intrinsics.checkNotNullParameter(intrinsicCrossAxisSize, "$this$intrinsicCrossAxisSize");
                return Integer.valueOf(iArr[i5]);
            }
        }, new Function3<IntrinsicMeasurable, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$intrinsicCrossAxisSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num, Integer num2) {
                return invoke(intrinsicMeasurable, num.intValue(), num2.intValue());
            }

            public final Integer invoke(IntrinsicMeasurable intrinsicCrossAxisSize, int i5, int i6) {
                Intrinsics.checkNotNullParameter(intrinsicCrossAxisSize, "$this$intrinsicCrossAxisSize");
                return Integer.valueOf(iArr2[i5]);
            }
        }, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function32, int i, int i2, int i3, int i4) {
        if (list.isEmpty()) {
            return 0;
        }
        Object orNull = CollectionsKt.getOrNull(list, 0);
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) orNull;
        int intValue = intrinsicMeasurable != null ? function32.invoke(intrinsicMeasurable, 0, Integer.valueOf(i)).intValue() : 0;
        int intValue2 = intrinsicMeasurable != null ? function3.invoke(intrinsicMeasurable, 0, Integer.valueOf(intValue)).intValue() : 0;
        int size = list.size();
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i6 < size) {
            list.get(i6);
            Intrinsics.checkNotNull(orNull);
            i5 -= intValue2;
            int max = Math.max(i8, intValue);
            i6++;
            Object orNull2 = CollectionsKt.getOrNull(list, i6);
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) orNull2;
            int intValue3 = intrinsicMeasurable2 != null ? function32.invoke(intrinsicMeasurable2, Integer.valueOf(i6), Integer.valueOf(i)).intValue() : 0;
            int intValue4 = intrinsicMeasurable2 != null ? function3.invoke(intrinsicMeasurable2, Integer.valueOf(i6), Integer.valueOf(intValue3)).intValue() + i2 : 0;
            if (i5 >= 0 && i6 != list.size()) {
                if (i6 - i9 != i4 && i5 - intValue4 >= 0) {
                    int i10 = intValue3;
                    i8 = max;
                    orNull = orNull2;
                    intValue2 = intValue4;
                    intValue = i10;
                }
            }
            i7 += max + i3;
            intValue4 -= i2;
            i5 = i;
            max = 0;
            i9 = i6;
            int i102 = intValue3;
            i8 = max;
            orNull = orNull2;
            intValue2 = intValue4;
            intValue = i102;
        }
        return i7 - i3;
    }

    public static final int mainAxisMin(Measurable measurable, LayoutOrientation orientation, int i) {
        Intrinsics.checkNotNullParameter(measurable, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == LayoutOrientation.Horizontal) {
            return measurable.minIntrinsicWidth(i);
        }
        return measurable.minIntrinsicHeight(i);
    }

    public static final int crossAxisMin(Measurable measurable, LayoutOrientation orientation, int i) {
        Intrinsics.checkNotNullParameter(measurable, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == LayoutOrientation.Horizontal) {
            return measurable.minIntrinsicHeight(i);
        }
        return measurable.minIntrinsicWidth(i);
    }

    public static final int mainAxisSize(Placeable placeable, LayoutOrientation orientation) {
        Intrinsics.checkNotNullParameter(placeable, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return orientation == LayoutOrientation.Horizontal ? placeable.getWidth() : placeable.getHeight();
    }

    public static final int crossAxisSize(Placeable placeable, LayoutOrientation orientation) {
        Intrinsics.checkNotNullParameter(placeable, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return orientation == LayoutOrientation.Horizontal ? placeable.getHeight() : placeable.getWidth();
    }

    /* renamed from: measureAndCache-6m2dt9o, reason: not valid java name */
    private static final int m439measureAndCache6m2dt9o(Measurable measurable, long j, LayoutOrientation layoutOrientation, Function1<? super Placeable, Unit> function1) {
        if (RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(measurable)) == 0.0f) {
            Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(OrientationIndependentConstraints.m472toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m461copyyUG9Ft0$default(j, 0, 0, 0, 0, 14, null), layoutOrientation));
            function1.invoke(mo3876measureBRTryo0);
            return mainAxisSize(mo3876measureBRTryo0, layoutOrientation);
        }
        return mainAxisMin(measurable, layoutOrientation, Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int maxIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> function3, int i, int i2, int i3) {
        int size = list.size();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i4 < size) {
            int intValue = function3.invoke(list.get(i4), Integer.valueOf(i4), Integer.valueOf(i)).intValue() + i2;
            int i8 = i4 + 1;
            if (i8 - i6 == i3 || i8 == list.size()) {
                i5 = Math.max(i5, (i7 + intValue) - i2);
                i7 = 0;
                i6 = i4;
            } else {
                i7 += intValue;
            }
            i4 = i8;
        }
        return i5;
    }

    /* renamed from: breakDownItems-w1Onq5I, reason: not valid java name */
    public static final FlowResult m437breakDownItemsw1Onq5I(MeasureScope breakDownItems, RowColumnMeasurementHelper measureHelper, LayoutOrientation orientation, long j, int i) {
        Intrinsics.checkNotNullParameter(breakDownItems, "$this$breakDownItems");
        Intrinsics.checkNotNullParameter(measureHelper, "measureHelper");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        MutableVector mutableVector = new MutableVector(new RowColumnMeasureHelperResult[16], 0);
        int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j);
        int m4841getMinWidthimpl = Constraints.m4841getMinWidthimpl(j);
        int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j);
        List<Measurable> measurables = measureHelper.getMeasurables();
        final Placeable[] placeables = measureHelper.getPlaceables();
        int ceil = (int) Math.ceil(breakDownItems.mo335toPx0680j_4(measureHelper.getArrangementSpacing()));
        long m457constructorimpl = OrientationIndependentConstraints.m457constructorimpl(m4841getMinWidthimpl, m4839getMaxWidthimpl, 0, m4838getMaxHeightimpl);
        Measurable measurable = (Measurable) CollectionsKt.getOrNull(measurables, 0);
        Integer valueOf = measurable != null ? Integer.valueOf(m439measureAndCache6m2dt9o(measurable, m457constructorimpl, orientation, new Function1<Placeable, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$breakDownItems$nextSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable placeable) {
                invoke2(placeable);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable placeable) {
                placeables[0] = placeable;
            }
        })) : null;
        Integer[] numArr = new Integer[measurables.size()];
        int size = measurables.size();
        int i2 = m4839getMaxWidthimpl;
        final int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i3 < size) {
            Intrinsics.checkNotNull(valueOf);
            int intValue = valueOf.intValue();
            int i7 = i4 + intValue;
            i2 -= intValue;
            int i8 = i3 + 1;
            Measurable measurable2 = (Measurable) CollectionsKt.getOrNull(measurables, i8);
            Integer valueOf2 = measurable2 != null ? Integer.valueOf(m439measureAndCache6m2dt9o(measurable2, m457constructorimpl, orientation, new Function1<Placeable, Unit>() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$breakDownItems$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable placeable) {
                    invoke2(placeable);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Placeable placeable) {
                    placeables[i3 + 1] = placeable;
                }
            }) + ceil) : null;
            if (i8 < measurables.size() && i8 - i5 < i) {
                if (i2 - (valueOf2 != null ? valueOf2.intValue() : 0) >= 0) {
                    i4 = i7;
                    i3 = i8;
                    valueOf = valueOf2;
                }
            }
            int min = Math.min(Math.max(m4841getMinWidthimpl, i7), m4839getMaxWidthimpl);
            numArr[i6] = Integer.valueOf(i8);
            i6++;
            i2 = m4839getMaxWidthimpl;
            valueOf2 = valueOf2 != null ? Integer.valueOf(valueOf2.intValue() - ceil) : null;
            i5 = i8;
            i4 = 0;
            m4841getMinWidthimpl = min;
            i3 = i8;
            valueOf = valueOf2;
        }
        int i9 = m4841getMinWidthimpl;
        long m472toBoxConstraintsOenEA2s = OrientationIndependentConstraints.m472toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m461copyyUG9Ft0$default(m457constructorimpl, i9, 0, 0, 0, 14, null), orientation);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        Integer num = (Integer) ArraysKt.getOrNull(numArr, 0);
        while (num != null) {
            RowColumnMeasureHelperResult m517measureWithoutPlacing_EkL_Y = measureHelper.m517measureWithoutPlacing_EkL_Y(breakDownItems, m472toBoxConstraintsOenEA2s, i10, num.intValue());
            i11 += m517measureWithoutPlacing_EkL_Y.getCrossAxisSize();
            i9 = Math.max(i9, m517measureWithoutPlacing_EkL_Y.getMainAxisSize());
            mutableVector.add(m517measureWithoutPlacing_EkL_Y);
            i10 = num.intValue();
            i12++;
            num = (Integer) ArraysKt.getOrNull(numArr, i12);
        }
        return new FlowResult(Math.max(i9, Constraints.m4841getMinWidthimpl(j)), Math.max(i11, Constraints.m4840getMinHeightimpl(j)), mutableVector);
    }
}
