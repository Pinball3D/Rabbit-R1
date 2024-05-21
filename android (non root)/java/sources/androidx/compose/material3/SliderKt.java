package androidx.compose.material3;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.GestureCancellationException;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Slider.kt */
@Metadata(d1 = {"\u0000ª\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u001aä\u0001\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0018\u0010\u0019\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0018\u0012\u0004\u0012\u00020\u00160\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00012\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020$2\u0019\b\u0002\u0010&\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\u0019\b\u0002\u0010)\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\u0019\b\u0002\u0010*\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u0010-\u001a\u007f\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0018\u0010\u0019\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0018\u0012\u0004\u0012\u00020\u00160\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00012\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\b\b\u0002\u0010+\u001a\u00020,2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\b\b\u0002\u0010!\u001a\u00020\"H\u0007¢\u0006\u0002\u0010.\u001aÈ\u0001\u0010/\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0018\u0010\u0019\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0018\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\b\b\u0002\u0010+\u001a\u00020,2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\u0017\u0010)\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\u0017\u0010*\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(H\u0003¢\u0006\u0002\u00100\u001a³\u0001\u00101\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\b2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00160\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00012\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00102\u001a\u00020$2\u0019\b\u0002\u00103\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\u0019\b\u0002\u0010*\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\b\b\u0002\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\u00104\u001a}\u00101\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\b2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00160\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00012\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\b\b\u0002\u0010+\u001a\u00020,2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00102\u001a\u00020$H\u0007¢\u0006\u0002\u00105\u001a\u0099\u0001\u00106\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00102\u001a\u00020$2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00160\u001a2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\u0006\u0010+\u001a\u00020,2\u0006\u0010\u0017\u001a\u00020\b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0017\u00103\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(2\u0017\u0010*\u001a\u0013\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00160\u001a¢\u0006\u0002\b(H\u0003¢\u0006\u0002\u00107\u001a1\u00108\u001a\u00020\u00162\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\b2\u0006\u0010<\u001a\u00020\b2\u0006\u0010=\u001a\u00020\bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010>\u001a \u0010?\u001a\u00020\b2\u0006\u0010@\u001a\u00020\b2\u0006\u0010A\u001a\u00020\b2\u0006\u0010B\u001a\u00020\bH\u0002\u001a0\u0010C\u001a\u00020\b2\u0006\u0010D\u001a\u00020\b2\u0006\u0010E\u001a\u00020\b2\u0006\u0010F\u001a\u00020\b2\u0006\u0010G\u001a\u00020\b2\u0006\u0010H\u001a\u00020\bH\u0002\u001a<\u0010C\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0006\u0010D\u001a\u00020\b2\u0006\u0010E\u001a\u00020\b2\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0006\u0010G\u001a\u00020\b2\u0006\u0010H\u001a\u00020\bH\u0002\u001a(\u0010J\u001a\u00020\b2\u0006\u0010;\u001a\u00020\b2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020\b2\u0006\u0010N\u001a\u00020\bH\u0002\u001a\u0010\u0010O\u001a\u00020L2\u0006\u0010+\u001a\u00020,H\u0002\u001a;\u0010P\u001a\u0010\u0012\u0004\u0012\u00020R\u0012\u0004\u0012\u00020\b\u0018\u00010Q*\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020WH\u0082@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\bX\u0010Y\u001a\u0098\u0001\u0010Z\u001a\u00020\u0001*\u00020\u00012\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\b0\\2\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\b0\\2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010^\u001a\u00020\u001d2\u0006\u0010N\u001a\u00020,2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\u0018\u0010_\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00160\u001a0\\2\u001e\u0010`\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00160a0\\H\u0002\u001a\\\u0010b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00160\u001a2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u00182\b\b\u0002\u0010+\u001a\u00020,H\u0002\u001ad\u0010c\u001a\u00020\u0001*\u00020\u00012\u0006\u00109\u001a\u00020:2\u0006\u00102\u001a\u00020$2\u0006\u0010N\u001a\u00020,2\u0006\u0010^\u001a\u00020\u001d2\f\u0010d\u001a\b\u0012\u0004\u0012\u00020\b0\\2\u0012\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160 0\\2\f\u0010e\u001a\b\u0012\u0004\u0012\u00020\b0f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\f\u001a\u00020\rX\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u000e\"\u0019\u0010\u000f\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0010\u0010\u0011\"\u0013\u0010\u0012\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0019\u0010\u0013\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0014\u0010\u0011\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006g"}, d2 = {"DefaultSliderConstraints", "Landroidx/compose/ui/Modifier;", "SliderHeight", "Landroidx/compose/ui/unit/Dp;", "F", "SliderMinWidth", "SliderToTickAnimation", "Landroidx/compose/animation/core/TweenSpec;", "", "ThumbDefaultElevation", "ThumbHeight", "ThumbPressedElevation", "ThumbSize", "Landroidx/compose/ui/unit/DpSize;", "J", "ThumbWidth", "getThumbWidth", "()F", "TickSize", "TrackHeight", "getTrackHeight", "RangeSlider", "", "value", "Lkotlin/ranges/ClosedFloatingPointRange;", "onValueChange", "Lkotlin/Function1;", "modifier", "enabled", "", "valueRange", "onValueChangeFinished", "Lkotlin/Function0;", "colors", "Landroidx/compose/material3/SliderColors;", "startInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "endInteractionSource", "startThumb", "Landroidx/compose/material3/SliderPositions;", "Landroidx/compose/runtime/Composable;", "endThumb", "track", "steps", "", "(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;III)V", "(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/Composer;II)V", "RangeSliderImpl", "(Landroidx/compose/ui/Modifier;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "Slider", "interactionSource", "thumb", "(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;III)V", "(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "SliderImpl", "(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;IFLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V", "animateToTarget", "draggableState", "Landroidx/compose/foundation/gestures/DraggableState;", SentryThread.JsonKeys.CURRENT, "target", "velocity", "(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "calcFraction", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "pos", "scale", "a1", "b1", "x1", "a2", "b2", ViewHierarchyNode.JsonKeys.X, "snapValueToTick", "tickFractions", "", "minPx", "maxPx", "stepsToTickFractions", "awaitSlop", "Lkotlin/Pair;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "id", "Landroidx/compose/ui/input/pointer/PointerId;", "type", "Landroidx/compose/ui/input/pointer/PointerType;", "awaitSlop-8vUncbI", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "rangeSliderPressDragModifier", "rawOffsetStart", "Landroidx/compose/runtime/State;", "rawOffsetEnd", "isRtl", "gestureEndAction", "onDrag", "Lkotlin/Function2;", "sliderSemantics", "sliderTapModifier", "rawOffset", "pressOffset", "Landroidx/compose/runtime/MutableState;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SliderKt {
    private static final Modifier DefaultSliderConstraints;
    private static final float SliderHeight;
    private static final float SliderMinWidth;
    private static final TweenSpec<Float> SliderToTickAnimation;
    private static final float ThumbDefaultElevation;
    private static final float ThumbHeight;
    private static final float ThumbPressedElevation;
    private static final long ThumbSize;
    private static final float ThumbWidth;
    private static final float TickSize;
    private static final float TrackHeight;

    public static final float getThumbWidth() {
        return ThumbWidth;
    }

    public static final float getTrackHeight() {
        return TrackHeight;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Slider(final float r42, final kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r43, androidx.compose.ui.Modifier r44, boolean r45, kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r46, int r47, kotlin.jvm.functions.Function0<kotlin.Unit> r48, androidx.compose.material3.SliderColors r49, androidx.compose.foundation.interaction.MutableInteractionSource r50, androidx.compose.runtime.Composer r51, final int r52, final int r53) {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderKt.Slider(float, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, kotlin.ranges.ClosedFloatingPointRange, int, kotlin.jvm.functions.Function0, androidx.compose.material3.SliderColors, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Slider(final float r45, final kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r46, androidx.compose.ui.Modifier r47, boolean r48, kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r49, kotlin.jvm.functions.Function0<kotlin.Unit> r50, androidx.compose.material3.SliderColors r51, androidx.compose.foundation.interaction.MutableInteractionSource r52, kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r53, kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r54, int r55, androidx.compose.runtime.Composer r56, final int r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderKt.Slider(float, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, kotlin.ranges.ClosedFloatingPointRange, kotlin.jvm.functions.Function0, androidx.compose.material3.SliderColors, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function3, int, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RangeSlider(final kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r42, final kotlin.jvm.functions.Function1<? super kotlin.ranges.ClosedFloatingPointRange<java.lang.Float>, kotlin.Unit> r43, androidx.compose.ui.Modifier r44, boolean r45, kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r46, int r47, kotlin.jvm.functions.Function0<kotlin.Unit> r48, androidx.compose.material3.SliderColors r49, androidx.compose.runtime.Composer r50, final int r51, final int r52) {
        /*
            Method dump skipped, instructions count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderKt.RangeSlider(kotlin.ranges.ClosedFloatingPointRange, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, kotlin.ranges.ClosedFloatingPointRange, int, kotlin.jvm.functions.Function0, androidx.compose.material3.SliderColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RangeSlider(final kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r46, final kotlin.jvm.functions.Function1<? super kotlin.ranges.ClosedFloatingPointRange<java.lang.Float>, kotlin.Unit> r47, androidx.compose.ui.Modifier r48, boolean r49, kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r50, kotlin.jvm.functions.Function0<kotlin.Unit> r51, androidx.compose.material3.SliderColors r52, androidx.compose.foundation.interaction.MutableInteractionSource r53, androidx.compose.foundation.interaction.MutableInteractionSource r54, kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r55, kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r56, kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r57, int r58, androidx.compose.runtime.Composer r59, final int r60, final int r61, final int r62) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderKt.RangeSlider(kotlin.ranges.ClosedFloatingPointRange, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, kotlin.ranges.ClosedFloatingPointRange, kotlin.jvm.functions.Function0, androidx.compose.material3.SliderColors, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function3, int, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void SliderImpl(final Modifier modifier, final boolean z, final MutableInteractionSource mutableInteractionSource, final Function1<? super Float, Unit> function1, final Function0<Unit> function0, final int i, final float f, final ClosedFloatingPointRange<Float> closedFloatingPointRange, final Function3<? super SliderPositions, ? super Composer, ? super Integer, Unit> function3, final Function3<? super SliderPositions, ? super Composer, ? super Integer, Unit> function32, Composer composer, final int i2) {
        int i3;
        int i4;
        boolean z2;
        String str;
        float f2;
        String str2;
        float f3;
        int i5;
        MutableState mutableState;
        Composer composer2;
        SliderPositions sliderPositions;
        Modifier draggable;
        Composer composer3;
        Composer startRestartGroup = composer.startRestartGroup(851260148);
        ComposerKt.sourceInformation(startRestartGroup, "C(SliderImpl)P(2!5,8,9)493@22061L74,493@22023L112,499@22161L59,503@22243L45,504@22310L30,512@22682L7,513@22733L57,514@22813L31,518@23040L77,524@23249L492,535@23770L217,558@24427L40,563@24569L2021:Slider.kt#uh7d8r");
        if ((i2 & 14) == 0) {
            i3 = (startRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 112) == 0) {
            i3 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i3 |= startRestartGroup.changed(mutableInteractionSource) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            i3 |= startRestartGroup.changedInstance(function1) ? 2048 : 1024;
        }
        if ((57344 & i2) == 0) {
            i3 |= startRestartGroup.changedInstance(function0) ? 16384 : 8192;
        }
        if ((458752 & i2) == 0) {
            i3 |= startRestartGroup.changed(i) ? 131072 : 65536;
        }
        if ((3670016 & i2) == 0) {
            i3 |= startRestartGroup.changed(f) ? 1048576 : 524288;
        }
        if ((29360128 & i2) == 0) {
            i3 |= startRestartGroup.changed(closedFloatingPointRange) ? 8388608 : 4194304;
        }
        if ((234881024 & i2) == 0) {
            i3 |= startRestartGroup.changedInstance(function3) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((1879048192 & i2) == 0) {
            i3 |= startRestartGroup.changedInstance(function32) ? 536870912 : 268435456;
        }
        int i6 = i3;
        if ((1533916891 & i6) != 306783378 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(851260148, i6, -1, "androidx.compose.material3.SliderImpl (Slider.kt:481)");
            }
            Float valueOf = Float.valueOf(f);
            startRestartGroup.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(valueOf) | startRestartGroup.changed(function1);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function1) new Function1<Float, Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$onValueChangeState$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f4) {
                        invoke(f4.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(float f4) {
                        if (f4 == f) {
                            return;
                        }
                        function1.invoke(Float.valueOf(f4));
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(rememberedValue, startRestartGroup, 0);
            Integer valueOf2 = Integer.valueOf(i);
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(valueOf2);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = stepsToTickFractions(i);
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            final float[] fArr = (float[]) rememberedValue2;
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                rememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(getThumbWidth()), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            final MutableState mutableState2 = (MutableState) rememberedValue3;
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue4 = startRestartGroup.rememberedValue();
            if (rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                rememberedValue4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue4);
            }
            startRestartGroup.endReplaceableGroup();
            final MutableState mutableState3 = (MutableState) rememberedValue4;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            if (consume == LayoutDirection.Rtl) {
                z2 = true;
                i4 = -492369756;
            } else {
                i4 = -492369756;
                z2 = false;
            }
            startRestartGroup.startReplaceableGroup(i4);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue5 = startRestartGroup.rememberedValue();
            if (rememberedValue5 == Composer.INSTANCE.getEmpty()) {
                rememberedValue5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(SliderImpl$scaleToOffset(closedFloatingPointRange, 0.0f, 0.0f, f)), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue5);
            }
            startRestartGroup.endReplaceableGroup();
            final MutableState mutableState4 = (MutableState) rememberedValue5;
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue6 = startRestartGroup.rememberedValue();
            if (rememberedValue6 == Composer.INSTANCE.getEmpty()) {
                str = "CC:CompositionLocal.kt#9igjgp";
                rememberedValue6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(0.0f), null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue6);
            } else {
                str = "CC:CompositionLocal.kt#9igjgp";
            }
            startRestartGroup.endReplaceableGroup();
            final MutableState mutableState5 = (MutableState) rememberedValue6;
            float calcFraction = calcFraction(closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue(), RangesKt.coerceIn(f, closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue()));
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue7 = startRestartGroup.rememberedValue();
            if (rememberedValue7 == Composer.INSTANCE.getEmpty()) {
                f2 = 0.0f;
                rememberedValue7 = new SliderPositions(RangesKt.rangeTo(0.0f, calcFraction), fArr);
                startRestartGroup.updateRememberedValue(rememberedValue7);
            } else {
                f2 = 0.0f;
            }
            startRestartGroup.endReplaceableGroup();
            SliderPositions sliderPositions2 = (SliderPositions) rememberedValue7;
            sliderPositions2.setActiveRange$material3_release(RangesKt.rangeTo(f2, calcFraction));
            sliderPositions2.setTickFractions$material3_release(fArr);
            int i7 = i6 >> 21;
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed3 = startRestartGroup.changed(closedFloatingPointRange);
            Object rememberedValue8 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue8 == Composer.INSTANCE.getEmpty()) {
                str2 = "CC(remember)P(1):Composables.kt#9igjgp";
                f3 = calcFraction;
                i5 = i6;
                mutableState = mutableState2;
                composer2 = startRestartGroup;
                sliderPositions = sliderPositions2;
                SliderDraggableState sliderDraggableState = new SliderDraggableState(new Function1<Float, Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$draggableState$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f4) {
                        invoke(f4.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(float f4) {
                        float snapValueToTick;
                        float SliderImpl$scaleToUserValue;
                        float f5 = 2;
                        float max = Math.max(mutableState3.getValue().floatValue() - (mutableState2.getValue().floatValue() / f5), 0.0f);
                        float min = Math.min(mutableState2.getValue().floatValue() / f5, max);
                        MutableState<Float> mutableState6 = mutableState4;
                        mutableState6.setValue(Float.valueOf(mutableState6.getValue().floatValue() + f4 + mutableState5.getValue().floatValue()));
                        mutableState5.setValue(Float.valueOf(0.0f));
                        snapValueToTick = SliderKt.snapValueToTick(mutableState4.getValue().floatValue(), fArr, min, max);
                        Function1<Float, Unit> value = rememberUpdatedState.getValue();
                        SliderImpl$scaleToUserValue = SliderKt.SliderImpl$scaleToUserValue(closedFloatingPointRange, min, max, snapValueToTick);
                        value.invoke(Float.valueOf(SliderImpl$scaleToUserValue));
                    }
                });
                composer2.updateRememberedValue(sliderDraggableState);
                rememberedValue8 = sliderDraggableState;
            } else {
                str2 = "CC(remember)P(1):Composables.kt#9igjgp";
                i5 = i6;
                mutableState = mutableState2;
                composer2 = startRestartGroup;
                sliderPositions = sliderPositions2;
                f3 = calcFraction;
            }
            composer2.endReplaceableGroup();
            final SliderDraggableState sliderDraggableState2 = (SliderDraggableState) rememberedValue8;
            State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(new Function0<Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$gestureEndAction$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Function0<Unit> function02;
                    if (SliderDraggableState.this.isDragging() || (function02 = function0) == null) {
                        return;
                    }
                    function02.invoke();
                }
            }, composer2, 0);
            SliderDraggableState sliderDraggableState3 = sliderDraggableState2;
            Modifier sliderTapModifier = sliderTapModifier(Modifier.INSTANCE, sliderDraggableState3, mutableInteractionSource, ((Number) mutableState3.getValue()).intValue(), z2, mutableState4, rememberUpdatedState2, mutableState5, z);
            Modifier.Companion companion = Modifier.INSTANCE;
            Orientation orientation = Orientation.Horizontal;
            boolean isDragging = sliderDraggableState2.isDragging();
            Modifier.Companion companion2 = companion;
            composer2.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(composer2, str2);
            boolean changed4 = composer2.changed(rememberUpdatedState2);
            Object rememberedValue9 = composer2.rememberedValue();
            if (changed4 || rememberedValue9 == Composer.INSTANCE.getEmpty()) {
                rememberedValue9 = (Function3) new SliderKt$SliderImpl$drag$1$1(rememberUpdatedState2, null);
                composer2.updateRememberedValue(rememberedValue9);
            }
            composer2.endReplaceableGroup();
            draggable = DraggableKt.draggable(companion2, sliderDraggableState3, orientation, (r20 & 4) != 0 ? true : z, (r20 & 8) != 0 ? null : mutableInteractionSource, (r20 & 16) != 0 ? false : isDragging, (r20 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (r20 & 64) != 0 ? new DraggableKt$draggable$2(null) : (Function3) rememberedValue9, (r20 & 128) != 0 ? false : z2);
            composer3 = composer2;
            Modifier then = FocusableKt.focusable(sliderSemantics(SizeKt.m533requiredSizeInqDBjuR0$default(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier), SliderTokens.INSTANCE.m2125getHandleWidthD9Ej5fM(), SliderTokens.INSTANCE.m2124getHandleHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), f, z, function1, function0, closedFloatingPointRange, i), z, mutableInteractionSource).then(sliderTapModifier).then(draggable);
            final float f4 = f3;
            final MutableState mutableState6 = mutableState;
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material3.SliderKt$SliderImpl$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo21measure3p2s80s(MeasureScope Layout, List<? extends Measurable> measurables, long j) {
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (LayoutIdKt.getLayoutId(measurable) == SliderComponents.THUMB) {
                            final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
                            for (Measurable measurable2 : list) {
                                if (LayoutIdKt.getLayoutId(measurable2) == SliderComponents.TRACK) {
                                    final Placeable mo3876measureBRTryo02 = measurable2.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(ConstraintsKt.m4856offsetNN6EwU$default(j, -mo3876measureBRTryo0.getWidth(), 0, 2, null), 0, 0, 0, 0, 11, null));
                                    int width = mo3876measureBRTryo02.getWidth() + mo3876measureBRTryo0.getWidth();
                                    int max = Math.max(mo3876measureBRTryo02.getHeight(), mo3876measureBRTryo0.getHeight());
                                    mutableState6.setValue(Float.valueOf(mo3876measureBRTryo0.getWidth()));
                                    mutableState3.setValue(Integer.valueOf(width));
                                    final int width2 = mo3876measureBRTryo0.getWidth() / 2;
                                    final int roundToInt = MathKt.roundToInt(mo3876measureBRTryo02.getWidth() * f4);
                                    final int height = (max - mo3876measureBRTryo02.getHeight()) / 2;
                                    final int height2 = (max - mo3876measureBRTryo0.getHeight()) / 2;
                                    return MeasureScope.layout$default(Layout, width, max, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$2$measure$1
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
                                            Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, width2, height, 0.0f, 4, null);
                                            Placeable.PlacementScope.placeRelative$default(layout, mo3876measureBRTryo0, roundToInt, height2, 0.0f, 4, null);
                                        }
                                    }, 4, null);
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(composer3, "CC(Layout)P(!1,2)73@2855L7,74@2910L7,75@2969L7,76@2981L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            String str3 = str;
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, str3);
            Object consume2 = composer3.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            Density density = (Density) consume2;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, str3);
            Object consume3 = composer3.consume(localLayoutDirection2);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            LayoutDirection layoutDirection = (LayoutDirection) consume3;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, str3);
            Object consume4 = composer3.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume4;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(then);
            if (!(composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer3.startReusableNode();
            if (composer3.getInserting()) {
                composer3.createNode(constructor);
            } else {
                composer3.useNode();
            }
            Composer m2273constructorimpl = Updater.m2273constructorimpl(composer3);
            Updater.m2280setimpl(m2273constructorimpl, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
            composer3.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(composer3, 1541256180, "C565@24599L84,566@24696L84:Slider.kt#uh7d8r");
            Modifier layoutId = LayoutIdKt.layoutId(Modifier.INSTANCE, SliderComponents.THUMB);
            composer3.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(composer3, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer3, 0);
            composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume5 = composer3.consume(localDensity2);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            Density density2 = (Density) consume5;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume6 = composer3.consume(localLayoutDirection3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            LayoutDirection layoutDirection2 = (LayoutDirection) consume6;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume7 = composer3.consume(localViewConfiguration2);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume7;
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(layoutId);
            if (!(composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer3.startReusableNode();
            if (composer3.getInserting()) {
                composer3.createNode(constructor2);
            } else {
                composer3.useNode();
            }
            composer3.disableReusing();
            Composer m2273constructorimpl2 = Updater.m2273constructorimpl(composer3);
            Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            composer3.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
            composer3.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(composer3, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer3, -1819487535, "C565@24659L22:Slider.kt#uh7d8r");
            SliderPositions sliderPositions3 = sliderPositions;
            function3.invoke(sliderPositions3, composer3, Integer.valueOf((i7 & 112) | 6));
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            composer3.endReplaceableGroup();
            composer3.endNode();
            composer3.endReplaceableGroup();
            composer3.endReplaceableGroup();
            Modifier layoutId2 = LayoutIdKt.layoutId(Modifier.INSTANCE, SliderComponents.TRACK);
            composer3.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(composer3, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer3, 0);
            composer3.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume8 = composer3.consume(localDensity3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            Density density3 = (Density) consume8;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection4 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume9 = composer3.consume(localLayoutDirection4);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            LayoutDirection layoutDirection3 = (LayoutDirection) consume9;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration3 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume10 = composer3.consume(localViewConfiguration3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) consume10;
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(layoutId2);
            if (!(composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer3.startReusableNode();
            if (composer3.getInserting()) {
                composer3.createNode(constructor3);
            } else {
                composer3.useNode();
            }
            composer3.disableReusing();
            Composer m2273constructorimpl3 = Updater.m2273constructorimpl(composer3);
            Updater.m2280setimpl(m2273constructorimpl3, rememberBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl3, density3, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl3, layoutDirection3, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl3, viewConfiguration3, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            composer3.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
            composer3.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(composer3, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer3, -1819487438, "C566@24756L22:Slider.kt#uh7d8r");
            function32.invoke(sliderPositions3, composer3, Integer.valueOf(((i5 >> 24) & 112) | 6));
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            composer3.endReplaceableGroup();
            composer3.endNode();
            composer3.endReplaceableGroup();
            composer3.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(composer3);
            composer3.endReplaceableGroup();
            composer3.endNode();
            composer3.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer3 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer3.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                invoke(composer4, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer4, int i8) {
                SliderKt.SliderImpl(Modifier.this, z, mutableInteractionSource, function1, function0, i, f, closedFloatingPointRange, function3, function32, composer4, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float SliderImpl$scaleToUserValue(ClosedFloatingPointRange<Float> closedFloatingPointRange, float f, float f2, float f3) {
        return scale(f, f2, f3, closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float SliderImpl$scaleToOffset(ClosedFloatingPointRange<Float> closedFloatingPointRange, float f, float f2, float f3) {
        return scale(closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue(), f3, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01bd, code lost:
    
        if (r5 == androidx.compose.runtime.Composer.INSTANCE.getEmpty()) goto L145;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x06e6  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0782  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0813  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x081f  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0910  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x091c  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x09a9  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0920  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0823  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x06ea  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x09b5  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0494  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RangeSliderImpl(final androidx.compose.ui.Modifier r35, final kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r36, final kotlin.jvm.functions.Function1<? super kotlin.ranges.ClosedFloatingPointRange<java.lang.Float>, kotlin.Unit> r37, final boolean r38, final kotlin.ranges.ClosedFloatingPointRange<java.lang.Float> r39, int r40, final kotlin.jvm.functions.Function0<kotlin.Unit> r41, final androidx.compose.foundation.interaction.MutableInteractionSource r42, final androidx.compose.foundation.interaction.MutableInteractionSource r43, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.SliderPositions, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r46, androidx.compose.runtime.Composer r47, final int r48, final int r49, final int r50) {
        /*
            Method dump skipped, instructions count: 2532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderKt.RangeSliderImpl(androidx.compose.ui.Modifier, kotlin.ranges.ClosedFloatingPointRange, kotlin.jvm.functions.Function1, boolean, kotlin.ranges.ClosedFloatingPointRange, int, kotlin.jvm.functions.Function0, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float RangeSliderImpl$lambda$25(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void RangeSliderImpl$lambda$26(MutableState<Float> mutableState, float f) {
        mutableState.setValue(Float.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float RangeSliderImpl$lambda$28(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void RangeSliderImpl$lambda$29(MutableState<Float> mutableState, float f) {
        mutableState.setValue(Float.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int RangeSliderImpl$lambda$31(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void RangeSliderImpl$lambda$32(MutableState<Integer> mutableState, int i) {
        mutableState.setValue(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClosedFloatingPointRange<Float> RangeSliderImpl$scaleToUserValue$33(ClosedFloatingPointRange<Float> closedFloatingPointRange, float f, float f2, ClosedFloatingPointRange<Float> closedFloatingPointRange2) {
        return scale(f, f2, closedFloatingPointRange2, closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float RangeSliderImpl$scaleToOffset$34(ClosedFloatingPointRange<Float> closedFloatingPointRange, float f, float f2, float f3) {
        return scale(closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue(), f3, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* renamed from: awaitSlop-8vUncbI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1394awaitSlop8vUncbI(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, long r9, int r11, kotlin.coroutines.Continuation<? super kotlin.Pair<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float>> r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.material3.SliderKt$awaitSlop$1
            if (r0 == 0) goto L14
            r0 = r12
            androidx.compose.material3.SliderKt$awaitSlop$1 r0 = (androidx.compose.material3.SliderKt$awaitSlop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            androidx.compose.material3.SliderKt$awaitSlop$1 r0 = new androidx.compose.material3.SliderKt$awaitSlop$1
            r0.<init>(r12)
        L19:
            r6 = r0
            java.lang.Object r12 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r8 = r6.L$0
            kotlin.jvm.internal.Ref$FloatRef r8 = (kotlin.jvm.internal.Ref.FloatRef) r8
            kotlin.ResultKt.throwOnFailure(r12)
            goto L58
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.jvm.internal.Ref$FloatRef r12 = new kotlin.jvm.internal.Ref$FloatRef
            r12.<init>()
            androidx.compose.material3.SliderKt$awaitSlop$postPointerSlop$1 r1 = new androidx.compose.material3.SliderKt$awaitSlop$postPointerSlop$1
            r1.<init>()
            r5 = r1
            kotlin.jvm.functions.Function2 r5 = (kotlin.jvm.functions.Function2) r5
            r6.L$0 = r12
            r6.label = r2
            r1 = r8
            r2 = r9
            r4 = r11
            java.lang.Object r8 = androidx.compose.material3.DragGestureDetectorCopyKt.m1187awaitHorizontalPointerSlopOrCancellationgDDlDlE(r1, r2, r4, r5, r6)
            if (r8 != r0) goto L55
            return r0
        L55:
            r7 = r12
            r12 = r8
            r8 = r7
        L58:
            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
            if (r12 == 0) goto L67
            float r8 = r8.element
            java.lang.Float r8 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r8)
            kotlin.Pair r8 = kotlin.TuplesKt.to(r12, r8)
            goto L68
        L67:
            r8 = 0
        L68:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderKt.m1394awaitSlop8vUncbI(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float[] stepsToTickFractions(int i) {
        if (i == 0) {
            return new float[0];
        }
        int i2 = i + 2;
        float[] fArr = new float[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            fArr[i3] = i3 / (i + 1);
        }
        return fArr;
    }

    private static final float scale(float f, float f2, float f3, float f4, float f5) {
        return MathHelpersKt.lerp(f4, f5, calcFraction(f, f2, f3));
    }

    private static final ClosedFloatingPointRange<Float> scale(float f, float f2, ClosedFloatingPointRange<Float> closedFloatingPointRange, float f3, float f4) {
        return RangesKt.rangeTo(scale(f, f2, closedFloatingPointRange.getStart().floatValue(), f3, f4), scale(f, f2, closedFloatingPointRange.getEndInclusive().floatValue(), f3, f4));
    }

    private static final float calcFraction(float f, float f2, float f3) {
        float f4 = f2 - f;
        return RangesKt.coerceIn(f4 == 0.0f ? 0.0f : (f3 - f) / f4, 0.0f, 1.0f);
    }

    static /* synthetic */ Modifier sliderSemantics$default(Modifier modifier, float f, boolean z, Function1 function1, Function0 function0, ClosedFloatingPointRange closedFloatingPointRange, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            function0 = null;
        }
        Function0 function02 = function0;
        if ((i2 & 16) != 0) {
            closedFloatingPointRange = RangesKt.rangeTo(0.0f, 1.0f);
        }
        ClosedFloatingPointRange closedFloatingPointRange2 = closedFloatingPointRange;
        if ((i2 & 32) != 0) {
            i = 0;
        }
        return sliderSemantics(modifier, f, z, function1, function02, closedFloatingPointRange2, i);
    }

    private static final Modifier sliderSemantics(Modifier modifier, float f, final boolean z, final Function1<? super Float, Unit> function1, final Function0<Unit> function0, final ClosedFloatingPointRange<Float> closedFloatingPointRange, final int i) {
        final float coerceIn = RangesKt.coerceIn(f, closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue());
        return ProgressSemanticsKt.progressSemantics(SemanticsModifierKt.semantics$default(modifier, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt$sliderSemantics$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                if (!z) {
                    SemanticsPropertiesKt.disabled(semantics);
                }
                final ClosedFloatingPointRange<Float> closedFloatingPointRange2 = closedFloatingPointRange;
                final int i2 = i;
                final float f2 = coerceIn;
                final Function1<Float, Unit> function12 = function1;
                final Function0<Unit> function02 = function0;
                SemanticsPropertiesKt.setProgress$default(semantics, null, new Function1<Float, Boolean>() { // from class: androidx.compose.material3.SliderKt$sliderSemantics$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Float f3) {
                        return invoke(f3.floatValue());
                    }

                    public final Boolean invoke(float f3) {
                        int i3;
                        float coerceIn2 = RangesKt.coerceIn(f3, closedFloatingPointRange2.getStart().floatValue(), closedFloatingPointRange2.getEndInclusive().floatValue());
                        int i4 = i2;
                        boolean z2 = false;
                        if (i4 > 0 && (i3 = i4 + 1) >= 0) {
                            float f4 = coerceIn2;
                            float f5 = f4;
                            int i5 = 0;
                            while (true) {
                                float lerp = MathHelpersKt.lerp(closedFloatingPointRange2.getStart().floatValue(), closedFloatingPointRange2.getEndInclusive().floatValue(), i5 / (i2 + 1));
                                float f6 = lerp - coerceIn2;
                                if (Math.abs(f6) <= f4) {
                                    f4 = Math.abs(f6);
                                    f5 = lerp;
                                }
                                if (i5 == i3) {
                                    break;
                                }
                                i5++;
                            }
                            coerceIn2 = f5;
                        }
                        if (coerceIn2 != f2) {
                            function12.invoke(Float.valueOf(coerceIn2));
                            Function0<Unit> function03 = function02;
                            if (function03 != null) {
                                function03.invoke();
                            }
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    }
                }, 1, null);
            }
        }, 1, null), f, closedFloatingPointRange, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object animateToTarget(DraggableState draggableState, float f, float f2, float f3, Continuation<? super Unit> continuation) {
        Object drag$default = DraggableState.drag$default(draggableState, null, new SliderKt$animateToTarget$2(f, f2, f3, null), continuation, 1, null);
        return drag$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? drag$default : Unit.INSTANCE;
    }

    private static final Modifier rangeSliderPressDragModifier(Modifier modifier, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, State<Float> state, State<Float> state2, boolean z, boolean z2, int i, ClosedFloatingPointRange<Float> closedFloatingPointRange, State<? extends Function1<? super Boolean, Unit>> state3, State<? extends Function2<? super Boolean, ? super Float, Unit>> state4) {
        return z ? SuspendingPointerInputFilterKt.pointerInput(modifier, new Object[]{mutableInteractionSource, mutableInteractionSource2, Integer.valueOf(i), Boolean.valueOf(z2), closedFloatingPointRange}, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) new SliderKt$rangeSliderPressDragModifier$1(mutableInteractionSource, mutableInteractionSource2, state, state2, state4, z2, i, state3, null)) : modifier;
    }

    static {
        float m2125getHandleWidthD9Ej5fM = SliderTokens.INSTANCE.m2125getHandleWidthD9Ej5fM();
        ThumbWidth = m2125getHandleWidthD9Ej5fM;
        float m2124getHandleHeightD9Ej5fM = SliderTokens.INSTANCE.m2124getHandleHeightD9Ej5fM();
        ThumbHeight = m2124getHandleHeightD9Ej5fM;
        ThumbSize = DpKt.m4905DpSizeYgX7TsA(m2125getHandleWidthD9Ej5fM, m2124getHandleHeightD9Ej5fM);
        ThumbDefaultElevation = Dp.m4883constructorimpl(1);
        ThumbPressedElevation = Dp.m4883constructorimpl(6);
        TickSize = SliderTokens.INSTANCE.m2131getTickMarksContainerSizeD9Ej5fM();
        TrackHeight = SliderTokens.INSTANCE.m2126getInactiveTrackHeightD9Ej5fM();
        float m4883constructorimpl = Dp.m4883constructorimpl(48);
        SliderHeight = m4883constructorimpl;
        float m4883constructorimpl2 = Dp.m4883constructorimpl(144);
        SliderMinWidth = m4883constructorimpl2;
        DefaultSliderConstraints = SizeKt.m525heightInVpY3zN4$default(SizeKt.m544widthInVpY3zN4$default(Modifier.INSTANCE, m4883constructorimpl2, 0.0f, 2, null), 0.0f, m4883constructorimpl, 1, null);
        SliderToTickAnimation = new TweenSpec<>(100, 0, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator] */
    public static final float snapValueToTick(float f, float[] fArr, float f2, float f3) {
        Float valueOf;
        if (fArr.length == 0) {
            valueOf = null;
        } else {
            float f4 = fArr[0];
            int lastIndex = ArraysKt.getLastIndex(fArr);
            if (lastIndex != 0) {
                float abs = Math.abs(MathHelpersKt.lerp(f2, f3, f4) - f);
                ?? it = new IntRange(1, lastIndex).iterator();
                while (it.hasNext()) {
                    float f5 = fArr[it.nextInt()];
                    float abs2 = Math.abs(MathHelpersKt.lerp(f2, f3, f5) - f);
                    if (Float.compare(abs, abs2) > 0) {
                        f4 = f5;
                        abs = abs2;
                    }
                }
                valueOf = Float.valueOf(f4);
            } else {
                valueOf = Float.valueOf(f4);
            }
        }
        return valueOf != null ? MathHelpersKt.lerp(f2, f3, valueOf.floatValue()) : f;
    }

    private static final Modifier sliderTapModifier(Modifier modifier, final DraggableState draggableState, final MutableInteractionSource mutableInteractionSource, final int i, final boolean z, final State<Float> state, final State<? extends Function0<Unit>> state2, final MutableState<Float> mutableState, final boolean z2) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material3.SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("sliderTapModifier");
                inspectorInfo.getProperties().set("draggableState", DraggableState.this);
                inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                inspectorInfo.getProperties().set("maxPx", Integer.valueOf(i));
                inspectorInfo.getProperties().set("isRtl", Boolean.valueOf(z));
                inspectorInfo.getProperties().set("rawOffset", state);
                inspectorInfo.getProperties().set("gestureEndAction", state2);
                inspectorInfo.getProperties().set("pressOffset", mutableState);
                inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z2));
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material3.SliderKt$sliderTapModifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i2) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(2040469710);
                ComposerKt.sourceInformation(composer, "C1173@48923L24:Slider.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2040469710, i2, -1, "androidx.compose.material3.sliderTapModifier.<anonymous> (Slider.kt:1171)");
                }
                if (z2) {
                    composer.startReplaceableGroup(773894976);
                    ComposerKt.sourceInformation(composer, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp");
                    composer.startReplaceableGroup(-492369756);
                    ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
                    Object rememberedValue = composer.rememberedValue();
                    if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composer));
                        composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                        rememberedValue = compositionScopedCoroutineScopeCanceller;
                    }
                    composer.endReplaceableGroup();
                    CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                    composer.endReplaceableGroup();
                    composed = SuspendingPointerInputFilterKt.pointerInput(composed, new Object[]{draggableState, mutableInteractionSource, Integer.valueOf(i), Boolean.valueOf(z)}, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass1(z, i, mutableState, state, coroutineScope, draggableState, state2, null));
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return composed;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Slider.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$2$1", f = "Slider.kt", i = {}, l = {1176}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$2$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ DraggableState $draggableState;
                final /* synthetic */ State<Function0<Unit>> $gestureEndAction;
                final /* synthetic */ boolean $isRtl;
                final /* synthetic */ int $maxPx;
                final /* synthetic */ MutableState<Float> $pressOffset;
                final /* synthetic */ State<Float> $rawOffset;
                final /* synthetic */ CoroutineScope $scope;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass1(boolean z, int i, MutableState<Float> mutableState, State<Float> state, CoroutineScope coroutineScope, DraggableState draggableState, State<? extends Function0<Unit>> state2, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$isRtl = z;
                    this.$maxPx = i;
                    this.$pressOffset = mutableState;
                    this.$rawOffset = state;
                    this.$scope = coroutineScope;
                    this.$draggableState = draggableState;
                    this.$gestureEndAction = state2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, this.$scope, this.$draggableState, this.$gestureEndAction, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Slider.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$2$1$1", f = "Slider.kt", i = {}, l = {1181}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$2$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C00351 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                    final /* synthetic */ boolean $isRtl;
                    final /* synthetic */ int $maxPx;
                    final /* synthetic */ MutableState<Float> $pressOffset;
                    final /* synthetic */ State<Float> $rawOffset;
                    /* synthetic */ long J$0;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00351(boolean z, int i, MutableState<Float> mutableState, State<Float> state, Continuation<? super C00351> continuation) {
                        super(3, continuation);
                        this.$isRtl = z;
                        this.$maxPx = i;
                        this.$pressOffset = mutableState;
                        this.$rawOffset = state;
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, Continuation<? super Unit> continuation) {
                        return m1395invoked4ec7I(pressGestureScope, offset.getPackedValue(), continuation);
                    }

                    /* renamed from: invoke-d-4ec7I, reason: not valid java name */
                    public final Object m1395invoked4ec7I(PressGestureScope pressGestureScope, long j, Continuation<? super Unit> continuation) {
                        C00351 c00351 = new C00351(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, continuation);
                        c00351.L$0 = pressGestureScope;
                        c00351.J$0 = j;
                        return c00351.invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r5v8 */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        try {
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                                long j = this.J$0;
                                this.$pressOffset.setValue(Boxing.boxFloat((this.$isRtl ? this.$maxPx - Offset.m2400getXimpl(j) : Offset.m2400getXimpl(j)) - this.$rawOffset.getValue().floatValue()));
                                this.label = 1;
                                Object awaitRelease = pressGestureScope.awaitRelease(this);
                                this = awaitRelease;
                                if (awaitRelease == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                if (i != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj);
                                this = this;
                            }
                        } catch (GestureCancellationException unused) {
                            this.$pressOffset.setValue(Boxing.boxFloat(0.0f));
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                        C00351 c00351 = new C00351(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, null);
                        final CoroutineScope coroutineScope = this.$scope;
                        final DraggableState draggableState = this.$draggableState;
                        final State<Function0<Unit>> state = this.$gestureEndAction;
                        this.label = 1;
                        if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, c00351, new Function1<Offset, Unit>() { // from class: androidx.compose.material3.SliderKt.sliderTapModifier.2.1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                                m1396invokek4lQ0M(offset.getPackedValue());
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                            public final void m1396invokek4lQ0M(long j) {
                                BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new C00361(draggableState, state, null), 3, null);
                            }

                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* compiled from: Slider.kt */
                            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$2$1$2$1", f = "Slider.kt", i = {}, l = {1188}, m = "invokeSuspend", n = {}, s = {})
                            /* renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$2$1$2$1, reason: invalid class name and collision with other inner class name */
                            /* loaded from: classes.dex */
                            public static final class C00361 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                final /* synthetic */ DraggableState $draggableState;
                                final /* synthetic */ State<Function0<Unit>> $gestureEndAction;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                C00361(DraggableState draggableState, State<? extends Function0<Unit>> state, Continuation<? super C00361> continuation) {
                                    super(2, continuation);
                                    this.$draggableState = draggableState;
                                    this.$gestureEndAction = state;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                    return new C00361(this.$draggableState, this.$gestureEndAction, continuation);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                    return ((C00361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                }

                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* compiled from: Slider.kt */
                                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                                @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$2$1$2$1$1", f = "Slider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                                /* renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$2$1$2$1$1, reason: invalid class name and collision with other inner class name */
                                /* loaded from: classes.dex */
                                public static final class C00371 extends SuspendLambda implements Function2<DragScope, Continuation<? super Unit>, Object> {
                                    private /* synthetic */ Object L$0;
                                    int label;

                                    C00371(Continuation<? super C00371> continuation) {
                                        super(2, continuation);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                        C00371 c00371 = new C00371(continuation);
                                        c00371.L$0 = obj;
                                        return c00371;
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(DragScope dragScope, Continuation<? super Unit> continuation) {
                                        return ((C00371) create(dragScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object obj) {
                                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                        if (this.label == 0) {
                                            ResultKt.throwOnFailure(obj);
                                            ((DragScope) this.L$0).dragBy(0.0f);
                                            return Unit.INSTANCE;
                                        }
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                    int i = this.label;
                                    if (i == 0) {
                                        ResultKt.throwOnFailure(obj);
                                        this.label = 1;
                                        if (this.$draggableState.drag(MutatePriority.UserInput, new C00371(null), this) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                    } else {
                                        if (i != 1) {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        ResultKt.throwOnFailure(obj);
                                    }
                                    this.$gestureEndAction.getValue().invoke();
                                    return Unit.INSTANCE;
                                }
                            }
                        }, this, 3, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }
        });
    }
}
