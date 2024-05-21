package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
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
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
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

/* compiled from: TextField.kt */
@Metadata(d1 = {"\u0000¢\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u001aÖ\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u000e2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u000e2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020)2\b\b\u0002\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u0010,\u001a¨\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u000e2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u000e2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020)2\b\b\u0002\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u0010-\u001aÖ\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020.2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u000e2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u000e2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020)2\b\b\u0002\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u0010/\u001a¨\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020.2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0015\b\u0002\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\b\b\u0002\u0010\u001b\u001a\u00020\u000e2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u000e2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020)2\b\b\u0002\u0010*\u001a\u00020+H\u0007¢\u0006\u0002\u00100\u001aì\u0001\u00101\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0011\u00102\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013¢\u0006\u0002\b\u00142\u0013\u0010\u0012\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0019\u0010\u0015\u001a\u0015\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n¢\u0006\u0002\b\u00142\u0013\u00103\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0013\u00104\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0013\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0013\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0006\u0010\"\u001a\u00020\u000e2\u0006\u00105\u001a\u0002062\u0011\u00107\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013¢\u0006\u0002\b\u00142\u0013\u00108\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013¢\u0006\u0002\b\u00142\u0006\u00109\u001a\u00020:H\u0001¢\u0006\u0002\u0010;\u001au\u0010<\u001a\u00020$2\u0006\u0010=\u001a\u00020$2\u0006\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020$2\u0006\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020$2\u0006\u0010B\u001a\u00020$2\u0006\u0010C\u001a\u00020$2\u0006\u0010D\u001a\u00020$2\u0006\u0010E\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u0002062\u0006\u00109\u001a\u00020:H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bI\u0010J\u001aU\u0010K\u001a\u00020$2\u0006\u0010L\u001a\u00020$2\u0006\u0010M\u001a\u00020$2\u0006\u0010N\u001a\u00020$2\u0006\u0010O\u001a\u00020$2\u0006\u0010P\u001a\u00020$2\u0006\u0010Q\u001a\u00020$2\u0006\u0010R\u001a\u00020$2\u0006\u0010F\u001a\u00020GH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bS\u0010T\u001a\u0014\u0010U\u001a\u00020\f*\u00020\f2\u0006\u0010V\u001a\u00020WH\u0000\u001a\u009a\u0001\u0010X\u001a\u00020\u0006*\u00020Y2\u0006\u0010Z\u001a\u00020$2\u0006\u0010[\u001a\u00020$2\u0006\u0010\\\u001a\u00020]2\b\u0010^\u001a\u0004\u0018\u00010]2\b\u0010_\u001a\u0004\u0018\u00010]2\b\u0010`\u001a\u0004\u0018\u00010]2\b\u0010a\u001a\u0004\u0018\u00010]2\b\u0010b\u001a\u0004\u0018\u00010]2\b\u0010c\u001a\u0004\u0018\u00010]2\u0006\u0010d\u001a\u00020]2\b\u0010e\u001a\u0004\u0018\u00010]2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010f\u001a\u00020$2\u0006\u0010g\u001a\u00020$2\u0006\u00105\u001a\u0002062\u0006\u0010H\u001a\u000206H\u0002\u001a\u0080\u0001\u0010h\u001a\u00020\u0006*\u00020Y2\u0006\u0010Z\u001a\u00020$2\u0006\u0010[\u001a\u00020$2\u0006\u0010i\u001a\u00020]2\b\u0010_\u001a\u0004\u0018\u00010]2\b\u0010`\u001a\u0004\u0018\u00010]2\b\u0010a\u001a\u0004\u0018\u00010]2\b\u0010b\u001a\u0004\u0018\u00010]2\b\u0010c\u001a\u0004\u0018\u00010]2\u0006\u0010d\u001a\u00020]2\b\u0010e\u001a\u0004\u0018\u00010]2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010H\u001a\u0002062\u0006\u00109\u001a\u00020:H\u0002\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0002\u0010\u0003\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006j"}, d2 = {"TextFieldWithLabelVerticalPadding", "Landroidx/compose/ui/unit/Dp;", "getTextFieldWithLabelVerticalPadding", "()F", "F", TextFieldImplKt.TextFieldId, "", "value", "Landroidx/compose/ui/text/input/TextFieldValue;", "onValueChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "readOnly", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "label", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "isError", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "keyboardOptions", "Landroidx/compose/foundation/text/KeyboardOptions;", "keyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "singleLine", "maxLines", "", "minLines", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/TextFieldColors;", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V", "TextFieldLayout", "textField", "leading", "trailing", "animationProgress", "", "container", "supporting", "paddingValues", "Landroidx/compose/foundation/layout/PaddingValues;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V", "calculateHeight", "textFieldHeight", "labelHeight", "leadingHeight", "trailingHeight", "prefixHeight", "suffixHeight", "placeholderHeight", "supportingHeight", "isLabelFocused", "constraints", "Landroidx/compose/ui/unit/Constraints;", "density", "calculateHeight-mKXJcVc", "(IIIIIIIIZJFLandroidx/compose/foundation/layout/PaddingValues;)I", "calculateWidth", "leadingWidth", "trailingWidth", "prefixWidth", "suffixWidth", "textFieldWidth", "labelWidth", "placeholderWidth", "calculateWidth-yeHjK3Y", "(IIIIIIIJ)I", "drawIndicatorLine", "indicatorBorder", "Landroidx/compose/foundation/BorderStroke;", "placeWithLabel", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", ViewHierarchyNode.JsonKeys.WIDTH, "totalHeight", "textfieldPlaceable", "Landroidx/compose/ui/layout/Placeable;", "labelPlaceable", "placeholderPlaceable", "leadingPlaceable", "trailingPlaceable", "prefixPlaceable", "suffixPlaceable", "containerPlaceable", "supportingPlaceable", "labelEndPosition", "textPosition", "placeWithoutLabel", "textPlaceable", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldKt {
    private static final float TextFieldWithLabelVerticalPadding = Dp.m4883constructorimpl(8);

    public static final float getTextFieldWithLabelVerticalPadding() {
        return TextFieldWithLabelVerticalPadding;
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
    public static final void TextField(final java.lang.String r120, final kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r121, androidx.compose.ui.Modifier r122, boolean r123, boolean r124, androidx.compose.ui.text.TextStyle r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r131, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r132, boolean r133, androidx.compose.ui.text.input.VisualTransformation r134, androidx.compose.foundation.text.KeyboardOptions r135, androidx.compose.foundation.text.KeyboardActions r136, boolean r137, int r138, int r139, androidx.compose.foundation.interaction.MutableInteractionSource r140, androidx.compose.ui.graphics.Shape r141, androidx.compose.material3.TextFieldColors r142, androidx.compose.runtime.Composer r143, final int r144, final int r145, final int r146, final int r147) {
        /*
            Method dump skipped, instructions count: 1763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldKt.TextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
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
    public static final void TextField(final androidx.compose.ui.text.input.TextFieldValue r120, final kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.TextFieldValue, kotlin.Unit> r121, androidx.compose.ui.Modifier r122, boolean r123, boolean r124, androidx.compose.ui.text.TextStyle r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r131, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r132, boolean r133, androidx.compose.ui.text.input.VisualTransformation r134, androidx.compose.foundation.text.KeyboardOptions r135, androidx.compose.foundation.text.KeyboardActions r136, boolean r137, int r138, int r139, androidx.compose.foundation.interaction.MutableInteractionSource r140, androidx.compose.ui.graphics.Shape r141, androidx.compose.material3.TextFieldColors r142, androidx.compose.runtime.Composer r143, final int r144, final int r145, final int r146, final int r147) {
        /*
            Method dump skipped, instructions count: 1763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldKt.TextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
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
    public static final /* synthetic */ void TextField(final java.lang.String r123, final kotlin.jvm.functions.Function1 r124, androidx.compose.ui.Modifier r125, boolean r126, boolean r127, androidx.compose.ui.text.TextStyle r128, kotlin.jvm.functions.Function2 r129, kotlin.jvm.functions.Function2 r130, kotlin.jvm.functions.Function2 r131, kotlin.jvm.functions.Function2 r132, kotlin.jvm.functions.Function2 r133, boolean r134, androidx.compose.ui.text.input.VisualTransformation r135, androidx.compose.foundation.text.KeyboardOptions r136, androidx.compose.foundation.text.KeyboardActions r137, boolean r138, int r139, int r140, androidx.compose.foundation.interaction.MutableInteractionSource r141, androidx.compose.ui.graphics.Shape r142, androidx.compose.material3.TextFieldColors r143, androidx.compose.runtime.Composer r144, final int r145, final int r146, final int r147, final int r148) {
        /*
            Method dump skipped, instructions count: 1477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldKt.TextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
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
    public static final /* synthetic */ void TextField(final androidx.compose.ui.text.input.TextFieldValue r123, final kotlin.jvm.functions.Function1 r124, androidx.compose.ui.Modifier r125, boolean r126, boolean r127, androidx.compose.ui.text.TextStyle r128, kotlin.jvm.functions.Function2 r129, kotlin.jvm.functions.Function2 r130, kotlin.jvm.functions.Function2 r131, kotlin.jvm.functions.Function2 r132, kotlin.jvm.functions.Function2 r133, boolean r134, androidx.compose.ui.text.input.VisualTransformation r135, androidx.compose.foundation.text.KeyboardOptions r136, androidx.compose.foundation.text.KeyboardActions r137, boolean r138, int r139, int r140, androidx.compose.foundation.interaction.MutableInteractionSource r141, androidx.compose.ui.graphics.Shape r142, androidx.compose.material3.TextFieldColors r143, androidx.compose.runtime.Composer r144, final int r145, final int r146, final int r147, final int r148) {
        /*
            Method dump skipped, instructions count: 1477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldKt.TextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    public static final void TextFieldLayout(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> textField, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super Modifier, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final Function2<? super Composer, ? super Integer, Unit> function25, final boolean z, final float f, final Function2<? super Composer, ? super Integer, Unit> container, final Function2<? super Composer, ? super Integer, Unit> function26, final PaddingValues paddingValues, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        PaddingValues paddingValues2;
        int i5;
        int i6;
        float f2;
        float f3;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(textField, "textField");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Composer startRestartGroup = composer.startRestartGroup(-1830307184);
        ComposerKt.sourceInformation(startRestartGroup, "C(TextFieldLayout)P(4,11,2,6,3,12,7,9,8!2,10)512@24588L139,515@24775L7,516@24787L3994:TextField.kt#uh7d8r");
        if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 112) == 0) {
            i3 |= startRestartGroup.changedInstance(textField) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changedInstance(function3) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function22) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function23) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function24) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function25) ? 8388608 : 4194304;
        }
        if ((234881024 & i) == 0) {
            i3 |= startRestartGroup.changed(z) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((1879048192 & i) == 0) {
            i3 |= startRestartGroup.changed(f) ? 536870912 : 268435456;
        }
        if ((i2 & 14) == 0) {
            i4 = i2 | (startRestartGroup.changedInstance(container) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 112) == 0) {
            i4 |= startRestartGroup.changedInstance(function26) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            paddingValues2 = paddingValues;
            i4 |= startRestartGroup.changed(paddingValues2) ? 256 : 128;
        } else {
            paddingValues2 = paddingValues;
        }
        if ((i3 & 1533916891) != 306783378 || (i4 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1830307184, i3, i4, "androidx.compose.material3.TextFieldLayout (TextField.kt:497)");
            }
            Boolean valueOf = Boolean.valueOf(z);
            Float valueOf2 = Float.valueOf(f);
            startRestartGroup.startReplaceableGroup(1618982084);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(valueOf) | startRestartGroup.changed(valueOf2) | startRestartGroup.changed(paddingValues2);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new TextFieldMeasurePolicy(z, f, paddingValues2);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            TextFieldMeasurePolicy textFieldMeasurePolicy = (TextFieldMeasurePolicy) rememberedValue;
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
            int i7 = ((((i3 << 3) & 112) << 9) & 7168) | 6;
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
            Updater.m2280setimpl(m2273constructorimpl, textFieldMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, Integer.valueOf((i7 >> 3) & 112));
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -95272033, "C522@25106L11,605@28102L229:TextField.kt#uh7d8r");
            container.invoke(startRestartGroup, Integer.valueOf(i4 & 14));
            startRestartGroup.startReplaceableGroup(-95272008);
            ComposerKt.sourceInformation(startRestartGroup, "525@25170L269");
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
                i5 = i4;
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219124082, "C531@25412L9:TextField.kt#uh7d8r");
                function22.invoke(startRestartGroup, Integer.valueOf((i3 >> 12) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            } else {
                i5 = i4;
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(-95271673);
            ComposerKt.sourceInformation(startRestartGroup, "535@25506L271");
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219124419, "C541@25749L10:TextField.kt#uh7d8r");
                function23.invoke(startRestartGroup, Integer.valueOf((i3 >> 15) & 14));
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
                i6 = 0;
                calculateStartPadding = Dp.m4883constructorimpl(RangesKt.coerceAtLeast(Dp.m4883constructorimpl(calculateStartPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m4883constructorimpl(0)));
            } else {
                i6 = 0;
            }
            if (function23 != null) {
                calculateEndPadding = Dp.m4883constructorimpl(RangesKt.coerceAtLeast(Dp.m4883constructorimpl(calculateEndPadding - TextFieldImplKt.getHorizontalIconPadding()), Dp.m4883constructorimpl(i6)));
            }
            startRestartGroup.startReplaceableGroup(-95270733);
            ComposerKt.sourceInformation(startRestartGroup, "560@26444L334");
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219125422, "C567@26752L8:TextField.kt#uh7d8r");
                function24.invoke(startRestartGroup, Integer.valueOf((i3 >> 18) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(-95270334);
            ComposerKt.sourceInformation(startRestartGroup, "571@26843L332");
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219125819, "C578@27149L8:TextField.kt#uh7d8r");
                function25.invoke(startRestartGroup, Integer.valueOf((i3 >> 21) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(-95269936);
            ComposerKt.sourceInformation(startRestartGroup, "583@27240L347");
            if (function2 != null) {
                f3 = calculateStartPadding;
                Modifier m494paddingqDBjuR0$default3 = PaddingKt.m494paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.LabelId), DpKt.m4926lerpMdfbLM(TextFieldImplKt.getMinTextLineHeight(), TextFieldImplKt.getMinFocusedLabelLineHeight(), f), 0.0f, 2, null), null, false, 3, null), f3, 0.0f, calculateEndPadding, 0.0f, 10, null);
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy5 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
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
                f2 = calculateEndPadding;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration6 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume19 = startRestartGroup.consume(localViewConfiguration6);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration6 = (ViewConfiguration) consume19;
                Function0<ComposeUiNode> constructor6 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf6 = LayoutKt.materializerOf(m494paddingqDBjuR0$default3);
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219126248, "C589@27578L7:TextField.kt#uh7d8r");
                function2.invoke(startRestartGroup, Integer.valueOf((i3 >> 6) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            } else {
                f2 = calculateEndPadding;
                f3 = calculateStartPadding;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier m494paddingqDBjuR0$default4 = PaddingKt.m494paddingqDBjuR0$default(SizeKt.wrapContentHeight$default(SizeKt.m525heightInVpY3zN4$default(Modifier.INSTANCE, TextFieldImplKt.getMinTextLineHeight(), 0.0f, 2, null), null, false, 3, null), function24 == null ? f3 : Dp.m4883constructorimpl(0), 0.0f, function25 == null ? f2 : Dp.m4883constructorimpl(0), 0.0f, 10, null);
            startRestartGroup.startReplaceableGroup(-95269212);
            ComposerKt.sourceInformation(startRestartGroup, "601@27970L105");
            if (function3 != null) {
                function3.invoke(LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.PlaceholderId).then(m494paddingqDBjuR0$default4), startRestartGroup, Integer.valueOf((i3 >> 6) & 112));
            }
            startRestartGroup.endReplaceableGroup();
            Modifier then3 = LayoutIdKt.layoutId(Modifier.INSTANCE, TextFieldImplKt.TextFieldId).then(m494paddingqDBjuR0$default4);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy6 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), true, startRestartGroup, 48);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf7 = LayoutKt.materializerOf(then3);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219126976, "C611@28306L11:TextField.kt#uh7d8r");
            textField.invoke(startRestartGroup, Integer.valueOf((i3 >> 3) & 14));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(243142693);
            ComposerKt.sourceInformation(startRestartGroup, "616@28443L269");
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1219127368, "C621@28698L12:TextField.kt#uh7d8r");
                function26.invoke(startRestartGroup, Integer.valueOf((i5 >> 3) & 14));
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TextFieldKt$TextFieldLayout$2
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

            public final void invoke(Composer composer2, int i8) {
                TextFieldKt.TextFieldLayout(Modifier.this, textField, function2, function3, function22, function23, function24, function25, z, f, container, function26, paddingValues, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateWidth-yeHjK3Y, reason: not valid java name */
    public static final int m1559calculateWidthyeHjK3Y(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
        int i8 = i3 + i4;
        return Math.max(i + Math.max(i5 + i8, Math.max(i7 + i8, i6)) + i2, Constraints.m4841getMinWidthimpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateHeight-mKXJcVc, reason: not valid java name */
    public static final int m1558calculateHeightmKXJcVc(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, long j, float f, PaddingValues paddingValues) {
        float m4883constructorimpl;
        int max;
        boolean z2 = i2 > 0;
        if (!z2 || z) {
            m4883constructorimpl = Dp.m4883constructorimpl(paddingValues.getTop() + paddingValues.getBottom());
        } else {
            m4883constructorimpl = Dp.m4883constructorimpl(TextFieldImplKt.getTextFieldPadding() * 2);
        }
        float f2 = f * m4883constructorimpl;
        if (z2 && z) {
            f2 += i2;
            max = Math.max(i, i7);
        } else {
            max = Math.max(i2, Math.max(i, i7));
        }
        return Math.max(Constraints.m4840getMinHeightimpl(j), ComparisonsKt.maxOf(i3, i4, i5, i6, MathKt.roundToInt(f2 + max)) + i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeWithLabel(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, Placeable placeable9, boolean z, int i3, int i4, float f, float f2) {
        int roundToInt;
        Placeable.PlacementScope.m3933place70tqf50$default(placementScope, placeable8, IntOffset.INSTANCE.m5011getZeronOccac(), 0.0f, 2, null);
        int heightOrZero = i2 - TextFieldImplKt.heightOrZero(placeable9);
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, 0, Alignment.INSTANCE.getCenterVertically().align(placeable4.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable5 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, i - placeable5.getWidth(), Alignment.INSTANCE.getCenterVertically().align(placeable5.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            if (z) {
                roundToInt = Alignment.INSTANCE.getCenterVertically().align(placeable2.getHeight(), heightOrZero);
            } else {
                roundToInt = MathKt.roundToInt(TextFieldImplKt.getTextFieldPadding() * f2);
            }
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, TextFieldImplKt.widthOrZero(placeable4), roundToInt - MathKt.roundToInt((roundToInt - i3) * f), 0.0f, 4, null);
        }
        if (placeable6 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, TextFieldImplKt.widthOrZero(placeable4), i4, 0.0f, 4, null);
        }
        if (placeable7 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, (i - TextFieldImplKt.widthOrZero(placeable5)) - placeable7.getWidth(), i4, 0.0f, 4, null);
        }
        int widthOrZero = TextFieldImplKt.widthOrZero(placeable4) + TextFieldImplKt.widthOrZero(placeable6);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, widthOrZero, i4, 0.0f, 4, null);
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, widthOrZero, i4, 0.0f, 4, null);
        }
        if (placeable9 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, 0, heightOrZero, 0.0f, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeWithoutLabel(Placeable.PlacementScope placementScope, int i, int i2, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, Placeable placeable7, Placeable placeable8, boolean z, float f, PaddingValues paddingValues) {
        Placeable.PlacementScope.m3933place70tqf50$default(placementScope, placeable7, IntOffset.INSTANCE.m5011getZeronOccac(), 0.0f, 2, null);
        int heightOrZero = i2 - TextFieldImplKt.heightOrZero(placeable8);
        int roundToInt = MathKt.roundToInt(paddingValues.getTop() * f);
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, 0, Alignment.INSTANCE.getCenterVertically().align(placeable3.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i - placeable4.getWidth(), Alignment.INSTANCE.getCenterVertically().align(placeable4.getHeight(), heightOrZero), 0.0f, 4, null);
        }
        if (placeable5 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, TextFieldImplKt.widthOrZero(placeable3), placeWithoutLabel$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable5), 0.0f, 4, null);
        }
        if (placeable6 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, (i - TextFieldImplKt.widthOrZero(placeable4)) - placeable6.getWidth(), placeWithoutLabel$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable6), 0.0f, 4, null);
        }
        int widthOrZero = TextFieldImplKt.widthOrZero(placeable3) + TextFieldImplKt.widthOrZero(placeable5);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, widthOrZero, placeWithoutLabel$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable), 0.0f, 4, null);
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, widthOrZero, placeWithoutLabel$calculateVerticalPosition(z, heightOrZero, roundToInt, placeable2), 0.0f, 4, null);
        }
        if (placeable8 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable8, 0, heightOrZero, 0.0f, 4, null);
        }
    }

    private static final int placeWithoutLabel$calculateVerticalPosition(boolean z, int i, int i2, Placeable placeable) {
        return z ? Alignment.INSTANCE.getCenterVertically().align(placeable.getHeight(), i) : i2;
    }

    public static final Modifier drawIndicatorLine(Modifier modifier, final BorderStroke indicatorBorder) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(indicatorBorder, "indicatorBorder");
        final float width = indicatorBorder.getWidth();
        return DrawModifierKt.drawWithContent(modifier, new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material3.TextFieldKt$drawIndicatorLine$1
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
                Intrinsics.checkNotNullParameter(drawWithContent, "$this$drawWithContent");
                drawWithContent.drawContent();
                if (Dp.m4888equalsimpl0(width, Dp.INSTANCE.m4901getHairlineD9Ej5fM())) {
                    return;
                }
                float density = width * drawWithContent.getDensity();
                float m2466getHeightimpl = Size.m2466getHeightimpl(drawWithContent.mo3182getSizeNHjbRc()) - (density / 2);
                DrawScope.m3168drawLine1RTmtNc$default(drawWithContent, indicatorBorder.getBrush(), OffsetKt.Offset(0.0f, m2466getHeightimpl), OffsetKt.Offset(Size.m2469getWidthimpl(drawWithContent.mo3182getSizeNHjbRc()), m2466getHeightimpl), density, 0, null, 0.0f, null, 0, 496, null);
            }
        });
    }
}
