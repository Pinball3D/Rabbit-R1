package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
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
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a¦\u0001\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a¼\u0001\u0010\u001e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0013\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u0097\u0001\u0010(\u001a\u00020\b2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0013\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0006\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0001H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b,\u0010-\u001a¦\u0001\u0010.\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a®\u0001\u0010/\u001a\u00020\b2\u0006\u00100\u001a\u00020\u00102\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u0002012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u0001022\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u0001032\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u00104\u001a\u008f\u0001\u00105\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u00107\u001a®\u0001\u00108\u001a\u00020\b2\u0006\u00100\u001a\u00020\u00102\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u0002012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u0001022\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u0001032\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u00104\u001aÅ\u0001\u00109\u001a\u00020\b2\u0006\u00100\u001a\u00020\u00102\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0015\b\u0002\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u0002012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u0001022\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u0001032\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010:\u001aÑ\u0001\u0010;\u001a\u00020\b2\u0006\u00100\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\u0006\u0010\u001f\u001a\u00020 2\u0013\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0013\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002012\b\u0010\u0017\u001a\u0004\u0018\u0001022\b\u0010\u0019\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a\u008f\u0001\u0010>\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0015\b\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\f2\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u00107\u001a&\u0010?\u001a\u00020\u00012\b\b\u0002\u0010@\u001a\u00020\u00102\b\b\u0002\u0010A\u001a\u00020\u00102\b\b\u0002\u0010B\u001a\u00020\u0010H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\u0003\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006C"}, d2 = {"AssistChipPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "FilterChipPadding", "HorizontalElementsPadding", "Landroidx/compose/ui/unit/Dp;", "F", "SuggestionChipPadding", "AssistChip", "", "onClick", "Lkotlin/Function0;", "label", "Landroidx/compose/runtime/Composable;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "leadingIcon", "trailingIcon", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/ChipColors;", "elevation", "Landroidx/compose/material3/ChipElevation;", "border", "Landroidx/compose/material3/ChipBorder;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V", "Chip", "labelTextStyle", "Landroidx/compose/ui/text/TextStyle;", "labelColor", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/foundation/BorderStroke;", "minHeight", "paddingValues", "Chip-nkUnTEs", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "ChipContent", "avatar", "leadingIconColor", "trailingIconColor", "ChipContent-fe0OD_I", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V", "ElevatedAssistChip", "ElevatedFilterChip", "selected", "Landroidx/compose/material3/SelectableChipColors;", "Landroidx/compose/material3/SelectableChipElevation;", "Landroidx/compose/material3/SelectableChipBorder;", "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V", "ElevatedSuggestionChip", "icon", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "FilterChip", "InputChip", "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V", "SelectableChip", "SelectableChip-u0RnIRE", "(ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "SuggestionChip", "inputChipPadding", "hasAvatar", "hasLeadingIcon", "hasTrailingIcon", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ChipKt {
    private static final PaddingValues AssistChipPadding;
    private static final PaddingValues FilterChipPadding;
    private static final float HorizontalElementsPadding;
    private static final PaddingValues SuggestionChipPadding;

    /* JADX WARN: Removed duplicated region for block: B:101:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0376  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AssistChip(final kotlin.jvm.functions.Function0<kotlin.Unit> r46, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r47, androidx.compose.ui.Modifier r48, boolean r49, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r51, androidx.compose.ui.graphics.Shape r52, androidx.compose.material3.ChipColors r53, androidx.compose.material3.ChipElevation r54, androidx.compose.material3.ChipBorder r55, androidx.compose.foundation.interaction.MutableInteractionSource r56, androidx.compose.runtime.Composer r57, final int r58, final int r59, final int r60) {
        /*
            Method dump skipped, instructions count: 939
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.AssistChip(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ChipColors, androidx.compose.material3.ChipElevation, androidx.compose.material3.ChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedAssistChip(final kotlin.jvm.functions.Function0<kotlin.Unit> r49, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, androidx.compose.ui.Modifier r51, boolean r52, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r53, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r54, androidx.compose.ui.graphics.Shape r55, androidx.compose.material3.ChipColors r56, androidx.compose.material3.ChipElevation r57, androidx.compose.material3.ChipBorder r58, androidx.compose.foundation.interaction.MutableInteractionSource r59, androidx.compose.runtime.Composer r60, final int r61, final int r62, final int r63) {
        /*
            Method dump skipped, instructions count: 917
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.ElevatedAssistChip(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ChipColors, androidx.compose.material3.ChipElevation, androidx.compose.material3.ChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x033b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FilterChip(final boolean r55, final kotlin.jvm.functions.Function0<kotlin.Unit> r56, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r57, androidx.compose.ui.Modifier r58, boolean r59, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r60, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r61, androidx.compose.ui.graphics.Shape r62, androidx.compose.material3.SelectableChipColors r63, androidx.compose.material3.SelectableChipElevation r64, androidx.compose.material3.SelectableChipBorder r65, androidx.compose.foundation.interaction.MutableInteractionSource r66, androidx.compose.runtime.Composer r67, final int r68, final int r69, final int r70) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.FilterChip(boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.SelectableChipColors, androidx.compose.material3.SelectableChipElevation, androidx.compose.material3.SelectableChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedFilterChip(final boolean r56, final kotlin.jvm.functions.Function0<kotlin.Unit> r57, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r58, androidx.compose.ui.Modifier r59, boolean r60, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r61, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r62, androidx.compose.ui.graphics.Shape r63, androidx.compose.material3.SelectableChipColors r64, androidx.compose.material3.SelectableChipElevation r65, androidx.compose.material3.SelectableChipBorder r66, androidx.compose.foundation.interaction.MutableInteractionSource r67, androidx.compose.runtime.Composer r68, final int r69, final int r70, final int r71) {
        /*
            Method dump skipped, instructions count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.ElevatedFilterChip(boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.SelectableChipColors, androidx.compose.material3.SelectableChipElevation, androidx.compose.material3.SelectableChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x031a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void InputChip(final boolean r50, final kotlin.jvm.functions.Function0<kotlin.Unit> r51, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r52, androidx.compose.ui.Modifier r53, boolean r54, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r55, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r56, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r57, androidx.compose.ui.graphics.Shape r58, androidx.compose.material3.SelectableChipColors r59, androidx.compose.material3.SelectableChipElevation r60, androidx.compose.material3.SelectableChipBorder r61, androidx.compose.foundation.interaction.MutableInteractionSource r62, androidx.compose.runtime.Composer r63, final int r64, final int r65, final int r66) {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.InputChip(boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.SelectableChipColors, androidx.compose.material3.SelectableChipElevation, androidx.compose.material3.SelectableChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SuggestionChip(final kotlin.jvm.functions.Function0<kotlin.Unit> r41, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r42, androidx.compose.ui.Modifier r43, boolean r44, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, androidx.compose.ui.graphics.Shape r46, androidx.compose.material3.ChipColors r47, androidx.compose.material3.ChipElevation r48, androidx.compose.material3.ChipBorder r49, androidx.compose.foundation.interaction.MutableInteractionSource r50, androidx.compose.runtime.Composer r51, final int r52, final int r53) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.SuggestionChip(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ChipColors, androidx.compose.material3.ChipElevation, androidx.compose.material3.ChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedSuggestionChip(final kotlin.jvm.functions.Function0<kotlin.Unit> r42, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, androidx.compose.ui.Modifier r44, boolean r45, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r46, androidx.compose.ui.graphics.Shape r47, androidx.compose.material3.ChipColors r48, androidx.compose.material3.ChipElevation r49, androidx.compose.material3.ChipBorder r50, androidx.compose.foundation.interaction.MutableInteractionSource r51, androidx.compose.runtime.Composer r52, final int r53, final int r54) {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ChipKt.ElevatedSuggestionChip(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ChipColors, androidx.compose.material3.ChipElevation, androidx.compose.material3.ChipBorder, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Chip-nkUnTEs, reason: not valid java name */
    public static final void m1035ChipnkUnTEs(final Modifier modifier, final Function0<Unit> function0, final boolean z, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle textStyle, final long j, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Shape shape, final ChipColors chipColors, final ChipElevation chipElevation, final BorderStroke borderStroke, final float f, final PaddingValues paddingValues, final MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(1400504719);
        ComposerKt.sourceInformation(startRestartGroup, "C(Chip)P(10,11,3,5,7,6:c#ui.graphics.Color,8,14,13,1,2!1,9:c#ui.unit.Dp,12)1323@66508L23,1318@66337L961:Chip.kt#uh7d8r");
        if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 112) == 0) {
            i3 |= startRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i3 |= startRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        if ((i & 57344) == 0) {
            i3 |= startRestartGroup.changed(textStyle) ? 16384 : 8192;
        }
        if ((i & 458752) == 0) {
            i3 |= startRestartGroup.changed(j) ? 131072 : 65536;
        }
        if ((i & 3670016) == 0) {
            i3 |= startRestartGroup.changedInstance(function22) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function23) ? 8388608 : 4194304;
        }
        if ((i & 234881024) == 0) {
            i3 |= startRestartGroup.changed(shape) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i & 1879048192) == 0) {
            i3 |= startRestartGroup.changed(chipColors) ? 536870912 : 268435456;
        }
        if ((i2 & 14) == 0) {
            i4 = (startRestartGroup.changed(chipElevation) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 112) == 0) {
            i4 |= startRestartGroup.changed(borderStroke) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i4 |= startRestartGroup.changed(f) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            i4 |= startRestartGroup.changed(paddingValues) ? 2048 : 1024;
        }
        if ((i2 & 57344) == 0) {
            i4 |= startRestartGroup.changed(mutableInteractionSource) ? 16384 : 8192;
        }
        if ((i3 & 1533916891) != 306783378 || (46811 & i4) != 9362 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1400504719, i3, i4, "androidx.compose.material3.Chip (Chip.kt:1301)");
            }
            Modifier semantics$default = SemanticsModifierKt.semantics$default(modifier, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ChipKt$Chip$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.m4270setRolekuIjeqM(semantics, Role.INSTANCE.m4256getButtono7Vup1c());
                }
            }, 1, null);
            int i5 = (i3 >> 6) & 14;
            long m2649unboximpl = chipColors.containerColor$material3_release(z, startRestartGroup, i5 | ((i3 >> 24) & 112)).getValue().m2649unboximpl();
            startRestartGroup.startReplaceableGroup(64018752);
            ComposerKt.sourceInformation(startRestartGroup, "1324@66575L42");
            State<Dp> state = chipElevation == null ? null : chipElevation.tonalElevation$material3_release(z, mutableInteractionSource, startRestartGroup, i5 | ((i4 >> 9) & 112) | ((i4 << 6) & 896));
            startRestartGroup.endReplaceableGroup();
            float m4897unboximpl = state != null ? state.getValue().m4897unboximpl() : Dp.m4883constructorimpl(0);
            startRestartGroup.startReplaceableGroup(64018848);
            ComposerKt.sourceInformation(startRestartGroup, "1325@66671L43");
            State<Dp> shadowElevation$material3_release = chipElevation == null ? null : chipElevation.shadowElevation$material3_release(z, mutableInteractionSource, startRestartGroup, i5 | ((i4 >> 9) & 112) | ((i4 << 6) & 896));
            startRestartGroup.endReplaceableGroup();
            final int i6 = i3;
            final int i7 = i4;
            composer2 = startRestartGroup;
            SurfaceKt.m1487Surfaceo_FOJdg(function0, semantics$default, z, shape, m2649unboximpl, 0L, m4897unboximpl, shadowElevation$material3_release != null ? shadowElevation$material3_release.getValue().m4897unboximpl() : Dp.m4883constructorimpl(0), borderStroke, mutableInteractionSource, ComposableLambdaKt.composableLambda(composer2, -1985962652, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ChipKt$Chip$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i8) {
                    ComposerKt.sourceInformation(composer3, "C1336@67086L32,1337@67165L33,1329@66819L473:Chip.kt#uh7d8r");
                    if ((i8 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1985962652, i8, -1, "androidx.compose.material3.Chip.<anonymous> (Chip.kt:1328)");
                        }
                        Function2<Composer, Integer, Unit> function24 = function2;
                        TextStyle textStyle2 = textStyle;
                        long j2 = j;
                        Function2<Composer, Integer, Unit> function25 = function22;
                        Function2<Composer, Integer, Unit> function26 = function23;
                        ChipColors chipColors2 = chipColors;
                        boolean z2 = z;
                        int i9 = i6;
                        long m2649unboximpl2 = chipColors2.leadingIconContentColor$material3_release(z2, composer3, ((i9 >> 24) & 112) | ((i9 >> 6) & 14)).getValue().m2649unboximpl();
                        ChipColors chipColors3 = chipColors;
                        boolean z3 = z;
                        int i10 = i6;
                        long m2649unboximpl3 = chipColors3.trailingIconContentColor$material3_release(z3, composer3, ((i10 >> 24) & 112) | ((i10 >> 6) & 14)).getValue().m2649unboximpl();
                        float f2 = f;
                        PaddingValues paddingValues2 = paddingValues;
                        int i11 = i6;
                        int i12 = i7;
                        ChipKt.m1036ChipContentfe0OD_I(function24, textStyle2, j2, function25, null, function26, m2649unboximpl2, m2649unboximpl3, f2, paddingValues2, composer3, ((i11 >> 9) & 14) | 24576 | ((i11 >> 9) & 112) | ((i11 >> 9) & 896) | ((i11 >> 9) & 7168) | (458752 & (i11 >> 6)) | ((i12 << 18) & 234881024) | ((i12 << 18) & 1879048192));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), composer2, ((i6 >> 3) & 14) | (i6 & 896) | ((i6 >> 15) & 7168) | ((i7 << 21) & 234881024) | ((i7 << 15) & 1879048192), 6, 32);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ChipKt$Chip$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                invoke(composer3, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer3, int i8) {
                ChipKt.m1035ChipnkUnTEs(Modifier.this, function0, z, function2, textStyle, j, function22, function23, shape, chipColors, chipElevation, borderStroke, f, paddingValues, mutableInteractionSource, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: SelectableChip-u0RnIRE, reason: not valid java name */
    public static final void m1037SelectableChipu0RnIRE(final boolean z, final Modifier modifier, final Function0<Unit> function0, final boolean z2, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle textStyle, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final Shape shape, final SelectableChipColors selectableChipColors, final SelectableChipElevation selectableChipElevation, final BorderStroke borderStroke, final float f, final PaddingValues paddingValues, final MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(402951308);
        ComposerKt.sourceInformation(startRestartGroup, "C(SelectableChip)P(13,10,11,4,6,7,8!1,15,14,2,3!1,9:c#ui.unit.Dp,12)1371@68165L33,1365@67963L1080:Chip.kt#uh7d8r");
        if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(modifier) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i & 57344) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 16384 : 8192;
        }
        if ((i & 458752) == 0) {
            i3 |= startRestartGroup.changed(textStyle) ? 131072 : 65536;
        }
        if ((i & 3670016) == 0) {
            i3 |= startRestartGroup.changedInstance(function22) ? 1048576 : 524288;
        }
        if ((i & 29360128) == 0) {
            i3 |= startRestartGroup.changedInstance(function23) ? 8388608 : 4194304;
        }
        if ((i & 234881024) == 0) {
            i3 |= startRestartGroup.changedInstance(function24) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i & 1879048192) == 0) {
            i3 |= startRestartGroup.changed(shape) ? 536870912 : 268435456;
        }
        if ((i2 & 14) == 0) {
            i4 = (startRestartGroup.changed(selectableChipColors) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 112) == 0) {
            i4 |= startRestartGroup.changed(selectableChipElevation) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i4 |= startRestartGroup.changed(borderStroke) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            i4 |= startRestartGroup.changed(f) ? 2048 : 1024;
        }
        if ((i2 & 57344) == 0) {
            i4 |= startRestartGroup.changed(paddingValues) ? 16384 : 8192;
        }
        if ((i2 & 458752) == 0) {
            i4 |= startRestartGroup.changed(mutableInteractionSource) ? 131072 : 65536;
        }
        if ((i3 & 1533916891) != 306783378 || (374491 & i4) != 74898 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(402951308, i3, i4, "androidx.compose.material3.SelectableChip (Chip.kt:1346)");
            }
            Modifier semantics$default = SemanticsModifierKt.semantics$default(modifier, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ChipKt$SelectableChip$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.m4270setRolekuIjeqM(semantics, Role.INSTANCE.m4257getCheckboxo7Vup1c());
                }
            }, 1, null);
            int i5 = (i3 >> 9) & 14;
            long m2649unboximpl = selectableChipColors.containerColor$material3_release(z2, z, startRestartGroup, ((i3 << 3) & 112) | i5 | ((i4 << 6) & 896)).getValue().m2649unboximpl();
            startRestartGroup.startReplaceableGroup(1036660941);
            ComposerKt.sourceInformation(startRestartGroup, "1372@68242L42");
            State<Dp> state = selectableChipElevation == null ? null : selectableChipElevation.tonalElevation$material3_release(z2, mutableInteractionSource, startRestartGroup, ((i4 << 3) & 896) | ((i4 >> 12) & 112) | i5);
            startRestartGroup.endReplaceableGroup();
            float m4897unboximpl = state != null ? state.getValue().m4897unboximpl() : Dp.m4883constructorimpl(0);
            startRestartGroup.startReplaceableGroup(1036661049);
            ComposerKt.sourceInformation(startRestartGroup, "1374@68350L43");
            State<Dp> shadowElevation$material3_release = selectableChipElevation == null ? null : selectableChipElevation.shadowElevation$material3_release(z2, mutableInteractionSource, startRestartGroup, i5 | ((i4 >> 12) & 112) | ((i4 << 3) & 896));
            startRestartGroup.endReplaceableGroup();
            final int i6 = i3;
            final int i7 = i4;
            composer2 = startRestartGroup;
            SurfaceKt.m1485Surfaced85dljk(z, function0, semantics$default, z2, shape, m2649unboximpl, 0L, m4897unboximpl, shadowElevation$material3_release != null ? shadowElevation$material3_release.getValue().m4897unboximpl() : Dp.m4883constructorimpl(0), borderStroke, mutableInteractionSource, ComposableLambdaKt.composableLambda(startRestartGroup, -577614814, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ChipKt$SelectableChip$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i8) {
                    ComposerKt.sourceInformation(composer3, "C1384@68695L29,1386@68811L42,1387@68900L43,1379@68510L527:Chip.kt#uh7d8r");
                    if ((i8 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-577614814, i8, -1, "androidx.compose.material3.SelectableChip.<anonymous> (Chip.kt:1378)");
                        }
                        SelectableChipColors selectableChipColors2 = SelectableChipColors.this;
                        boolean z3 = z2;
                        boolean z4 = z;
                        int i9 = i6;
                        long m2649unboximpl2 = selectableChipColors2.labelColor$material3_release(z3, z4, composer3, ((i9 << 3) & 112) | ((i9 >> 9) & 14) | ((i7 << 6) & 896)).getValue().m2649unboximpl();
                        SelectableChipColors selectableChipColors3 = SelectableChipColors.this;
                        boolean z5 = z2;
                        boolean z6 = z;
                        int i10 = i6;
                        long m2649unboximpl3 = selectableChipColors3.leadingIconContentColor$material3_release(z5, z6, composer3, ((i10 << 3) & 112) | ((i10 >> 9) & 14) | ((i7 << 6) & 896)).getValue().m2649unboximpl();
                        SelectableChipColors selectableChipColors4 = SelectableChipColors.this;
                        boolean z7 = z2;
                        boolean z8 = z;
                        int i11 = i6;
                        long m2649unboximpl4 = selectableChipColors4.trailingIconContentColor$material3_release(z7, z8, composer3, ((i11 << 3) & 112) | ((i11 >> 9) & 14) | ((i7 << 6) & 896)).getValue().m2649unboximpl();
                        Function2<Composer, Integer, Unit> function25 = function2;
                        TextStyle textStyle2 = textStyle;
                        Function2<Composer, Integer, Unit> function26 = function22;
                        Function2<Composer, Integer, Unit> function27 = function23;
                        Function2<Composer, Integer, Unit> function28 = function24;
                        float f2 = f;
                        PaddingValues paddingValues2 = paddingValues;
                        int i12 = i6;
                        int i13 = i7;
                        ChipKt.m1036ChipContentfe0OD_I(function25, textStyle2, m2649unboximpl2, function26, function27, function28, m2649unboximpl3, m2649unboximpl4, f2, paddingValues2, composer3, ((i12 >> 12) & 14) | ((i12 >> 12) & 112) | ((i12 >> 9) & 7168) | ((i12 >> 9) & 57344) | ((i12 >> 9) & 458752) | ((i13 << 15) & 234881024) | ((i13 << 15) & 1879048192));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), startRestartGroup, (i6 & 14) | ((i6 >> 3) & 112) | (i6 & 7168) | ((i6 >> 15) & 57344) | ((i7 << 21) & 1879048192), ((i7 >> 15) & 14) | 48, 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ChipKt$SelectableChip$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                invoke(composer3, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer3, int i8) {
                ChipKt.m1037SelectableChipu0RnIRE(z, modifier, function0, z2, function2, textStyle, function22, function23, function24, shape, selectableChipColors, selectableChipElevation, borderStroke, f, paddingValues, mutableInteractionSource, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ChipContent-fe0OD_I, reason: not valid java name */
    public static final void m1036ChipContentfe0OD_I(final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle textStyle, final long j, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final long j2, final long j3, final float f, final PaddingValues paddingValues, Composer composer, final int i) {
        int i2;
        int i3;
        Composer startRestartGroup = composer.startRestartGroup(-782878228);
        ComposerKt.sourceInformation(startRestartGroup, "C(ChipContent)P(1,3,2:c#ui.graphics.Color,4!1,8,5:c#ui.graphics.Color,9:c#ui.graphics.Color,6:c#ui.unit.Dp)1407@69420L1012:Chip.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(textStyle) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function24) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changed(j2) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i3 = i2 | (startRestartGroup.changed(j3) ? 8388608 : 4194304);
        } else {
            i3 = i2;
        }
        if ((234881024 & i) == 0) {
            i3 |= startRestartGroup.changed(f) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i & 1879048192) == 0) {
            i3 |= startRestartGroup.changed(paddingValues) ? 536870912 : 268435456;
        }
        if ((i3 & 1533916891) != 306783378 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-782878228, i3, -1, "androidx.compose.material3.ChipContent (Chip.kt:1395)");
            }
            final int i4 = i3;
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j)), TextKt.getLocalTextStyle().provides(textStyle)}, ComposableLambdaKt.composableLambda(startRestartGroup, 1748799148, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ChipKt$ChipContent$1
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

                public final void invoke(Composer composer2, int i5) {
                    float f2;
                    float f3;
                    ComposerKt.sourceInformation(composer2, "C1411@69556L870:Chip.kt#uh7d8r");
                    if ((i5 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1748799148, i5, -1, "androidx.compose.material3.ChipContent.<anonymous> (Chip.kt:1410)");
                        }
                        Modifier padding = PaddingKt.padding(SizeKt.m522defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, f, 1, null), paddingValues);
                        Arrangement.Horizontal start = Arrangement.INSTANCE.getStart();
                        Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                        Function2<Composer, Integer, Unit> function25 = function23;
                        int i6 = i4;
                        Function2<Composer, Integer, Unit> function26 = function22;
                        long j4 = j2;
                        Function2<Composer, Integer, Unit> function27 = function2;
                        Function2<Composer, Integer, Unit> function28 = function24;
                        long j5 = j3;
                        composer2.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation(composer2, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
                        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(start, centerVertically, composer2, 54);
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
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(padding);
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
                        Updater.m2280setimpl(m2273constructorimpl, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer2.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer2)), composer2, 0);
                        composer2.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer2, -326682283, "C80@4021L9:Row.kt#2w3rfo");
                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer2, 650988016, "C1425@70082L49,1426@70144L7,1427@70164L49:Chip.kt#uh7d8r");
                        if (function25 != null) {
                            composer2.startReplaceableGroup(650988036);
                            ComposerKt.sourceInformation(composer2, "1419@69854L8");
                            function25.invoke(composer2, Integer.valueOf((i6 >> 12) & 14));
                            composer2.endReplaceableGroup();
                        } else if (function26 != null) {
                            composer2.startReplaceableGroup(650988107);
                            ComposerKt.sourceInformation(composer2, "1421@69925L130");
                            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j4))}, function26, composer2, ((i6 >> 6) & 112) | 8);
                            composer2.endReplaceableGroup();
                        } else {
                            composer2.startReplaceableGroup(650988269);
                            composer2.endReplaceableGroup();
                        }
                        Modifier.Companion companion = Modifier.INSTANCE;
                        f2 = ChipKt.HorizontalElementsPadding;
                        SpacerKt.Spacer(SizeKt.m542width3ABfNKs(companion, f2), composer2, 6);
                        function27.invoke(composer2, Integer.valueOf(i6 & 14));
                        Modifier.Companion companion2 = Modifier.INSTANCE;
                        f3 = ChipKt.HorizontalElementsPadding;
                        SpacerKt.Spacer(SizeKt.m542width3ABfNKs(companion2, f3), composer2, 6);
                        composer2.startReplaceableGroup(-313068567);
                        ComposerKt.sourceInformation(composer2, "1429@70270L132");
                        if (function28 != null) {
                            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j5))}, function28, composer2, ((i6 >> 12) & 112) | 8);
                        }
                        composer2.endReplaceableGroup();
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ChipKt$ChipContent$2
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

            public final void invoke(Composer composer2, int i5) {
                ChipKt.m1036ChipContentfe0OD_I(function2, textStyle, j, function22, function23, function24, j2, j3, f, paddingValues, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    static /* synthetic */ PaddingValues inputChipPadding$default(boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        return inputChipPadding(z, z2, z3);
    }

    private static final PaddingValues inputChipPadding(boolean z, boolean z2, boolean z3) {
        return PaddingKt.m487PaddingValuesa9UjIt4$default(Dp.m4883constructorimpl((z || !z2) ? 4 : 8), 0.0f, Dp.m4883constructorimpl(z3 ? 8 : 4), 0.0f, 10, null);
    }

    static {
        float m4883constructorimpl = Dp.m4883constructorimpl(8);
        HorizontalElementsPadding = m4883constructorimpl;
        AssistChipPadding = PaddingKt.m485PaddingValuesYgX7TsA$default(m4883constructorimpl, 0.0f, 2, null);
        FilterChipPadding = PaddingKt.m485PaddingValuesYgX7TsA$default(m4883constructorimpl, 0.0f, 2, null);
        SuggestionChipPadding = PaddingKt.m485PaddingValuesYgX7TsA$default(m4883constructorimpl, 0.0f, 2, null);
    }
}
