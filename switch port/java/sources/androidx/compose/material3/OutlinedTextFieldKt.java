package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: OutlinedTextField.kt */
@Metadata(d1 = {"\u0000¨\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u001aÖ\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u0010-\u001a¨\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u0010.\u001aÖ\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020/2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u00100\u001a¨\u0002\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020/2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00070\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0015\b\u0002\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0015\b\u0002\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u000f2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020(2\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u00101\u001a\u0083\u0002\u00102\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0011\u00103\u001a\r\u0012\u0004\u0012\u00020\u00070\u0014¢\u0006\u0002\b\u00152\u0019\u0010\u0016\u001a\u0015\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000b¢\u0006\u0002\b\u00152\u0013\u0010\u0013\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0013\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0006\u0010#\u001a\u00020\u000f2\u0006\u00106\u001a\u0002072\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u00070\u000b2\u0011\u0010:\u001a\r\u0012\u0004\u0012\u00020\u00070\u0014¢\u0006\u0002\b\u00152\u0013\u0010;\u001a\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014¢\u0006\u0002\b\u00152\u0006\u0010<\u001a\u00020=H\u0001ø\u0001\u0000¢\u0006\u0002\u0010>\u001am\u0010?\u001a\u00020%2\u0006\u0010@\u001a\u00020%2\u0006\u0010A\u001a\u00020%2\u0006\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020%2\u0006\u0010F\u001a\u00020%2\u0006\u0010G\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u0002072\u0006\u0010<\u001a\u00020=H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bK\u0010L\u001am\u0010M\u001a\u00020%2\u0006\u0010N\u001a\u00020%2\u0006\u0010O\u001a\u00020%2\u0006\u0010P\u001a\u00020%2\u0006\u0010Q\u001a\u00020%2\u0006\u0010R\u001a\u00020%2\u0006\u0010S\u001a\u00020%2\u0006\u0010T\u001a\u00020%2\u0006\u0010U\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u0002072\u0006\u0010<\u001a\u00020=H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bV\u0010W\u001a)\u0010X\u001a\u00020\r*\u00020\r2\u0006\u0010Y\u001a\u0002092\u0006\u0010<\u001a\u00020=H\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bZ\u0010[\u001a\u009a\u0001\u0010\\\u001a\u00020\u0007*\u00020]2\u0006\u0010^\u001a\u00020%2\u0006\u0010_\u001a\u00020%2\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010b\u001a\u0004\u0018\u00010a2\b\u0010c\u001a\u0004\u0018\u00010a2\b\u0010d\u001a\u0004\u0018\u00010a2\u0006\u0010e\u001a\u00020a2\b\u0010f\u001a\u0004\u0018\u00010a2\b\u0010g\u001a\u0004\u0018\u00010a2\u0006\u0010h\u001a\u00020a2\b\u0010i\u001a\u0004\u0018\u00010a2\u0006\u00106\u001a\u0002072\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010J\u001a\u0002072\u0006\u0010j\u001a\u00020k2\u0006\u0010<\u001a\u00020=H\u0002\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0019\u0010\u0003\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006l"}, d2 = {"OutlinedTextFieldInnerPadding", "Landroidx/compose/ui/unit/Dp;", "F", "OutlinedTextFieldTopPadding", "getOutlinedTextFieldTopPadding", "()F", "OutlinedTextField", "", "value", "Landroidx/compose/ui/text/input/TextFieldValue;", "onValueChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "readOnly", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "label", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "isError", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "keyboardOptions", "Landroidx/compose/foundation/text/KeyboardOptions;", "keyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "singleLine", "maxLines", "", "minLines", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/TextFieldColors;", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "OutlinedTextFieldLayout", "textField", "leading", "trailing", "animationProgress", "", "onLabelMeasured", "Landroidx/compose/ui/geometry/Size;", "container", "supporting", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V", "calculateHeight", "leadingPlaceableHeight", "trailingPlaceableHeight", "prefixPlaceableHeight", "suffixPlaceableHeight", "textFieldPlaceableHeight", "labelPlaceableHeight", "placeholderPlaceableHeight", "supportingPlaceableHeight", "constraints", "Landroidx/compose/ui/unit/Constraints;", "density", "calculateHeight-DHJA7U0", "(IIIIIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I", "calculateWidth", "leadingPlaceableWidth", "trailingPlaceableWidth", "prefixPlaceableWidth", "suffixPlaceableWidth", "textFieldPlaceableWidth", "labelPlaceableWidth", "placeholderPlaceableWidth", "isLabelInMiddleSection", "calculateWidth-DHJA7U0", "(IIIIIIIZJFLandroidx/compose/foundation/layout/PaddingValues;)I", "outlineCutout", "labelSize", "outlineCutout-12SF9DM", "(Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;", "place", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "totalHeight", ViewHierarchyNode.JsonKeys.WIDTH, "leadingPlaceable", "Landroidx/compose/ui/layout/Placeable;", "trailingPlaceable", "prefixPlaceable", "suffixPlaceable", "textFieldPlaceable", "labelPlaceable", "placeholderPlaceable", "containerPlaceable", "supportingPlaceable", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OutlinedTextFieldKt {
    private static final float OutlinedTextFieldInnerPadding = Dp.m4883constructorimpl(4);
    private static final float OutlinedTextFieldTopPadding = Dp.m4883constructorimpl(8);

    public static final float getOutlinedTextFieldTopPadding() {
        return OutlinedTextFieldTopPadding;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(final java.lang.String r120, final kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r121, androidx.compose.ui.Modifier r122, boolean r123, boolean r124, androidx.compose.ui.text.TextStyle r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r131, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r132, boolean r133, androidx.compose.ui.text.input.VisualTransformation r134, androidx.compose.foundation.text.KeyboardOptions r135, androidx.compose.foundation.text.KeyboardActions r136, boolean r137, int r138, int r139, androidx.compose.foundation.interaction.MutableInteractionSource r140, androidx.compose.ui.graphics.Shape r141, androidx.compose.material3.TextFieldColors r142, androidx.compose.runtime.Composer r143, final int r144, final int r145, final int r146, final int r147) {
        /*
            Method dump skipped, instructions count: 1763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(final androidx.compose.ui.text.input.TextFieldValue r120, final kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.TextFieldValue, kotlin.Unit> r121, androidx.compose.ui.Modifier r122, boolean r123, boolean r124, androidx.compose.ui.text.TextStyle r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r131, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r132, boolean r133, androidx.compose.ui.text.input.VisualTransformation r134, androidx.compose.foundation.text.KeyboardOptions r135, androidx.compose.foundation.text.KeyboardActions r136, boolean r137, int r138, int r139, androidx.compose.foundation.interaction.MutableInteractionSource r140, androidx.compose.ui.graphics.Shape r141, androidx.compose.material3.TextFieldColors r142, androidx.compose.runtime.Composer r143, final int r144, final int r145, final int r146, final int r147) {
        /*
            Method dump skipped, instructions count: 1763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029e  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use overload with prefix and suffix parameters")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void OutlinedTextField(final java.lang.String r123, final kotlin.jvm.functions.Function1 r124, androidx.compose.ui.Modifier r125, boolean r126, boolean r127, androidx.compose.ui.text.TextStyle r128, kotlin.jvm.functions.Function2 r129, kotlin.jvm.functions.Function2 r130, kotlin.jvm.functions.Function2 r131, kotlin.jvm.functions.Function2 r132, kotlin.jvm.functions.Function2 r133, boolean r134, androidx.compose.ui.text.input.VisualTransformation r135, androidx.compose.foundation.text.KeyboardOptions r136, androidx.compose.foundation.text.KeyboardActions r137, boolean r138, int r139, int r140, androidx.compose.foundation.interaction.MutableInteractionSource r141, androidx.compose.ui.graphics.Shape r142, androidx.compose.material3.TextFieldColors r143, androidx.compose.runtime.Composer r144, final int r145, final int r146, final int r147, final int r148) {
        /*
            Method dump skipped, instructions count: 1477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029e  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use overload with prefix and suffix parameters")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void OutlinedTextField(final androidx.compose.ui.text.input.TextFieldValue r123, final kotlin.jvm.functions.Function1 r124, androidx.compose.ui.Modifier r125, boolean r126, boolean r127, androidx.compose.ui.text.TextStyle r128, kotlin.jvm.functions.Function2 r129, kotlin.jvm.functions.Function2 r130, kotlin.jvm.functions.Function2 r131, kotlin.jvm.functions.Function2 r132, kotlin.jvm.functions.Function2 r133, boolean r134, androidx.compose.ui.text.input.VisualTransformation r135, androidx.compose.foundation.text.KeyboardOptions r136, androidx.compose.foundation.text.KeyboardActions r137, boolean r138, int r139, int r140, androidx.compose.foundation.interaction.MutableInteractionSource r141, androidx.compose.ui.graphics.Shape r142, androidx.compose.material3.TextFieldColors r143, androidx.compose.runtime.Composer r144, final int r145, final int r146, final int r147, final int r148) {
        /*
            Method dump skipped, instructions count: 1477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    public static final void OutlinedTextFieldLayout(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> textField, final Function3<? super Modifier, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final Function2<? super Composer, ? super Integer, Unit> function25, final boolean z, final float f, final Function1<? super Size, Unit> onLabelMeasured, final Function2<? super Composer, ? super Integer, Unit> container, final Function2<? super Composer, ? super Integer, Unit> function26, final PaddingValues paddingValues, Composer composer, final int i, final int i2) {
        PaddingValues paddingValues2;
        int i3;
        int i4;
        float f2;
        float f3;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(textField, "textField");
        Intrinsics.checkNotNullParameter(onLabelMeasured, "onLabelMeasured");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Composer startRestartGroup = composer.startRestartGroup(1408290209);
        ComposerKt.sourceInformation(startRestartGroup, "C(OutlinedTextFieldLayout)P(4,12,7,2,3,13,8,10,9!1,5!1,11)518@25327L239,526@25614L7,527@25626L3534:OutlinedTextField.kt#uh7d8r");
        int i5 = (i & 14) == 0 ? (startRestartGroup.changed(modifier) ? 4 : 2) | i : i;
        if ((i & 112) == 0) {
            i5 |= startRestartGroup.changedInstance(textField) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i5 |= startRestartGroup.changedInstance(function3) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i5 |= startRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i5 |= startRestartGroup.changedInstance(function22) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i5 |= startRestartGroup.changedInstance(function23) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i5 |= startRestartGroup.changedInstance(function24) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i5 |= startRestartGroup.changedInstance(function25) ? 8388608 : 4194304;
        }
        if ((234881024 & i) == 0) {
            i5 |= startRestartGroup.changed(z) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((1879048192 & i) == 0) {
            i5 |= startRestartGroup.changed(f) ? 536870912 : 268435456;
        }
        int i6 = (i2 & 14) == 0 ? (startRestartGroup.changedInstance(onLabelMeasured) ? 4 : 2) | i2 : i2;
        if ((i2 & 112) == 0) {
            i6 |= startRestartGroup.changedInstance(container) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i6 |= startRestartGroup.changedInstance(function26) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            paddingValues2 = paddingValues;
            i6 |= startRestartGroup.changed(paddingValues2) ? 2048 : 1024;
        } else {
            paddingValues2 = paddingValues;
        }
        if ((i5 & 1533916891) != 306783378 || (i6 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1408290209, i5, i6, "androidx.compose.material3.OutlinedTextFieldLayout (OutlinedTextField.kt:502)");
            }
            Object[] objArr = {onLabelMeasured, Boolean.valueOf(z), Float.valueOf(f), paddingValues2};
            startRestartGroup.startReplaceableGroup(-568225417);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            int i7 = 0;
            boolean z2 = false;
            for (int i8 = 4; i7 < i8; i8 = 4) {
                z2 |= startRestartGroup.changed(objArr[i7]);
                i7++;
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z2 || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new OutlinedTextFieldMeasurePolicy(onLabelMeasured, z, f, paddingValues2);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = (OutlinedTextFieldMeasurePolicy) rememberedValue;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume;
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Layout)P(!1,2)73@2855L7,74@2910L7,75@2969L7,76@2981L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume2;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localLayoutDirection2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection2 = (LayoutDirection) consume3;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume4 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume4;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
            int i9 = ((((i5 << 3) & 112) << 9) & 7168) | 6;
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, outlinedTextFieldMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, Integer.valueOf((i9 >> 3) & 112));
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1116455022, "C530@25695L11,600@28180L228:OutlinedTextField.kt#uh7d8r");
            container.invoke(startRestartGroup, Integer.valueOf((i6 >> 3) & 14));
            startRestartGroup.startReplaceableGroup(1116455047);
            ComposerKt.sourceInformation(startRestartGroup, "533@25759L219");
            if (function22 != null) {
                Modifier then = LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.LeadingId).then(TextFieldImplKt.getIconDefaultSizeModifier());
                Alignment center = Alignment.INSTANCE.getCenter();
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, false, startRestartGroup, 6);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume5 = startRestartGroup.consume(localDensity2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density2 = (Density) consume5;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume6 = startRestartGroup.consume(localLayoutDirection3);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection3 = (LayoutDirection) consume6;
                i3 = i6;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume7 = startRestartGroup.consume(localViewConfiguration2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume7;
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(then);
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor2);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl2 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl2, layoutDirection3, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828313841, "C537@25951L9:OutlinedTextField.kt#uh7d8r");
                function22.invoke(startRestartGroup, Integer.valueOf((i5 >> 12) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            } else {
                i3 = i6;
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1116455332);
            ComposerKt.sourceInformation(startRestartGroup, "541@26045L221");
            if (function23 != null) {
                Modifier then2 = LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.TrailingId).then(TextFieldImplKt.getIconDefaultSizeModifier());
                Alignment center2 = Alignment.INSTANCE.getCenter();
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(center2, false, startRestartGroup, 6);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume8 = startRestartGroup.consume(localDensity3);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density3 = (Density) consume8;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection4 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume9 = startRestartGroup.consume(localLayoutDirection4);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection4 = (LayoutDirection) consume9;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration3 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume10 = startRestartGroup.consume(localViewConfiguration3);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) consume10;
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(then2);
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor3);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl3 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl3, rememberBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl3, density3, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl3, layoutDirection4, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl3, viewConfiguration3, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf3.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828313554, "C545@26238L10:OutlinedTextField.kt#uh7d8r");
                function23.invoke(startRestartGroup, Integer.valueOf((i5 >> 15) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            float calculateStartPadding = PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
            float calculateEndPadding = PaddingKt.calculateEndPadding(paddingValues, layoutDirection);
            if (function22 != null) {
                i4 = 0;
                calculateStartPadding = Dp.m4883constructorimpl(RangesKt.coerceAtLeast(Dp.m4883constructorimpl(calculateStartPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m4883constructorimpl(0)));
            } else {
                i4 = 0;
            }
            if (function23 != null) {
                calculateEndPadding = Dp.m4883constructorimpl(RangesKt.coerceAtLeast(Dp.m4883constructorimpl(calculateEndPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m4883constructorimpl(i4)));
            }
            startRestartGroup.startReplaceableGroup(1116456222);
            ComposerKt.sourceInformation(startRestartGroup, "564@26933L334");
            if (function24 != null) {
                Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.PrefixId), TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), calculateStartPadding, 0.0f, TextFieldImplKt.getPrefixSuffixTextPadding(), 0.0f, 10, null);
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy3 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity4 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume11 = startRestartGroup.consume(localDensity4);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density4 = (Density) consume11;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection5 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume12 = startRestartGroup.consume(localLayoutDirection5);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection5 = (LayoutDirection) consume12;
                f2 = calculateStartPadding;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration4 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume13 = startRestartGroup.consume(localViewConfiguration4);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) consume13;
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(m494paddingqDBjuR0$default);
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor4);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl4 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl4, rememberBoxMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl4, density4, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl4, layoutDirection5, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl4, viewConfiguration4, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf4.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828312551, "C571@27241L8:OutlinedTextField.kt#uh7d8r");
                function24.invoke(startRestartGroup, Integer.valueOf((i5 >> 18) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            } else {
                f2 = calculateStartPadding;
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1116456621);
            ComposerKt.sourceInformation(startRestartGroup, "575@27332L332");
            if (function25 != null) {
                Modifier m494paddingqDBjuR0$default2 = PaddingKt.m494paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.SuffixId), TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), TextFieldImplKt.getPrefixSuffixTextPadding(), 0.0f, calculateEndPadding, 0.0f, 10, null);
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy4 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity5 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume14 = startRestartGroup.consume(localDensity5);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density5 = (Density) consume14;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection6 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume15 = startRestartGroup.consume(localLayoutDirection6);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection6 = (LayoutDirection) consume15;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration5 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume16 = startRestartGroup.consume(localViewConfiguration5);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration5 = (ViewConfiguration) consume16;
                Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf5 = LayoutKt.materializerOf(m494paddingqDBjuR0$default2);
                f3 = calculateEndPadding;
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor5);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl5 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl5, rememberBoxMeasurePolicy4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl5, density5, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl5, layoutDirection6, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl5, viewConfiguration5, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf5.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828312154, "C582@27638L8:OutlinedTextField.kt#uh7d8r");
                function25.invoke(startRestartGroup, Integer.valueOf((i5 >> 21) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            } else {
                f3 = calculateEndPadding;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier m494paddingqDBjuR0$default3 = PaddingKt.m494paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(Modifier.INSTANCE, TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), function24 == null ? f2 : Dp.m4883constructorimpl(0), 0.0f, function25 == null ? f3 : Dp.m4883constructorimpl(0), 0.0f, 10, null);
            startRestartGroup.startReplaceableGroup(1116457331);
            ComposerKt.sourceInformation(startRestartGroup, "595@28047L105");
            if (function3 != null) {
                function3.invoke(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.PlaceholderId).then(m494paddingqDBjuR0$default3), startRestartGroup, Integer.valueOf((i5 >> 3) & 112));
            }
            startRestartGroup.endReplaceableGroup();
            Modifier then3 = LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.TextFieldId).then(m494paddingqDBjuR0$default3);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy5 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), true, startRestartGroup, 48);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity6 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume17 = startRestartGroup.consume(localDensity6);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density6 = (Density) consume17;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection7 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume18 = startRestartGroup.consume(localLayoutDirection7);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection7 = (LayoutDirection) consume18;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration6 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume19 = startRestartGroup.consume(localViewConfiguration6);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration6 = (ViewConfiguration) consume19;
            Function0<ComposeUiNode> constructor6 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf6 = LayoutKt.materializerOf(then3);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor6);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl6 = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl6, rememberBoxMeasurePolicy5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl6, density6, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl6, layoutDirection7, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl6, viewConfiguration6, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf6.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828311409, "C606@28383L11:OutlinedTextField.kt#uh7d8r");
            textField.invoke(startRestartGroup, Integer.valueOf((i5 >> 3) & 14));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1116457749);
            ComposerKt.sourceInformation(startRestartGroup, "610@28459L237");
            if (function2 != null) {
                Modifier layoutId = LayoutIdKt.layoutId(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(Modifier.INSTANCE, DpKt.m4926lerpMdfbLM(TextFieldImplKt.getMinTextLineHeight(), TextFieldImplKt.getMinFocusedLabelLineHeight(), f), 0.0f, 2, null), null, false, 3, null), TextFieldImplKt.LabelId);
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy6 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity7 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume20 = startRestartGroup.consume(localDensity7);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density7 = (Density) consume20;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection8 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume21 = startRestartGroup.consume(localLayoutDirection8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection8 = (LayoutDirection) consume21;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration7 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume22 = startRestartGroup.consume(localViewConfiguration7);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration7 = (ViewConfiguration) consume22;
                Function0<ComposeUiNode> constructor7 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf7 = LayoutKt.materializerOf(layoutId);
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor7);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl7 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl7, rememberBoxMeasurePolicy6, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl7, density7, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl7, layoutDirection8, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl7, viewConfiguration7, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf7.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828311105, "C614@28687L7:OutlinedTextField.kt#uh7d8r");
                function2.invoke(startRestartGroup, Integer.valueOf((i5 >> 9) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(-2058764510);
            ComposerKt.sourceInformation(startRestartGroup, "619@28822L269");
            if (function26 != null) {
                Modifier padding = PaddingKt.padding(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.SupportingId), TextFieldImplKt.getMinSupportingTextLineHeight(), 0.0f, 2, null), null, false, 3, null), TextFieldDefaults.m1528supportingTextPaddinga9UjIt4$material3_release$default(TextFieldDefaults.INSTANCE, 0.0f, 0.0f, 0.0f, 0.0f, 15, null));
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy7 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity8 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume23 = startRestartGroup.consume(localDensity8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density8 = (Density) consume23;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection9 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume24 = startRestartGroup.consume(localLayoutDirection9);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection9 = (LayoutDirection) consume24;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration8 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume25 = startRestartGroup.consume(localViewConfiguration8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration8 = (ViewConfiguration) consume25;
                Function0<ComposeUiNode> constructor8 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf8 = LayoutKt.materializerOf(padding);
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor8);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl8 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl8, rememberBoxMeasurePolicy7, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl8, density8, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl8, layoutDirection9, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl8, viewConfiguration8, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf8.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1828310715, "C624@29077L12:OutlinedTextField.kt#uh7d8r");
                function26.invoke(startRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextFieldLayout$2
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

            public final void invoke(Composer composer2, int i10) {
                OutlinedTextFieldKt.OutlinedTextFieldLayout(Modifier.this, textField, function3, function2, function22, function23, function24, function25, z, f, onLabelMeasured, container, function26, paddingValues, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateWidth-DHJA7U0, reason: not valid java name */
    public static final int m1336calculateWidthDHJA7U0(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, long j, float f, PaddingValues paddingValues) {
        int i8 = i3 + i4;
        return Math.max(i + Math.max(i5 + i8, Math.max(i7 + i8, z ? i6 : 0)) + i2, Math.max(z ? 0 : i6 + MathKt.roundToInt(Dp.m4883constructorimpl(paddingValues.mo441calculateLeftPaddingu2uoSUM(LayoutDirection.Ltr) + paddingValues.mo442calculateRightPaddingu2uoSUM(LayoutDirection.Ltr)) * f), Constraints.m4841getMinWidthimpl(j)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateHeight-DHJA7U0, reason: not valid java name */
    public static final int m1335calculateHeightDHJA7U0(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, float f, PaddingValues paddingValues) {
        return Math.max(Constraints.m4840getMinHeightimpl(j), ComparisonsKt.maxOf(i, i2, i3, i4, MathKt.roundToInt(Math.max(i5, i7) + (paddingValues.getBottom() * f) + Math.max(paddingValues.getTop() * f, i6 / 2.0f))) + i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void place(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, Placeable placeable9, float f, boolean z, float f2, LayoutDirection layoutDirection, PaddingValues paddingValues) {
        Placeable.PlacementScope.m3933place70tqf50$default(placementScope, placeable8, IntOffset.INSTANCE.m5011getZeronOccac(), 0.0f, 2, null);
        int heightOrZero = i - TextFieldImplKt.heightOrZero(placeable9);
        int roundToInt = MathKt.roundToInt(paddingValues.getTop() * f2);
        int roundToInt2 = MathKt.roundToInt(PaddingKt.calculateStartPadding(paddingValues, layoutDirection) * f2);
        float horizontalIconPadding = TextFieldImplKt.getHorizontalIconPadding() * f2;
        if (placeable != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, Alignment.INSTANCE.getCenterVertically().align(placeable.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i2 - placeable2.getWidth(), Alignment.INSTANCE.getCenterVertically().align(placeable2.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable6 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, MathKt.roundToInt(placeable == null ? 0.0f : (TextFieldImplKt.widthOrZero(placeable) - horizontalIconPadding) * (1 - f)) + roundToInt2, MathHelpersKt.lerp(z ? Alignment.INSTANCE.getCenterVertically().align(placeable6.getHeight(), heightOrZero) : roundToInt, -(placeable6.getHeight() / 2), f), 0.0f, 4, null);
        }
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, TextFieldImplKt.widthOrZero(placeable), place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable3), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, (i2 - TextFieldImplKt.widthOrZero(placeable2)) - placeable4.getWidth(), place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable4), 0.0f, 4, null);
        }
        int widthOrZero = TextFieldImplKt.widthOrZero(placeable) + TextFieldImplKt.widthOrZero(placeable3);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, widthOrZero, place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable5), 0.0f, 4, null);
        if (placeable7 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, widthOrZero, place$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6, placeable7), 0.0f, 4, null);
        }
        if (placeable9 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, 0, heightOrZero, 0.0f, 4, null);
        }
    }

    private static final int place$calculateVerticalPosition(boolean z, int i, int i2, Placeable placeable, Placeable placeable2) {
        if (z) {
            i2 = Alignment.INSTANCE.getCenterVertically().align(placeable2.getHeight(), i);
        }
        return Math.max(i2, TextFieldImplKt.heightOrZero(placeable) / 2);
    }

    /* renamed from: outlineCutout-12SF9DM, reason: not valid java name */
    public static final Modifier m1337outlineCutout12SF9DM(Modifier outlineCutout, final long j, final PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(outlineCutout, "$this$outlineCutout");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        return DrawModifierKt.drawWithContent(outlineCutout, new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt$outlineCutout$1

            /* compiled from: OutlinedTextField.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[LayoutDirection.values().length];
                    try {
                        iArr[LayoutDirection.Rtl.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                invoke2(contentDrawScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ContentDrawScope drawWithContent) {
                float f;
                float coerceAtLeast;
                Intrinsics.checkNotNullParameter(drawWithContent, "$this$drawWithContent");
                float m2469getWidthimpl = Size.m2469getWidthimpl(j);
                if (m2469getWidthimpl > 0.0f) {
                    f = OutlinedTextFieldKt.OutlinedTextFieldInnerPadding;
                    float f2 = drawWithContent.mo335toPx0680j_4(f);
                    float f3 = drawWithContent.mo335toPx0680j_4(paddingValues.mo441calculateLeftPaddingu2uoSUM(drawWithContent.getLayoutDirection())) - f2;
                    float f4 = 2;
                    float f5 = m2469getWidthimpl + f3 + (f2 * f4);
                    if (WhenMappings.$EnumSwitchMapping$0[drawWithContent.getLayoutDirection().ordinal()] == 1) {
                        coerceAtLeast = Size.m2469getWidthimpl(drawWithContent.mo3182getSizeNHjbRc()) - f5;
                    } else {
                        coerceAtLeast = RangesKt.coerceAtLeast(f3, 0.0f);
                    }
                    float f6 = coerceAtLeast;
                    if (WhenMappings.$EnumSwitchMapping$0[drawWithContent.getLayoutDirection().ordinal()] == 1) {
                        f5 = Size.m2469getWidthimpl(drawWithContent.mo3182getSizeNHjbRc()) - RangesKt.coerceAtLeast(f3, 0.0f);
                    }
                    float f7 = f5;
                    float m2466getHeightimpl = Size.m2466getHeightimpl(j);
                    float f8 = (-m2466getHeightimpl) / f4;
                    float f9 = m2466getHeightimpl / f4;
                    int m2627getDifferencertfAjoo = ClipOp.INSTANCE.m2627getDifferencertfAjoo();
                    DrawContext drawContext = drawWithContent.getDrawContext();
                    long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
                    drawContext.getCanvas().save();
                    drawContext.getTransform().mo3110clipRectN_I0leg(f6, f8, f7, f9, m2627getDifferencertfAjoo);
                    drawWithContent.drawContent();
                    drawContext.getCanvas().restore();
                    drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
                    return;
                }
                drawWithContent.drawContent();
            }
        });
    }
}
