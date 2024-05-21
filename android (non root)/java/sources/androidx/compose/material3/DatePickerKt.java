package androidx.compose.material3;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemInfo;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.KeyboardArrowLeftKt;
import androidx.compose.material.icons.filled.KeyboardArrowRightKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import io.sentry.protocol.SentryThread;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: DatePicker.kt */
@Metadata(d1 = {"\u0000¼\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0087\u0001\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0013\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0013\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0013\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00032\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\u0081\u0001\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010'\u001a\u00020(2\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0*2\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\b\b\u0002\u0010-\u001a\u00020,2\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0007¢\u0006\u0002\u0010.\u001a9\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u0002012\u0006\u0010'\u001a\u00020(2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0*2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u00102\u001a]\u00103\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0013\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u00020\u00032\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b8\u00109\u001an\u0010:\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010;\u001a\u00020,2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010=\u001a\u00020,2\u0006\u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020,2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020B2\u0006\u0010\u001c\u001a\u00020\u001d2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0003¢\u0006\u0002\u0010C\u001a9\u0010D\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010E\u001a\u00020F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020\u00140*H\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bH\u0010I\u001ad\u0010J\u001a\u00020\u00142!\u0010K\u001a\u001d\u0012\u0013\u0012\u00110+¢\u0006\f\bL\u0012\b\bM\u0012\u0004\b\b(N\u0012\u0004\u0012\u00020\u00140*2\u0006\u00100\u001a\u0002012\u0006\u0010O\u001a\u00020P2\u0006\u0010'\u001a\u00020(2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0*2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u0010Q\u001at\u0010R\u001a\u00020\u00142\u0006\u0010S\u001a\u00020T2!\u0010K\u001a\u001d\u0012\u0013\u0012\u00110+¢\u0006\f\bL\u0012\b\bM\u0012\u0004\b\b(N\u0012\u0004\u0012\u00020\u00140*2\u0006\u0010?\u001a\u00020U2\u0006\u00100\u001a\u0002012\u0006\u0010V\u001a\u00020,2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0*2\u0006\u0010'\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001¢\u0006\u0002\u0010W\u001a_\u0010X\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020,2\u0006\u0010Z\u001a\u00020,2\u0006\u0010[\u001a\u00020,2\u0006\u0010\\\u001a\u00020B2\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\f\u0010^\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\f\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00140\u0018H\u0003¢\u0006\u0002\u0010`\u001a9\u0010a\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0*2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u0010b\u001a\u001d\u0010c\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010d\u001a\u00020eH\u0001¢\u0006\u0002\u0010f\u001aV\u0010g\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010;\u001a\u00020,2\u0006\u0010h\u001a\u00020,2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010A\u001a\u00020B2\u0006\u0010\u001c\u001a\u00020\u001d2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0003¢\u0006\u0002\u0010i\u001aH\u0010j\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162!\u0010k\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\bL\u0012\b\bM\u0012\u0004\b\b(l\u0012\u0004\u0012\u00020\u00140*2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00100\u001a\u000201H\u0003¢\u0006\u0002\u0010m\u001a@\u0010n\u001a\u00020\u00142\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010o\u001a\u00020,2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0003¢\u0006\u0002\u0010p\u001a.\u0010q\u001a\b\u0012\u0004\u0012\u00020s0r2\u0006\u0010%\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020B2\u0006\u0010x\u001a\u00020BH\u0002\u001a7\u0010y\u001a\u0004\u0018\u00010B2\u0006\u0010V\u001a\u00020,2\u0006\u0010z\u001a\u00020,2\u0006\u0010{\u001a\u00020,2\u0006\u0010|\u001a\u00020,2\u0006\u0010}\u001a\u00020,H\u0003¢\u0006\u0002\u0010~\u001aH\u0010\u007f\u001a\u00020&2\u000b\b\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010+2\u000b\b\u0002\u0010\u0081\u0001\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010\u0082\u0001\u001a\u00030\u0083\u00012\t\b\u0002\u0010\u0084\u0001\u001a\u00020FH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a#\u0010\u0087\u0001\u001a\u00020\u00142\u0006\u0010O\u001a\u00020P2\u0006\u00100\u001a\u000201H\u0080@ø\u0001\u0000¢\u0006\u0003\u0010\u0088\u0001\u001a\r\u0010\u0089\u0001\u001a\u00020B*\u00020\fH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0019\u0010\u0002\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0014\u0010\u0007\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\"\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000\"\u0019\u0010\r\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u000e\u0010\u0005\"\u0019\u0010\u000f\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0010\u0010\u0005\"\u000e\u0010\u0011\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000\"\u0013\u0010\u0012\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u008a\u0001"}, d2 = {"DatePickerHeadlinePadding", "Landroidx/compose/foundation/layout/PaddingValues;", "DatePickerHorizontalPadding", "Landroidx/compose/ui/unit/Dp;", "getDatePickerHorizontalPadding", "()F", "F", "DatePickerModeTogglePadding", "getDatePickerModeTogglePadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "DatePickerTitlePadding", "MaxCalendarRows", "", "MonthYearHeight", "getMonthYearHeight", "RecommendedSizeForAccessibility", "getRecommendedSizeForAccessibility", "YearsInRow", "YearsVerticalPadding", "DateEntryContainer", "", "modifier", "Landroidx/compose/ui/Modifier;", "title", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "headline", "modeToggleButton", "colors", "Landroidx/compose/material3/DatePickerColors;", "headlineTextStyle", "Landroidx/compose/ui/text/TextStyle;", "headerMinHeight", "content", "DateEntryContainer-au3_HiA", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "DatePicker", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/DatePickerState;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "dateValidator", "Lkotlin/Function1;", "", "", "showModeToggle", "(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V", "DatePickerContent", "stateData", "Landroidx/compose/material3/StateData;", "(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "DatePickerHeader", "titleContentColor", "Landroidx/compose/ui/graphics/Color;", "headlineContentColor", "minHeight", "DatePickerHeader-pc5RIQQ", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "Day", "selected", "onClick", "animateChecked", "enabled", "today", "inRange", "description", "", "(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "DisplayModeToggleButton", "displayMode", "Landroidx/compose/material3/DisplayMode;", "onDisplayModeChange", "DisplayModeToggleButton-tER2X8s", "(Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "HorizontalMonthsList", "onDateSelected", "Lkotlin/ParameterName;", "name", "dateInMillis", "lazyListState", "Landroidx/compose/foundation/lazy/LazyListState;", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/StateData;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "Month", "month", "Landroidx/compose/material3/CalendarMonth;", "Landroidx/compose/material3/CalendarDate;", "rangeSelectionEnabled", "(Landroidx/compose/material3/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/StateData;ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "MonthsNavigation", "nextAvailable", "previousAvailable", "yearPickerVisible", "yearPickerText", "onNextClicked", "onPreviousClicked", "onYearPickerButtonClicked", "(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "SwitchableDateEntryContent", "(Landroidx/compose/material3/DatePickerState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "WeekDays", "calendarModel", "Landroidx/compose/material3/CalendarModel;", "(Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/CalendarModel;Landroidx/compose/runtime/Composer;I)V", "Year", "currentYear", "(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "YearPicker", "onYearSelected", "year", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/StateData;Landroidx/compose/runtime/Composer;I)V", "YearPickerMenuButton", "expanded", "(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "customScrollActions", "", "Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "scrollUpLabel", "scrollDownLabel", "dayContentDescription", "isToday", "isStartDate", "isEndDate", "isInRange", "(ZZZZZLandroidx/compose/runtime/Composer;I)Ljava/lang/String;", "rememberDatePickerState", "initialSelectedDateMillis", "initialDisplayedMonthMillis", "yearRange", "Lkotlin/ranges/IntRange;", "initialDisplayMode", "rememberDatePickerState-NVmSL94", "(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DatePickerState;", "updateDisplayedMonth", "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/StateData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toLocalString", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DatePickerKt {
    private static final PaddingValues DatePickerHeadlinePadding;
    private static final float DatePickerHorizontalPadding;
    private static final PaddingValues DatePickerModeTogglePadding;
    private static final PaddingValues DatePickerTitlePadding;
    private static final int MaxCalendarRows = 6;
    private static final int YearsInRow = 3;
    private static final float YearsVerticalPadding;
    private static final float RecommendedSizeForAccessibility = Dp.m4883constructorimpl(48);
    private static final float MonthYearHeight = Dp.m4883constructorimpl(56);

    public static final float getDatePickerHorizontalPadding() {
        return DatePickerHorizontalPadding;
    }

    public static final PaddingValues getDatePickerModeTogglePadding() {
        return DatePickerModeTogglePadding;
    }

    public static final float getMonthYearHeight() {
        return MonthYearHeight;
    }

    public static final float getRecommendedSizeForAccessibility() {
        return RecommendedSizeForAccessibility;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void DatePicker(final androidx.compose.material3.DatePickerState r56, androidx.compose.ui.Modifier r57, androidx.compose.material3.DatePickerFormatter r58, kotlin.jvm.functions.Function1<? super java.lang.Long, java.lang.Boolean> r59, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r60, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r61, boolean r62, androidx.compose.material3.DatePickerColors r63, androidx.compose.runtime.Composer r64, final int r65, final int r66) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DatePickerKt.DatePicker(androidx.compose.material3.DatePickerState, androidx.compose.ui.Modifier, androidx.compose.material3.DatePickerFormatter, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.material3.DatePickerColors, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: rememberDatePickerState-NVmSL94, reason: not valid java name */
    public static final DatePickerState m1157rememberDatePickerStateNVmSL94(final Long l, final Long l2, final IntRange intRange, final int i, Composer composer, int i2, int i3) {
        composer.startReplaceableGroup(1574672255);
        ComposerKt.sourceInformation(composer, "C(rememberDatePickerState)P(2,1,3,0:c#material3.DisplayMode)224@10177L295:DatePicker.kt#uh7d8r");
        if ((i3 & 1) != 0) {
            l = null;
        }
        if ((i3 & 2) != 0) {
            l2 = l;
        }
        if ((i3 & 4) != 0) {
            intRange = DatePickerDefaults.INSTANCE.getYearRange();
        }
        if ((i3 & 8) != 0) {
            i = DisplayMode.INSTANCE.m1184getPickerjFl4v0();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1574672255, i2, -1, "androidx.compose.material3.rememberDatePickerState (DatePicker.kt:219)");
        }
        DatePickerState datePickerState = (DatePickerState) RememberSaveableKt.m2286rememberSaveable(new Object[0], (Saver) DatePickerState.INSTANCE.Saver(), (String) null, (Function0) new Function0<DatePickerState>() { // from class: androidx.compose.material3.DatePickerKt$rememberDatePickerState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DatePickerState invoke() {
                return new DatePickerState(l, l2, intRange, i, null);
            }
        }, composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return datePickerState;
    }

    /* renamed from: DateEntryContainer-au3_HiA, reason: not valid java name */
    public static final void m1154DateEntryContainerau3_HiA(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final DatePickerColors colors, final TextStyle headlineTextStyle, final float f, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(headlineTextStyle, "headlineTextStyle");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(1507356255);
        ComposerKt.sourceInformation(startRestartGroup, "C(DateEntryContainer)P(6,7,3,5!1,4,2:c#ui.unit.Dp)1021@43152L1610:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 2048 : 1024;
        }
        if ((i & 57344) == 0) {
            i2 |= startRestartGroup.changed(colors) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(headlineTextStyle) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changed(f) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(content) ? 8388608 : 4194304;
        }
        final int i3 = i2;
        if ((23967451 & i3) != 4793490 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1507356255, i3, -1, "androidx.compose.material3.DateEntryContainer (DatePicker.kt:1011)");
            }
            Modifier semantics$default = SemanticsModifierKt.semantics$default(SizeKt.m541sizeInqDBjuR0$default(modifier, DatePickerModalTokens.INSTANCE.m1793getContainerWidthD9Ej5fM(), 0.0f, 0.0f, 0.0f, 14, null), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.setContainer(semantics, true);
                }
            }, 1, null);
            startRestartGroup.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), startRestartGroup, 0);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(semantics$default);
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
            Updater.m2280setimpl(m2273constructorimpl, columnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 276693704, "C79@4027L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -916081480, "C1026@43319L1419,1059@44747L9:DatePicker.kt#uh7d8r");
            composer2 = startRestartGroup;
            m1155DatePickerHeaderpc5RIQQ(Modifier.INSTANCE, function2, colors.getTitleContentColor(), colors.getHeadlineContentColor(), f, ComposableLambdaKt.composableLambda(startRestartGroup, -229007058, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1
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

                public final void invoke(Composer composer3, int i4) {
                    Arrangement.HorizontalOrVertical end;
                    ComposerKt.sourceInformation(composer3, "C1033@43583L1145:DatePicker.kt#uh7d8r");
                    if ((i4 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-229007058, i4, -1, "androidx.compose.material3.DateEntryContainer.<anonymous>.<anonymous> (DatePicker.kt:1032)");
                        }
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        final Function2<Composer, Integer, Unit> function24 = function22;
                        Function2<Composer, Integer, Unit> function25 = function23;
                        Function2<Composer, Integer, Unit> function26 = function2;
                        TextStyle textStyle = headlineTextStyle;
                        final int i5 = i3;
                        composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation(composer3, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
                        MeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer3, 0);
                        composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume4 = composer3.consume(localDensity2);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Density density2 = (Density) consume4;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume5 = composer3.consume(localLayoutDirection2);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume6 = composer3.consume(localViewConfiguration2);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(fillMaxWidth$default);
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
                        Updater.m2280setimpl(m2273constructorimpl2, columnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer3.enableReusing();
                        materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                        composer3.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer3, 276693704, "C79@4027L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer3, 1449811391, "C1039@43908L580:DatePicker.kt#uh7d8r");
                        if (function24 != null && function25 != null) {
                            end = Arrangement.INSTANCE.getSpaceBetween();
                        } else if (function24 != null) {
                            end = Arrangement.INSTANCE.getStart();
                        } else {
                            end = Arrangement.INSTANCE.getEnd();
                        }
                        Modifier fillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                        composer3.startReplaceableGroup(693286680);
                        ComposerKt.sourceInformation(composer3, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
                        MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(end, centerVertically, composer3, 48);
                        composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume7 = composer3.consume(localDensity3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Density density3 = (Density) consume7;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume8 = composer3.consume(localLayoutDirection3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        LayoutDirection layoutDirection3 = (LayoutDirection) consume8;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration3 = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume9 = composer3.consume(localViewConfiguration3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ViewConfiguration viewConfiguration3 = (ViewConfiguration) consume9;
                        Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(fillMaxWidth$default2);
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
                        Updater.m2280setimpl(m2273constructorimpl3, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl3, density3, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl3, layoutDirection3, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl3, viewConfiguration3, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer3.enableReusing();
                        materializerOf3.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                        composer3.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer3, -326682283, "C80@4021L9:Row.kt#2w3rfo");
                        final RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer3, -1011378861, "C:DatePicker.kt#uh7d8r");
                        composer3.startReplaceableGroup(-1011378861);
                        ComposerKt.sourceInformation(composer3, "1045@44191L210");
                        if (function24 != null) {
                            TextKt.ProvideTextStyle(textStyle, ComposableLambdaKt.composableLambda(composer3, -962031352, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1$1$1$1
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

                                public final void invoke(Composer composer4, int i6) {
                                    ComposerKt.sourceInformation(composer4, "C1046@44265L110:DatePicker.kt#uh7d8r");
                                    if ((i6 & 11) != 2 || !composer4.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-962031352, i6, -1, "androidx.compose.material3.DateEntryContainer.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1045)");
                                        }
                                        Modifier weight$default = RowScope.weight$default(RowScope.this, Modifier.INSTANCE, 1.0f, false, 2, null);
                                        Function2<Composer, Integer, Unit> function27 = function24;
                                        int i7 = i5;
                                        composer4.startReplaceableGroup(733328855);
                                        ComposerKt.sourceInformation(composer4, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer4, 0);
                                        composer4.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation(composer4, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                        ProvidableCompositionLocal<Density> localDensity4 = CompositionLocalsKt.getLocalDensity();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume10 = composer4.consume(localDensity4);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        Density density4 = (Density) consume10;
                                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection4 = CompositionLocalsKt.getLocalLayoutDirection();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume11 = composer4.consume(localLayoutDirection4);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        LayoutDirection layoutDirection4 = (LayoutDirection) consume11;
                                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration4 = CompositionLocalsKt.getLocalViewConfiguration();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume12 = composer4.consume(localViewConfiguration4);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        ViewConfiguration viewConfiguration4 = (ViewConfiguration) consume12;
                                        Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(weight$default);
                                        if (!(composer4.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor4);
                                        } else {
                                            composer4.useNode();
                                        }
                                        composer4.disableReusing();
                                        Composer m2273constructorimpl4 = Updater.m2273constructorimpl(composer4);
                                        Updater.m2280setimpl(m2273constructorimpl4, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m2280setimpl(m2273constructorimpl4, density4, ComposeUiNode.INSTANCE.getSetDensity());
                                        Updater.m2280setimpl(m2273constructorimpl4, layoutDirection4, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                                        Updater.m2280setimpl(m2273constructorimpl4, viewConfiguration4, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                                        composer4.enableReusing();
                                        materializerOf4.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer4)), composer4, 0);
                                        composer4.startReplaceableGroup(2058660585);
                                        ComposerKt.sourceInformationMarkerStart(composer4, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2128807125, "C1047@44335L10:DatePicker.kt#uh7d8r");
                                        function27.invoke(composer4, Integer.valueOf((i7 >> 6) & 14));
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        composer4.endReplaceableGroup();
                                        composer4.endNode();
                                        composer4.endReplaceableGroup();
                                        composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer4.skipToGroupEnd();
                                }
                            }), composer3, ((i5 >> 15) & 14) | 48);
                        }
                        composer3.endReplaceableGroup();
                        composer3.startReplaceableGroup(1449812209);
                        ComposerKt.sourceInformation(composer3, "1051@44462L8");
                        if (function25 != null) {
                            function25.invoke(composer3, Integer.valueOf((i5 >> 9) & 14));
                        }
                        composer3.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endReplaceableGroup();
                        composer3.endNode();
                        composer3.endReplaceableGroup();
                        composer3.endReplaceableGroup();
                        composer3.startReplaceableGroup(1680507480);
                        ComposerKt.sourceInformation(composer3, "1055@44687L9");
                        if (function26 != null || function24 != null || function25 != null) {
                            DividerKt.m1186Divider9IZ8Weo(null, 0.0f, 0L, composer3, 0, 7);
                        }
                        composer3.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endReplaceableGroup();
                        composer3.endNode();
                        composer3.endReplaceableGroup();
                        composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), composer2, 196614 | (i3 & 112) | ((i3 >> 6) & 57344));
            content.invoke(composer2, Integer.valueOf((i3 >> 21) & 14));
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$3
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

            public final void invoke(Composer composer3, int i4) {
                DatePickerKt.m1154DateEntryContainerau3_HiA(Modifier.this, function2, function22, function23, colors, headlineTextStyle, f, content, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* renamed from: DisplayModeToggleButton-tER2X8s, reason: not valid java name */
    public static final void m1156DisplayModeToggleButtontER2X8s(final Modifier modifier, final int i, final Function1<? super DisplayMode, Unit> onDisplayModeChange, Composer composer, final int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(onDisplayModeChange, "onDisplayModeChange");
        Composer startRestartGroup = composer.startRestartGroup(1393846115);
        ComposerKt.sourceInformation(startRestartGroup, "C(DisplayModeToggleButton)P(1,0:c#material3.DisplayMode):DatePicker.kt#uh7d8r");
        if ((i2 & 14) == 0) {
            i3 = (startRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 112) == 0) {
            i3 |= startRestartGroup.changed(i) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(onDisplayModeChange) ? 256 : 128;
        }
        if ((i3 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1393846115, i3, -1, "androidx.compose.material3.DisplayModeToggleButton (DatePicker.kt:1065)");
            }
            if (DisplayMode.m1179equalsimpl0(i, DisplayMode.INSTANCE.m1184getPickerjFl4v0())) {
                startRestartGroup.startReplaceableGroup(-1814971324);
                ComposerKt.sourceInformation(startRestartGroup, "1071@45035L42,1071@45014L262");
                startRestartGroup.startReplaceableGroup(1157296644);
                ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
                boolean changed = startRestartGroup.changed(onDisplayModeChange);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                    rememberedValue = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
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
                            onDisplayModeChange.invoke(DisplayMode.m1176boximpl(DisplayMode.INSTANCE.m1183getInputjFl4v0()));
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                startRestartGroup.endReplaceableGroup();
                IconButtonKt.IconButton((Function0) rememberedValue, modifier, false, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m1124getLambda1$material3_release(), startRestartGroup, ((i3 << 3) & 112) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
                startRestartGroup.endReplaceableGroup();
            } else {
                startRestartGroup.startReplaceableGroup(-1814971040);
                ComposerKt.sourceInformation(startRestartGroup, "1078@45319L43,1078@45298L271");
                startRestartGroup.startReplaceableGroup(1157296644);
                ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
                boolean changed2 = startRestartGroup.changed(onDisplayModeChange);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$2$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
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
                            onDisplayModeChange.invoke(DisplayMode.m1176boximpl(DisplayMode.INSTANCE.m1184getPickerjFl4v0()));
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                startRestartGroup.endReplaceableGroup();
                IconButtonKt.IconButton((Function0) rememberedValue2, modifier, false, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m1125getLambda2$material3_release(), startRestartGroup, ((i3 << 3) & 112) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
                startRestartGroup.endReplaceableGroup();
            }
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$3
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
                DatePickerKt.m1156DisplayModeToggleButtontER2X8s(Modifier.this, i, onDisplayModeChange, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void SwitchableDateEntryContent(final DatePickerState datePickerState, final DatePickerFormatter datePickerFormatter, final Function1<? super Long, Boolean> function1, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(1613036224);
        ComposerKt.sourceInformation(startRestartGroup, "C(SwitchableDateEntryContent)P(3,1,2)1101@46104L638:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(datePickerState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(datePickerFormatter) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(datePickerColors) ? 2048 : 1024;
        }
        final int i3 = i2;
        if ((i3 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1613036224, i3, -1, "androidx.compose.material3.SwitchableDateEntryContent (DatePicker.kt:1093)");
            }
            int m1160getDisplayModejFl4v0 = datePickerState.m1160getDisplayModejFl4v0();
            CrossfadeKt.Crossfade(DisplayMode.m1176boximpl(m1160getDisplayModejFl4v0), SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.setContainer(semantics, true);
                }
            }, 1, null), AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null), (String) null, ComposableLambdaKt.composableLambda(startRestartGroup, 1854706084, true, new Function3<DisplayMode, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(DisplayMode displayMode, Composer composer2, Integer num) {
                    m1159invokeQujVXRc(displayMode.getValue(), composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-QujVXRc, reason: not valid java name */
                public final void m1159invokeQujVXRc(int i4, Composer composer2, int i5) {
                    int i6;
                    ComposerKt.sourceInformation(composer2, "CP(0:c#material3.DisplayMode):DatePicker.kt#uh7d8r");
                    if ((i5 & 14) == 0) {
                        i6 = (composer2.changed(i4) ? 4 : 2) | i5;
                    } else {
                        i6 = i5;
                    }
                    if ((i6 & 91) != 18 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1854706084, i5, -1, "androidx.compose.material3.SwitchableDateEntryContent.<anonymous> (DatePicker.kt:1104)");
                        }
                        if (DisplayMode.m1179equalsimpl0(i4, DisplayMode.INSTANCE.m1184getPickerjFl4v0())) {
                            composer2.startReplaceableGroup(-1168728183);
                            ComposerKt.sourceInformation(composer2, "1106@46318L203");
                            StateData stateData = DatePickerState.this.getStateData();
                            DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                            Function1<Long, Boolean> function12 = function1;
                            DatePickerColors datePickerColors2 = datePickerColors;
                            int i7 = i3;
                            DatePickerKt.DatePickerContent(stateData, datePickerFormatter2, function12, datePickerColors2, composer2, (i7 & 112) | (i7 & 896) | (i7 & 7168));
                            composer2.endReplaceableGroup();
                        } else if (DisplayMode.m1179equalsimpl0(i4, DisplayMode.INSTANCE.m1183getInputjFl4v0())) {
                            composer2.startReplaceableGroup(-1168727945);
                            ComposerKt.sourceInformation(composer2, "1113@46556L170");
                            StateData stateData2 = DatePickerState.this.getStateData();
                            DatePickerFormatter datePickerFormatter3 = datePickerFormatter;
                            Function1<Long, Boolean> function13 = function1;
                            int i8 = i3;
                            DateInputKt.DateInputContent(stateData2, datePickerFormatter3, function13, composer2, (i8 & 896) | (i8 & 112));
                            composer2.endReplaceableGroup();
                        } else {
                            composer2.startReplaceableGroup(-1168727765);
                            composer2.endReplaceableGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }), startRestartGroup, 24960, 8);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$3
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
                DatePickerKt.SwitchableDateEntryContent(DatePickerState.this, datePickerFormatter, function1, datePickerColors, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DatePickerContent(final StateData stateData, final DatePickerFormatter datePickerFormatter, final Function1<? super Long, Boolean> function1, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(-1512850300);
        ComposerKt.sourceInformation(startRestartGroup, "C(DatePickerContent)P(3,1,2)1131@47000L83,1132@47109L24,1134@47160L140,1139@47331L42,1140@47398L15,1141@47418L4106:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(stateData) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(datePickerFormatter) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(datePickerColors) ? 2048 : 1024;
        }
        final int i3 = i2;
        if ((i3 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1512850300, i3, -1, "androidx.compose.material3.DatePickerContent (DatePicker.kt:1124)");
            }
            final LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(stateData.getDisplayedMonthIndex(), 0, startRestartGroup, 0, 2);
            startRestartGroup.startReplaceableGroup(773894976);
            ComposerKt.sourceInformation(startRestartGroup, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp");
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, startRestartGroup));
                startRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                rememberedValue = compositionScopedCoroutineScopeCanceller;
            }
            startRestartGroup.endReplaceableGroup();
            final CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(stateData);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$onDateSelected$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        StateData.this.getSelectedStartDate().setValue(StateData.this.getCalendarModel().getCanonicalDate(j));
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            Function1 function12 = (Function1) rememberedValue2;
            final MutableState mutableState = (MutableState) RememberSaveableKt.m2286rememberSaveable(new Object[0], (Saver) null, (String) null, (Function0) new Function0<MutableState<Boolean>>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$yearPickerVisible$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final MutableState<Boolean> invoke() {
                    MutableState<Boolean> mutableStateOf$default;
                    mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                    return mutableStateOf$default;
                }
            }, startRestartGroup, 3080, 6);
            Locale defaultLocale = CalendarModel_androidKt.defaultLocale(startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
            Modifier.Companion companion = Modifier.INSTANCE;
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), startRestartGroup, 0);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
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
            Updater.m2280setimpl(m2273constructorimpl, columnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 276693704, "C79@4027L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -269675982, "C1166@48484L42,1142@47435L1101,1169@48546L2972:DatePicker.kt#uh7d8r");
            Modifier.Companion companion2 = Modifier.INSTANCE;
            float f = DatePickerHorizontalPadding;
            Modifier m492paddingVpY3zN4$default = PaddingKt.m492paddingVpY3zN4$default(companion2, f, 0.0f, 2, null);
            boolean canScrollForward = rememberLazyListState.getCanScrollForward();
            boolean canScrollBackward = rememberLazyListState.getCanScrollBackward();
            boolean DatePickerContent$lambda$5 = DatePickerContent$lambda$5(mutableState);
            String formatMonthYear$material3_release = datePickerFormatter.formatMonthYear$material3_release(stateData.getDisplayedMonth(), stateData.getCalendarModel(), defaultLocale);
            if (formatMonthYear$material3_release == null) {
                formatMonthYear$material3_release = "-";
            }
            Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$1
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
                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rememberLazyListState, null), 3, null);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: DatePicker.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1", f = "DatePicker.kt", i = {}, l = {1155}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ LazyListState $monthsListState;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$monthsListState = lazyListState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$monthsListState, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            LazyListState lazyListState = this.$monthsListState;
                            this.label = 1;
                            if (LazyListState.animateScrollToItem$default(lazyListState, lazyListState.getFirstVisibleItemIndex() + 1, 0, this, 2, null) == coroutine_suspended) {
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
            };
            Function0<Unit> function02 = new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$2
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
                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(rememberLazyListState, null), 3, null);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: DatePicker.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1", f = "DatePicker.kt", i = {}, l = {1162}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ LazyListState $monthsListState;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$monthsListState = lazyListState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$monthsListState, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            LazyListState lazyListState = this.$monthsListState;
                            this.label = 1;
                            if (LazyListState.animateScrollToItem$default(lazyListState, lazyListState.getFirstVisibleItemIndex() - 1, 0, this, 2, null) == coroutine_suspended) {
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
            };
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(mutableState);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                rememberedValue3 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$3$1
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
                        boolean DatePickerContent$lambda$52;
                        MutableState<Boolean> mutableState2 = mutableState;
                        DatePickerContent$lambda$52 = DatePickerKt.DatePickerContent$lambda$5(mutableState2);
                        DatePickerKt.DatePickerContent$lambda$6(mutableState2, !DatePickerContent$lambda$52);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            MonthsNavigation(m492paddingVpY3zN4$default, canScrollForward, canScrollBackward, DatePickerContent$lambda$5, formatMonthYear$material3_release, function0, function02, (Function0) rememberedValue3, startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            Modifier.Companion companion3 = Modifier.INSTANCE;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume4 = startRestartGroup.consume(localDensity2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density2 = (Density) consume4;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume5 = startRestartGroup.consume(localLayoutDirection2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume6 = startRestartGroup.consume(localViewConfiguration2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(companion3);
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
            Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1767568956, "C1170@48564L494,1181@49098L2410:DatePicker.kt#uh7d8r");
            Modifier m492paddingVpY3zN4$default2 = PaddingKt.m492paddingVpY3zN4$default(Modifier.INSTANCE, f, 0.0f, 2, null);
            startRestartGroup.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
            MeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume7 = startRestartGroup.consume(localDensity3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density3 = (Density) consume7;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume8 = startRestartGroup.consume(localLayoutDirection3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection3 = (LayoutDirection) consume8;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration3 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume9 = startRestartGroup.consume(localViewConfiguration3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) consume9;
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(m492paddingVpY3zN4$default2);
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
            Updater.m2280setimpl(m2273constructorimpl3, columnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl3, density3, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl3, layoutDirection3, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl3, viewConfiguration3, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 276693704, "C79@4027L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1247374525, "C1171@48660L41,1172@48718L326:DatePicker.kt#uh7d8r");
            WeekDays(datePickerColors, stateData.getCalendarModel(), startRestartGroup, (i3 >> 9) & 14);
            int i4 = i3 << 6;
            HorizontalMonthsList(function12, stateData, rememberLazyListState, datePickerFormatter, function1, datePickerColors, startRestartGroup, ((i3 << 3) & 112) | (i4 & 7168) | (57344 & i4) | (i4 & 458752));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            composer2 = startRestartGroup;
            AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$5(mutableState), ClipKt.clipToBounds(Modifier.INSTANCE), EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.6f, 1, null)), EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.composableLambda(startRestartGroup, 760161496, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer3, Integer num) {
                    invoke(animatedVisibilityScope, composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(AnimatedVisibilityScope AnimatedVisibility, Composer composer3, int i5) {
                    Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
                    ComposerKt.sourceInformation(composer3, "C1191@49681L48,1192@49783L30,1192@49746L1748:DatePicker.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(760161496, i5, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1186)");
                    }
                    final String m1475getStringNWtq28 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1441getDatePickerYearPickerPaneTitleadMyvUU(), composer3, 6);
                    Modifier.Companion companion4 = Modifier.INSTANCE;
                    composer3.startReplaceableGroup(1157296644);
                    ComposerKt.sourceInformation(composer3, "CC(remember)P(1):Composables.kt#9igjgp");
                    boolean changed3 = composer3.changed(m1475getStringNWtq28);
                    Object rememberedValue4 = composer3.rememberedValue();
                    if (changed3 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                        rememberedValue4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$1$1
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
                                SemanticsPropertiesKt.setPaneTitle(semantics, m1475getStringNWtq28);
                            }
                        };
                        composer3.updateRememberedValue(rememberedValue4);
                    }
                    composer3.endReplaceableGroup();
                    Modifier semantics$default = SemanticsModifierKt.semantics$default(companion4, false, (Function1) rememberedValue4, 1, null);
                    DatePickerColors datePickerColors2 = DatePickerColors.this;
                    final StateData stateData2 = stateData;
                    int i6 = i3;
                    final CoroutineScope coroutineScope2 = coroutineScope;
                    final MutableState<Boolean> mutableState2 = mutableState;
                    final LazyListState lazyListState = rememberLazyListState;
                    composer3.startReplaceableGroup(-483455358);
                    ComposerKt.sourceInformation(composer3, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
                    MeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer3, 0);
                    composer3.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                    ProvidableCompositionLocal<Density> localDensity4 = CompositionLocalsKt.getLocalDensity();
                    ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                    Object consume10 = composer3.consume(localDensity4);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    Density density4 = (Density) consume10;
                    ProvidableCompositionLocal<LayoutDirection> localLayoutDirection4 = CompositionLocalsKt.getLocalLayoutDirection();
                    ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                    Object consume11 = composer3.consume(localLayoutDirection4);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    LayoutDirection layoutDirection4 = (LayoutDirection) consume11;
                    ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration4 = CompositionLocalsKt.getLocalViewConfiguration();
                    ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                    Object consume12 = composer3.consume(localViewConfiguration4);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ViewConfiguration viewConfiguration4 = (ViewConfiguration) consume12;
                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                    Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(semantics$default);
                    if (!(composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        composer3.createNode(constructor4);
                    } else {
                        composer3.useNode();
                    }
                    composer3.disableReusing();
                    Composer m2273constructorimpl4 = Updater.m2273constructorimpl(composer3);
                    Updater.m2280setimpl(m2273constructorimpl4, columnMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m2280setimpl(m2273constructorimpl4, density4, ComposeUiNode.INSTANCE.getSetDensity());
                    Updater.m2280setimpl(m2273constructorimpl4, layoutDirection4, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                    Updater.m2280setimpl(m2273constructorimpl4, viewConfiguration4, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                    composer3.enableReusing();
                    materializerOf4.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                    composer3.startReplaceableGroup(2058660585);
                    ComposerKt.sourceInformationMarkerStart(composer3, 276693704, "C79@4027L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart(composer3, -1036337673, "C1193@49837L1609,1220@51467L9:DatePicker.kt#uh7d8r");
                    DatePickerKt.YearPicker(PaddingKt.m492paddingVpY3zN4$default(SizeKt.m526requiredHeight3ABfNKs(Modifier.INSTANCE, Dp.m4883constructorimpl(Dp.m4883constructorimpl(DatePickerKt.getRecommendedSizeForAccessibility() * 7) - DividerDefaults.INSTANCE.m1185getThicknessD9Ej5fM())), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null), new Function1<Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                            invoke(num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i7) {
                            boolean DatePickerContent$lambda$52;
                            MutableState<Boolean> mutableState3 = mutableState2;
                            DatePickerContent$lambda$52 = DatePickerKt.DatePickerContent$lambda$5(mutableState3);
                            DatePickerKt.DatePickerContent$lambda$6(mutableState3, !DatePickerContent$lambda$52);
                            BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(stateData2, lazyListState, i7, null), 3, null);
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: DatePicker.kt */
                        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1", f = "DatePicker.kt", i = {}, l = {1212}, m = "invokeSuspend", n = {}, s = {})
                        /* renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ LazyListState $monthsListState;
                            final /* synthetic */ StateData $stateData;
                            final /* synthetic */ int $year;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass1(StateData stateData, LazyListState lazyListState, int i, Continuation<? super AnonymousClass1> continuation) {
                                super(2, continuation);
                                this.$stateData = stateData;
                                this.$monthsListState = lazyListState;
                                this.$year = i;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new AnonymousClass1(this.$stateData, this.$monthsListState, this.$year, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                int i = this.label;
                                if (i == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    StateData stateData = this.$stateData;
                                    LazyListState lazyListState = this.$monthsListState;
                                    int first = (((this.$year - stateData.getYearRange().getFirst()) * 12) + stateData.getDisplayedMonth().getMonth()) - 1;
                                    this.label = 1;
                                    if (LazyListState.scrollToItem$default(lazyListState, first, 0, this, 2, null) == coroutine_suspended) {
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
                    }, datePickerColors2, stateData2, composer3, ((i6 >> 3) & 896) | 6 | ((i6 << 9) & 7168));
                    DividerKt.m1186Divider9IZ8Weo(null, 0.0f, 0L, composer3, 0, 7);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    ComposerKt.sourceInformationMarkerEnd(composer3);
                    composer3.endReplaceableGroup();
                    composer3.endNode();
                    composer3.endReplaceableGroup();
                    composer3.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), composer2, 200112, 16);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$2
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

            public final void invoke(Composer composer3, int i5) {
                DatePickerKt.DatePickerContent(StateData.this, datePickerFormatter, function1, datePickerColors, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean DatePickerContent$lambda$5(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DatePickerContent$lambda$6(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* renamed from: DatePickerHeader-pc5RIQQ, reason: not valid java name */
    public static final void m1155DatePickerHeaderpc5RIQQ(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final long j, final long j2, final float f, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        final int i2;
        Modifier.Companion companion;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-996037719);
        ComposerKt.sourceInformation(startRestartGroup, "C(DatePickerHeader)P(3,4,5:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.unit.Dp)1243@51983L784:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(j2) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(f) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(content) ? 131072 : 65536;
        }
        if ((374491 & i2) != 74898 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-996037719, i2, -1, "androidx.compose.material3.DatePickerHeader (DatePicker.kt:1228)");
            }
            if (function2 != null) {
                companion = SizeKt.m522defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, f, 1, null);
            } else {
                companion = Modifier.INSTANCE;
            }
            Modifier then = SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null).then(companion);
            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            startRestartGroup.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, Alignment.INSTANCE.getStart(), startRestartGroup, 6);
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
            Updater.m2280setimpl(m2273constructorimpl, columnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 276693704, "C79@4027L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1127524835, "C1262@52647L114:DatePicker.kt#uh7d8r");
            startRestartGroup.startReplaceableGroup(1127524835);
            ComposerKt.sourceInformation(startRestartGroup, "1250@52175L453");
            if (function2 != null) {
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j))}, ComposableLambdaKt.composableLambda(startRestartGroup, 1005061498, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$1$1
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
                        ComposerKt.sourceInformation(composer2, "C1252@52314L10,1255@52445L169:DatePicker.kt#uh7d8r");
                        if ((i3 & 11) != 2 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1005061498, i3, -1, "androidx.compose.material3.DatePickerHeader.<anonymous>.<anonymous> (DatePicker.kt:1250)");
                            }
                            TextStyle fromToken = TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(composer2, 6), DatePickerModalTokens.INSTANCE.getHeaderSupportingTextFont());
                            final Function2<Composer, Integer, Unit> function22 = function2;
                            final int i4 = i2;
                            TextKt.ProvideTextStyle(fromToken, ComposableLambdaKt.composableLambda(composer2, -2006650069, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$1$1.1
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

                                public final void invoke(Composer composer3, int i5) {
                                    ComposerKt.sourceInformation(composer3, "C1256@52495L101:DatePicker.kt#uh7d8r");
                                    if ((i5 & 11) != 2 || !composer3.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2006650069, i5, -1, "androidx.compose.material3.DatePickerHeader.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1255)");
                                        }
                                        Alignment bottomStart = Alignment.INSTANCE.getBottomStart();
                                        Function2<Composer, Integer, Unit> function23 = function22;
                                        int i6 = i4;
                                        composer3.startReplaceableGroup(733328855);
                                        ComposerKt.sourceInformation(composer3, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                        Modifier.Companion companion2 = Modifier.INSTANCE;
                                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(bottomStart, false, composer3, 6);
                                        composer3.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                        ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume4 = composer3.consume(localDensity2);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        Density density2 = (Density) consume4;
                                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume5 = composer3.consume(localLayoutDirection2);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume6 = composer3.consume(localViewConfiguration2);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(companion2);
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
                                        ComposerKt.sourceInformationMarkerStart(composer3, 1812348655, "C1257@52567L7:DatePicker.kt#uh7d8r");
                                        function23.invoke(composer3, Integer.valueOf((i6 >> 3) & 14));
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        composer3.endReplaceableGroup();
                                        composer3.endNode();
                                        composer3.endReplaceableGroup();
                                        composer3.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer3.skipToGroupEnd();
                                }
                            }), composer2, 48);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }), startRestartGroup, 56);
            }
            startRestartGroup.endReplaceableGroup();
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j2))}, content, startRestartGroup, ((i2 >> 12) & 112) | 8);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$2
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
                DatePickerKt.m1155DatePickerHeaderpc5RIQQ(Modifier.this, function2, j, j2, f, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void HorizontalMonthsList(final Function1<? super Long, Unit> function1, final StateData stateData, final LazyListState lazyListState, final DatePickerFormatter datePickerFormatter, final Function1<? super Long, Boolean> function12, final DatePickerColors datePickerColors, Composer composer, final int i) {
        final int i2;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(1933363608);
        ComposerKt.sourceInformation(startRestartGroup, "C(HorizontalMonthsList)P(4,5,3,1,2)1282@53204L168,1298@53968L40,1299@54015L738,1288@53377L1376,1323@54789L62,1323@54759L92:DatePicker.kt#uh7d8r");
        int i3 = (i & 14) == 0 ? (startRestartGroup.changedInstance(function1) ? 4 : 2) | i : i;
        if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(stateData) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i3 |= startRestartGroup.changed(lazyListState) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changed(datePickerFormatter) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i3 |= startRestartGroup.changedInstance(function12) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i3 |= startRestartGroup.changed(datePickerColors) ? 131072 : 65536;
        }
        int i4 = i3;
        if ((374491 & i4) != 74898 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1933363608, i4, -1, "androidx.compose.material3.HorizontalMonthsList (DatePicker.kt:1273)");
            }
            final CalendarDate today = stateData.getCalendarModel().getToday();
            IntRange yearRange = stateData.getYearRange();
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(yearRange);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = stateData.getCalendarModel().getMonth(stateData.getYearRange().getFirst(), 1);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final CalendarMonth calendarMonth = (CalendarMonth) rememberedValue;
            Modifier semantics$default = SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.setHorizontalScrollAxisRange(semantics, new ScrollAxisRange(new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Float invoke() {
                            return Float.valueOf(0.0f);
                        }
                    }, new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1.2
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Float invoke() {
                            return Float.valueOf(0.0f);
                        }
                    }, false, 4, null));
                }
            }, 1, null);
            int i5 = (i4 >> 6) & 14;
            boolean z = false;
            FlingBehavior rememberSnapFlingBehavior$material3_release = DatePickerDefaults.INSTANCE.rememberSnapFlingBehavior$material3_release(lazyListState, null, startRestartGroup, i5 | 384, 2);
            Object[] objArr = {stateData, calendarMonth, function1, today, function12, datePickerFormatter, datePickerColors};
            startRestartGroup.startReplaceableGroup(-568225417);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            for (int i6 = 0; i6 < 7; i6++) {
                z |= startRestartGroup.changed(objArr[i6]);
            }
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (z || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                i2 = i4;
                rememberedValue2 = (Function1) new Function1<LazyListScope, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(LazyListScope lazyListScope) {
                        invoke2(lazyListScope);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(LazyListScope LazyRow) {
                        Intrinsics.checkNotNullParameter(LazyRow, "$this$LazyRow");
                        int totalMonthsInRange = StateData.this.getTotalMonthsInRange();
                        final StateData stateData2 = StateData.this;
                        final CalendarMonth calendarMonth2 = calendarMonth;
                        final Function1<Long, Unit> function13 = function1;
                        final CalendarDate calendarDate = today;
                        final Function1<Long, Boolean> function14 = function12;
                        final DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                        final DatePickerColors datePickerColors2 = datePickerColors;
                        final int i7 = i2;
                        LazyListScope.items$default(LazyRow, totalMonthsInRange, null, null, ComposableLambdaKt.composableLambdaInstance(-65053693, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$2$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(4);
                            }

                            @Override // kotlin.jvm.functions.Function4
                            public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer3, Integer num2) {
                                invoke(lazyItemScope, num.intValue(), composer3, num2.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(LazyItemScope items, int i8, Composer composer3, int i9) {
                                int i10;
                                Intrinsics.checkNotNullParameter(items, "$this$items");
                                ComposerKt.sourceInformation(composer3, "C1306@54250L487:DatePicker.kt#uh7d8r");
                                if ((i9 & 14) == 0) {
                                    i10 = (composer3.changed(items) ? 4 : 2) | i9;
                                } else {
                                    i10 = i9;
                                }
                                if ((i9 & 112) == 0) {
                                    i10 |= composer3.changed(i8) ? 32 : 16;
                                }
                                if ((i10 & 731) != 146 || !composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-65053693, i9, -1, "androidx.compose.material3.HorizontalMonthsList.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1300)");
                                    }
                                    CalendarMonth plusMonths = StateData.this.getCalendarModel().plusMonths(calendarMonth2, i8);
                                    Modifier fillParentMaxWidth$default = LazyItemScope.fillParentMaxWidth$default(items, Modifier.INSTANCE, 0.0f, 1, null);
                                    Function1<Long, Unit> function15 = function13;
                                    CalendarDate calendarDate2 = calendarDate;
                                    StateData stateData3 = StateData.this;
                                    Function1<Long, Boolean> function16 = function14;
                                    DatePickerFormatter datePickerFormatter3 = datePickerFormatter2;
                                    DatePickerColors datePickerColors3 = datePickerColors2;
                                    int i11 = i7;
                                    composer3.startReplaceableGroup(733328855);
                                    ComposerKt.sourceInformation(composer3, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                    MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer3, 0);
                                    composer3.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                    ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                                    ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume = composer3.consume(localDensity);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    Density density = (Density) consume;
                                    ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                                    ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume2 = composer3.consume(localLayoutDirection);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    LayoutDirection layoutDirection = (LayoutDirection) consume2;
                                    ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                                    ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume3 = composer3.consume(localViewConfiguration);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
                                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(fillParentMaxWidth$default);
                                    if (!(composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    composer3.disableReusing();
                                    Composer m2273constructorimpl = Updater.m2273constructorimpl(composer3);
                                    Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                                    Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                                    Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                                    composer3.enableReusing();
                                    materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                                    composer3.startReplaceableGroup(2058660585);
                                    ComposerKt.sourceInformationMarkerStart(composer3, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart(composer3, 1656167412, "C1309@54344L379:DatePicker.kt#uh7d8r");
                                    int i12 = i11 << 3;
                                    int i13 = i11 << 6;
                                    DatePickerKt.Month(plusMonths, function15, calendarDate2, stateData3, false, function16, datePickerFormatter3, datePickerColors3, composer3, ((i11 << 9) & 3670016) | (i12 & 458752) | (i12 & 112) | 24576 | (i13 & 7168) | (29360128 & i13));
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    composer3.endReplaceableGroup();
                                    composer3.endNode();
                                    composer3.endReplaceableGroup();
                                    composer3.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer3.skipToGroupEnd();
                            }
                        }), 6, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            } else {
                i2 = i4;
            }
            startRestartGroup.endReplaceableGroup();
            composer2 = startRestartGroup;
            LazyDslKt.LazyRow(semantics$default, lazyListState, null, false, null, null, rememberSnapFlingBehavior$material3_release, false, (Function1) rememberedValue2, composer2, (i2 >> 3) & 112, 188);
            composer2.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(composer2, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed2 = composer2.changed(lazyListState) | composer2.changed(stateData);
            DatePickerKt$HorizontalMonthsList$3$1 rememberedValue3 = composer2.rememberedValue();
            if (changed2 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                rememberedValue3 = new DatePickerKt$HorizontalMonthsList$3$1(lazyListState, stateData, null);
                composer2.updateRememberedValue(rememberedValue3);
            }
            composer2.endReplaceableGroup();
            EffectsKt.LaunchedEffect(lazyListState, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) rememberedValue3, composer2, i5 | 64);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$4
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

            public final void invoke(Composer composer3, int i7) {
                DatePickerKt.HorizontalMonthsList(function1, stateData, lazyListState, datePickerFormatter, function12, datePickerColors, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    public static final Object updateDisplayedMonth(final LazyListState lazyListState, final StateData stateData, Continuation<? super Unit> continuation) {
        Object collect = SnapshotStateKt.snapshotFlow(new Function0<Integer>() { // from class: androidx.compose.material3.DatePickerKt$updateDisplayedMonth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(LazyListState.this.getFirstVisibleItemIndex());
            }
        }).collect(new FlowCollector<Integer>() { // from class: androidx.compose.material3.DatePickerKt$updateDisplayedMonth$3
            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Integer num, Continuation continuation2) {
                return emit(num.intValue(), (Continuation<? super Unit>) continuation2);
            }

            public final Object emit(int i, Continuation<? super Unit> continuation2) {
                int firstVisibleItemIndex = LazyListState.this.getFirstVisibleItemIndex() / 12;
                int firstVisibleItemIndex2 = (LazyListState.this.getFirstVisibleItemIndex() % 12) + 1;
                StateData stateData2 = stateData;
                if (stateData2.getDisplayedMonth().getMonth() != firstVisibleItemIndex2 || stateData2.getDisplayedMonth().getYear() != stateData2.getYearRange().getFirst() + firstVisibleItemIndex) {
                    stateData2.setDisplayedMonth(stateData2.getCalendarModel().getMonth(stateData2.getYearRange().getFirst() + firstVisibleItemIndex, firstVisibleItemIndex2));
                }
                return Unit.INSTANCE;
            }
        }, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    public static final void WeekDays(final DatePickerColors colors, final CalendarModel calendarModel, Composer composer, final int i) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(calendarModel, "calendarModel");
        Composer startRestartGroup = composer.startRestartGroup(-1849465391);
        ComposerKt.sourceInformation(startRestartGroup, "C(WeekDays)P(1)1365@56132L1363:DatePicker.kt#uh7d8r");
        int i2 = (i & 14) == 0 ? (startRestartGroup.changed(colors) ? 4 : 2) | i : i;
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(calendarModel) ? 32 : 16;
        }
        if ((i2 & 91) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1849465391, i, -1, "androidx.compose.material3.WeekDays (DatePicker.kt:1354)");
            }
            int firstDayOfWeek = calendarModel.getFirstDayOfWeek();
            List<Pair<String, String>> weekdayNames = calendarModel.getWeekdayNames();
            final ArrayList arrayList = new ArrayList();
            int i3 = firstDayOfWeek - 1;
            int size = weekdayNames.size();
            for (int i4 = i3; i4 < size; i4++) {
                arrayList.add(weekdayNames.get(i4));
            }
            for (int i5 = 0; i5 < i3; i5++) {
                arrayList.add(weekdayNames.get(i5));
            }
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(colors.getWeekdayContentColor()))}, ComposableLambdaKt.composableLambda(startRestartGroup, -1445541615, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$WeekDays$1
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

                public final void invoke(Composer composer2, int i6) {
                    ComposerKt.sourceInformation(composer2, "C1367@56264L10,1368@56338L1151:DatePicker.kt#uh7d8r");
                    if ((i6 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1445541615, i6, -1, "androidx.compose.material3.WeekDays.<anonymous> (DatePicker.kt:1365)");
                        }
                        TextStyle fromToken = TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(composer2, 6), DatePickerModalTokens.INSTANCE.getWeekdaysLabelTextFont());
                        final ArrayList<Pair<String, String>> arrayList2 = arrayList;
                        TextKt.ProvideTextStyle(fromToken, ComposableLambdaKt.composableLambda(composer2, 2133710592, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$WeekDays$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Type inference failed for: r10v0 */
                            /* JADX WARN: Type inference failed for: r10v1, types: [boolean, int] */
                            /* JADX WARN: Type inference failed for: r10v2 */
                            public final void invoke(Composer composer3, int i7) {
                                Composer composer4 = composer3;
                                ComposerKt.sourceInformation(composer4, "C1369@56388L1091:DatePicker.kt#uh7d8r");
                                if ((i7 & 11) != 2 || !composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2133710592, i7, -1, "androidx.compose.material3.WeekDays.<anonymous>.<anonymous> (DatePicker.kt:1368)");
                                    }
                                    Alignment alignment = null;
                                    Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(SizeKt.m522defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, DatePickerKt.getRecommendedSizeForAccessibility(), 1, null), 0.0f, 1, null);
                                    Arrangement.HorizontalOrVertical spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
                                    Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                                    ArrayList<Pair<String, String>> arrayList3 = arrayList2;
                                    composer4.startReplaceableGroup(693286680);
                                    ComposerKt.sourceInformation(composer4, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
                                    MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(spaceEvenly, centerVertically, composer4, 54);
                                    int i8 = -1323940314;
                                    composer4.startReplaceableGroup(-1323940314);
                                    String str = "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh";
                                    ComposerKt.sourceInformation(composer4, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                    ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                                    int i9 = 2023513938;
                                    String str2 = "C:CompositionLocal.kt#9igjgp";
                                    ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume = composer4.consume(localDensity);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    Density density = (Density) consume;
                                    ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                                    ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume2 = composer4.consume(localLayoutDirection);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    LayoutDirection layoutDirection = (LayoutDirection) consume2;
                                    ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                                    ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume3 = composer4.consume(localViewConfiguration);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
                                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(fillMaxWidth$default);
                                    if (!(composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer4.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    composer3.disableReusing();
                                    Composer m2273constructorimpl = Updater.m2273constructorimpl(composer3);
                                    Updater.m2280setimpl(m2273constructorimpl, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                                    Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                                    Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                                    composer3.enableReusing();
                                    boolean z = 0;
                                    materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer4, 0);
                                    int i10 = 2058660585;
                                    composer4.startReplaceableGroup(2058660585);
                                    ComposerKt.sourceInformationMarkerStart(composer4, -326682283, "C80@4021L9:Row.kt#2w3rfo");
                                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart(composer4, 178836230, "C:DatePicker.kt#uh7d8r");
                                    composer4.startReplaceableGroup(784203502);
                                    ComposerKt.sourceInformation(composer4, "*1381@56891L33,1379@56792L655");
                                    Iterator<T> it = arrayList3.iterator();
                                    while (it.hasNext()) {
                                        final Pair pair = (Pair) it.next();
                                        Modifier.Companion companion = Modifier.INSTANCE;
                                        composer4.startReplaceableGroup(1157296644);
                                        ComposerKt.sourceInformation(composer4, "CC(remember)P(1):Composables.kt#9igjgp");
                                        boolean changed = composer4.changed(pair);
                                        Object rememberedValue = composer3.rememberedValue();
                                        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                                            rememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$WeekDays$1$1$1$1$1$1
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
                                                public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                                                    Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                                                    SemanticsPropertiesKt.setContentDescription(clearAndSetSemantics, pair.getFirst());
                                                }
                                            };
                                            composer4.updateRememberedValue(rememberedValue);
                                        }
                                        composer3.endReplaceableGroup();
                                        Modifier m539sizeVpY3zN4 = SizeKt.m539sizeVpY3zN4(SemanticsModifierKt.clearAndSetSemantics(companion, (Function1) rememberedValue), DatePickerKt.getRecommendedSizeForAccessibility(), DatePickerKt.getRecommendedSizeForAccessibility());
                                        Alignment center = Alignment.INSTANCE.getCenter();
                                        composer4.startReplaceableGroup(733328855);
                                        ComposerKt.sourceInformation(composer4, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, z, composer4, 6);
                                        composer4.startReplaceableGroup(i8);
                                        ComposerKt.sourceInformation(composer4, str);
                                        ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                                        ComposerKt.sourceInformationMarkerStart(composer4, i9, str2);
                                        Object consume4 = composer4.consume(localDensity2);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        Density density2 = (Density) consume4;
                                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                                        ComposerKt.sourceInformationMarkerStart(composer4, i9, str2);
                                        Object consume5 = composer4.consume(localLayoutDirection2);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                                        ComposerKt.sourceInformationMarkerStart(composer4, i9, str2);
                                        Object consume6 = composer4.consume(localViewConfiguration2);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m539sizeVpY3zN4);
                                        if (!(composer3.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer4.createNode(constructor2);
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
                                        materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer4, Integer.valueOf((int) z));
                                        composer4.startReplaceableGroup(i10);
                                        ComposerKt.sourceInformationMarkerStart(composer4, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart(composer4, -540917601, "C1387@57224L201:DatePicker.kt#uh7d8r");
                                        TextKt.m1562Text4IGK_g((String) pair.getSecond(), SizeKt.wrapContentSize$default(Modifier.INSTANCE, alignment, z, 3, alignment), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m4770boximpl(TextAlign.INSTANCE.m4777getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, 48, 0, 130556);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        ComposerKt.sourceInformationMarkerEnd(composer3);
                                        composer3.endReplaceableGroup();
                                        composer3.endNode();
                                        composer3.endReplaceableGroup();
                                        composer3.endReplaceableGroup();
                                        composer4 = composer3;
                                        i10 = i10;
                                        z = z;
                                        str2 = str2;
                                        i9 = i9;
                                        str = str;
                                        i8 = i8;
                                        alignment = alignment;
                                    }
                                    composer3.endReplaceableGroup();
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    composer3.endReplaceableGroup();
                                    composer3.endNode();
                                    composer3.endReplaceableGroup();
                                    composer3.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer3.skipToGroupEnd();
                            }
                        }), composer2, 48);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$WeekDays$2
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

            public final void invoke(Composer composer2, int i6) {
                DatePickerKt.WeekDays(DatePickerColors.this, calendarModel, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    public static final void Month(final CalendarMonth month, final Function1<? super Long, Unit> onDateSelected, final CalendarDate today, final StateData stateData, final boolean z, final Function1<? super Long, Boolean> dateValidator, final DatePickerFormatter dateFormatter, final DatePickerColors colors, Composer composer, final int i) {
        int i2;
        Modifier.Companion companion;
        Composer composer2;
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(onDateSelected, "onDateSelected");
        Intrinsics.checkNotNullParameter(today, "today");
        Intrinsics.checkNotNullParameter(stateData, "stateData");
        Intrinsics.checkNotNullParameter(dateValidator, "dateValidator");
        Intrinsics.checkNotNullParameter(dateFormatter, "dateFormatter");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Composer startRestartGroup = composer.startRestartGroup(-1561090804);
        ComposerKt.sourceInformation(startRestartGroup, "C(Month)P(3,4,7,6,5,2,1)1414@57986L377,1439@58703L15,1443@58865L10,1442@58825L5037:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(month) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(onDateSelected) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(today) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(stateData) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(z) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(dateValidator) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changed(dateFormatter) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changed(colors) ? 8388608 : 4194304;
        }
        final int i3 = i2;
        if ((23967451 & i3) != 4793490 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1561090804, i3, -1, "androidx.compose.material3.Month (DatePicker.kt:1404)");
            }
            Boolean valueOf = Boolean.valueOf(z);
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(valueOf);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = SnapshotStateKt.derivedStateOf(new Function0<SelectedRangeInfo>() { // from class: androidx.compose.material3.DatePickerKt$Month$rangeSelectionInfo$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final SelectedRangeInfo invoke() {
                        if (z) {
                            return SelectedRangeInfo.INSTANCE.calculateRangeInfo(month, stateData.getSelectedStartDate().getValue(), stateData.getSelectedEndDate().getValue());
                        }
                        return null;
                    }
                });
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final State state = (State) rememberedValue;
            startRestartGroup.startReplaceableGroup(-2019479227);
            ComposerKt.sourceInformation(startRestartGroup, "1429@58464L177");
            if (z) {
                Modifier.Companion companion2 = Modifier.INSTANCE;
                startRestartGroup.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed2 = startRestartGroup.changed(state) | startRestartGroup.changed(colors);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue2 = (Function1) new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$rangeSelectionDrawModifier$1$1
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
                            SelectedRangeInfo value = state.getValue();
                            if (value != null) {
                                DateRangePickerKt.m1162drawRangeBackgroundmxwnekA(drawWithContent, value, colors.getDayInSelectionRangeContainerColor());
                            }
                            drawWithContent.drawContent();
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                startRestartGroup.endReplaceableGroup();
                companion = DrawModifierKt.drawWithContent(companion2, (Function1) rememberedValue2);
            } else {
                companion = Modifier.INSTANCE;
            }
            final Modifier modifier = companion;
            startRestartGroup.endReplaceableGroup();
            final Locale defaultLocale = CalendarModel_androidKt.defaultLocale(startRestartGroup, 0);
            final MutableState<CalendarDate> selectedStartDate = stateData.getSelectedStartDate();
            final MutableState<CalendarDate> selectedEndDate = stateData.getSelectedEndDate();
            composer2 = startRestartGroup;
            TextKt.ProvideTextStyle(TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), DatePickerModalTokens.INSTANCE.getDateLabelTextFont()), ComposableLambdaKt.composableLambda(composer2, -1776200645, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1
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

                public final void invoke(Composer composer3, int i4) {
                    int i5;
                    int i6;
                    int i7;
                    boolean z2;
                    MutableState<CalendarDate> mutableState;
                    MutableState<CalendarDate> mutableState2;
                    CalendarMonth calendarMonth;
                    CalendarDate calendarDate;
                    Locale locale;
                    StateData stateData2;
                    Function1<Long, Unit> function1;
                    Function1<Long, Boolean> function12;
                    String str;
                    String str2;
                    char c;
                    final StateData stateData3;
                    Object derivedStateOf;
                    String dayContentDescription;
                    ComposerKt.sourceInformation(composer3, "C1446@58969L4887:DatePicker.kt#uh7d8r");
                    if ((i4 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1776200645, i4, -1, "androidx.compose.material3.Month.<anonymous> (DatePicker.kt:1444)");
                        }
                        Modifier then = SizeKt.m526requiredHeight3ABfNKs(Modifier.INSTANCE, Dp.m4883constructorimpl(DatePickerKt.getRecommendedSizeForAccessibility() * 6)).then(Modifier.this);
                        Arrangement.HorizontalOrVertical spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
                        CalendarMonth calendarMonth2 = month;
                        CalendarDate calendarDate2 = today;
                        MutableState<CalendarDate> mutableState3 = selectedStartDate;
                        MutableState<CalendarDate> mutableState4 = selectedEndDate;
                        final boolean z3 = z;
                        int i8 = i3;
                        DatePickerFormatter datePickerFormatter = dateFormatter;
                        Locale locale2 = defaultLocale;
                        Function1<Long, Unit> function13 = onDateSelected;
                        DatePickerColors datePickerColors = colors;
                        StateData stateData4 = stateData;
                        Function1<Long, Boolean> function14 = dateValidator;
                        composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation(composer3, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
                        Function1<Long, Boolean> function15 = function14;
                        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceEvenly, Alignment.INSTANCE.getStart(), composer3, 6);
                        composer3.startReplaceableGroup(-1323940314);
                        String str3 = "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh";
                        ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                        Locale locale3 = locale2;
                        String str4 = "C:CompositionLocal.kt#9igjgp";
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume = composer3.consume(localDensity);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Density density = (Density) consume;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume2 = composer3.consume(localLayoutDirection);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        LayoutDirection layoutDirection = (LayoutDirection) consume2;
                        Function1<Long, Unit> function16 = function13;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume3 = composer3.consume(localViewConfiguration);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(then);
                        StateData stateData5 = stateData4;
                        if (!(composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer3.startReusableNode();
                        if (composer3.getInserting()) {
                            composer3.createNode(constructor);
                        } else {
                            composer3.useNode();
                        }
                        composer3.disableReusing();
                        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer3);
                        Updater.m2280setimpl(m2273constructorimpl, columnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer3.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                        composer3.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer3, 276693704, "C79@4027L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        String str5 = "C:DatePicker.kt#uh7d8r";
                        ComposerKt.sourceInformationMarkerStart(composer3, -1111255490, "C:DatePicker.kt#uh7d8r");
                        composer3.startReplaceableGroup(-713647587);
                        ComposerKt.sourceInformation(composer3, "*1453@59267L4565");
                        int i9 = 0;
                        int i10 = 0;
                        int i11 = 6;
                        while (i10 < i11) {
                            Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Arrangement.HorizontalOrVertical spaceEvenly2 = Arrangement.INSTANCE.getSpaceEvenly();
                            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                            composer3.startReplaceableGroup(693286680);
                            ComposerKt.sourceInformation(composer3, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
                            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(spaceEvenly2, centerVertically, composer3, 54);
                            composer3.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation(composer3, str3);
                            ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, str4);
                            Object consume4 = composer3.consume(localDensity2);
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            Density density2 = (Density) consume4;
                            String str6 = str3;
                            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, str4);
                            Object consume5 = composer3.consume(localLayoutDirection2);
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                            int i12 = i9;
                            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                            ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, str4);
                            Object consume6 = composer3.consume(localViewConfiguration2);
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(fillMaxWidth$default);
                            int i13 = i10;
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
                            Updater.m2280setimpl(m2273constructorimpl2, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                            Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                            Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                            composer3.enableReusing();
                            materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                            char c2 = 43753;
                            composer3.startReplaceableGroup(2058660585);
                            ComposerKt.sourceInformationMarkerStart(composer3, -326682283, "C80@4021L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composer3, -1481813225, str5);
                            composer3.startReplaceableGroup(-1111255211);
                            ComposerKt.sourceInformation(composer3, "");
                            int i14 = 0;
                            int i15 = i12;
                            while (i14 < 7) {
                                if (i15 < calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth() || i15 >= calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth() + calendarMonth2.getNumberOfDays()) {
                                    i5 = i14;
                                    i6 = i15;
                                    i7 = i8;
                                    z2 = z3;
                                    mutableState = mutableState4;
                                    mutableState2 = mutableState3;
                                    calendarMonth = calendarMonth2;
                                    calendarDate = calendarDate2;
                                    locale = locale3;
                                    stateData2 = stateData5;
                                    function1 = function16;
                                    function12 = function15;
                                    str = str5;
                                    str2 = str4;
                                    c = c2;
                                    composer3.startReplaceableGroup(382636990);
                                    ComposerKt.sourceInformation(composer3, "1464@59838L291");
                                    SpacerKt.Spacer(SizeKt.m531requiredSizeVpY3zN4(Modifier.INSTANCE, DatePickerKt.getRecommendedSizeForAccessibility(), DatePickerKt.getRecommendedSizeForAccessibility()), composer3, 6);
                                    composer3.endReplaceableGroup();
                                } else {
                                    composer3.startReplaceableGroup(382637385);
                                    ComposerKt.sourceInformation(composer3, "1478@60757L644,1489@61458L366,1504@62314L32,1509@62702L129,1501@62133L1597");
                                    final int daysFromStartOfWeekToFirstOfMonth = i15 - calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth();
                                    calendarMonth = calendarMonth2;
                                    final long startUtcTimeMillis = (daysFromStartOfWeekToFirstOfMonth * CalendarModelKt.MillisecondsIn24Hours) + calendarMonth2.getStartUtcTimeMillis();
                                    boolean z4 = startUtcTimeMillis == calendarDate2.getUtcTimeMillis();
                                    CalendarDate value = mutableState3.getValue();
                                    boolean z5 = value != null && startUtcTimeMillis == value.getUtcTimeMillis();
                                    CalendarDate value2 = mutableState4.getValue();
                                    boolean z6 = value2 != null && startUtcTimeMillis == value2.getUtcTimeMillis();
                                    Object valueOf2 = Boolean.valueOf(z3);
                                    Object valueOf3 = Long.valueOf(startUtcTimeMillis);
                                    int i16 = (i8 >> 12) & 14;
                                    composer3.startReplaceableGroup(511388516);
                                    ComposerKt.sourceInformation(composer3, "CC(remember)P(1,2):Composables.kt#9igjgp");
                                    boolean changed3 = composer3.changed(valueOf2) | composer3.changed(valueOf3);
                                    Object rememberedValue3 = composer3.rememberedValue();
                                    if (changed3 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                                        stateData3 = stateData5;
                                        derivedStateOf = SnapshotStateKt.derivedStateOf(new Function0<Boolean>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$1$1$1$inRange$1$1
                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(0);
                                            }

                                            /* JADX WARN: Can't rename method to resolve collision */
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Boolean invoke() {
                                                boolean z7;
                                                StateData stateData6 = StateData.this;
                                                boolean z8 = z3;
                                                long j = startUtcTimeMillis;
                                                if (z8) {
                                                    CalendarDate value3 = stateData6.getSelectedStartDate().getValue();
                                                    if (j >= (value3 != null ? value3.getUtcTimeMillis() : Long.MAX_VALUE)) {
                                                        CalendarDate value4 = stateData6.getSelectedEndDate().getValue();
                                                        if (j <= (value4 != null ? value4.getUtcTimeMillis() : Long.MIN_VALUE)) {
                                                            z7 = true;
                                                            return Boolean.valueOf(z7);
                                                        }
                                                    }
                                                }
                                                z7 = false;
                                                return Boolean.valueOf(z7);
                                            }
                                        });
                                        composer3.updateRememberedValue(derivedStateOf);
                                    } else {
                                        derivedStateOf = rememberedValue3;
                                        stateData3 = stateData5;
                                    }
                                    composer3.endReplaceableGroup();
                                    State state2 = (State) derivedStateOf;
                                    calendarDate = calendarDate2;
                                    function12 = function15;
                                    stateData2 = stateData3;
                                    boolean z7 = z3;
                                    i5 = i14;
                                    i6 = i15;
                                    MutableState<CalendarDate> mutableState5 = mutableState3;
                                    final Function1<Long, Unit> function17 = function16;
                                    str = str5;
                                    MutableState<CalendarDate> mutableState6 = mutableState4;
                                    Locale locale4 = locale3;
                                    str2 = str4;
                                    dayContentDescription = DatePickerKt.dayContentDescription(z3, z4, z5, z6, ((Boolean) state2.getValue()).booleanValue(), composer3, i16);
                                    String formatWithSkeleton = CalendarModel_androidKt.formatWithSkeleton(startUtcTimeMillis, datePickerFormatter.getSelectedDateDescriptionSkeleton(), locale4);
                                    Modifier.Companion companion3 = Modifier.INSTANCE;
                                    boolean z8 = z5 || z6;
                                    Object valueOf4 = Long.valueOf(startUtcTimeMillis);
                                    composer3.startReplaceableGroup(511388516);
                                    ComposerKt.sourceInformation(composer3, "CC(remember)P(1,2):Composables.kt#9igjgp");
                                    boolean changed4 = composer3.changed(valueOf4) | composer3.changed(function17);
                                    Object rememberedValue4 = composer3.rememberedValue();
                                    if (changed4 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                                        rememberedValue4 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$1$1$1$1$1
                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            /* JADX WARN: Multi-variable type inference failed */
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
                                                function17.invoke(Long.valueOf(startUtcTimeMillis));
                                            }
                                        };
                                        composer3.updateRememberedValue(rememberedValue4);
                                    }
                                    composer3.endReplaceableGroup();
                                    Function0 function0 = (Function0) rememberedValue4;
                                    Object valueOf5 = Long.valueOf(startUtcTimeMillis);
                                    composer3.startReplaceableGroup(1157296644);
                                    ComposerKt.sourceInformation(composer3, "CC(remember)P(1):Composables.kt#9igjgp");
                                    boolean changed5 = composer3.changed(valueOf5);
                                    Object rememberedValue5 = composer3.rememberedValue();
                                    if (changed5 || rememberedValue5 == Composer.INSTANCE.getEmpty()) {
                                        rememberedValue5 = Boolean.valueOf(function12.invoke(Long.valueOf(startUtcTimeMillis)).booleanValue());
                                        composer3.updateRememberedValue(rememberedValue5);
                                    }
                                    composer3.endReplaceableGroup();
                                    boolean booleanValue = ((Boolean) rememberedValue5).booleanValue();
                                    boolean booleanValue2 = ((Boolean) state2.getValue()).booleanValue();
                                    String str7 = dayContentDescription != null ? dayContentDescription + ", " + formatWithSkeleton : formatWithSkeleton;
                                    boolean z9 = z8;
                                    boolean z10 = z5;
                                    boolean z11 = z4;
                                    c = 43753;
                                    i7 = i8;
                                    z2 = z7;
                                    locale = locale4;
                                    mutableState = mutableState6;
                                    function1 = function17;
                                    mutableState2 = mutableState5;
                                    DatePickerKt.Day(companion3, z9, function0, z10, booleanValue, z11, booleanValue2, str7, datePickerColors, ComposableLambdaKt.composableLambda(composer3, 1633583293, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$1$1$1$3
                                        /* JADX INFO: Access modifiers changed from: package-private */
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(2);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(Composer composer4, int i17) {
                                            ComposerKt.sourceInformation(composer4, "C1521@63359L341:DatePicker.kt#uh7d8r");
                                            if ((i17 & 11) != 2 || !composer4.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1633583293, i17, -1, "androidx.compose.material3.Month.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1520)");
                                                }
                                                TextKt.m1562Text4IGK_g(DatePickerKt.toLocalString(daysFromStartOfWeekToFirstOfMonth + 1), SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$1$1$1$3.1
                                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                                    public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                                                        Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                                        invoke2(semanticsPropertyReceiver);
                                                        return Unit.INSTANCE;
                                                    }
                                                }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m4770boximpl(TextAlign.INSTANCE.m4777getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 0, 0, 130556);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            composer4.skipToGroupEnd();
                                        }
                                    }), composer3, ((i8 << 3) & 234881024) | 805306374);
                                    composer3.endReplaceableGroup();
                                }
                                i15 = i6 + 1;
                                i14 = i5 + 1;
                                function15 = function12;
                                str4 = str2;
                                c2 = c;
                                str5 = str;
                                calendarMonth2 = calendarMonth;
                                i8 = i7;
                                z3 = z2;
                                mutableState4 = mutableState;
                                locale3 = locale;
                                mutableState3 = mutableState2;
                                function16 = function1;
                                calendarDate2 = calendarDate;
                                stateData5 = stateData2;
                            }
                            int i17 = i15;
                            composer3.endReplaceableGroup();
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            composer3.endReplaceableGroup();
                            composer3.endNode();
                            composer3.endReplaceableGroup();
                            composer3.endReplaceableGroup();
                            i10 = i13 + 1;
                            i11 = 6;
                            str3 = str6;
                            locale3 = locale3;
                            function16 = function16;
                            calendarDate2 = calendarDate2;
                            stateData5 = stateData5;
                            i9 = i17;
                        }
                        composer3.endReplaceableGroup();
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endReplaceableGroup();
                        composer3.endNode();
                        composer3.endReplaceableGroup();
                        composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), composer2, 48);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$2
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

            public final void invoke(Composer composer3, int i4) {
                DatePickerKt.Month(CalendarMonth.this, onDateSelected, today, stateData, z, dateValidator, dateFormatter, colors, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String dayContentDescription(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Composer composer, int i) {
        composer.startReplaceableGroup(502032503);
        ComposerKt.sourceInformation(composer, "C(dayContentDescription)P(4,3,2)1563@64712L54:DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(502032503, i, -1, "androidx.compose.material3.dayContentDescription (DatePicker.kt:1538)");
        }
        StringBuilder sb = new StringBuilder();
        composer.startReplaceableGroup(-852204210);
        ComposerKt.sourceInformation(composer, "");
        if (z) {
            if (z3) {
                composer.startReplaceableGroup(-852204120);
                ComposerKt.sourceInformation(composer, "1549@64220L56");
                sb.append(Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1448getDateRangePickerStartHeadlineadMyvUU(), composer, 6));
                composer.endReplaceableGroup();
            } else if (z4) {
                composer.startReplaceableGroup(-852203980);
                ComposerKt.sourceInformation(composer, "1553@64360L54");
                sb.append(Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1445getDateRangePickerEndHeadlineadMyvUU(), composer, 6));
                composer.endReplaceableGroup();
            } else if (z5) {
                composer.startReplaceableGroup(-852203842);
                ComposerKt.sourceInformation(composer, "1557@64498L53");
                sb.append(Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1444getDateRangePickerDayInRangeadMyvUU(), composer, 6));
                composer.endReplaceableGroup();
            } else {
                composer.startReplaceableGroup(-852203741);
                composer.endReplaceableGroup();
            }
        }
        composer.endReplaceableGroup();
        if (z2) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1440getDatePickerTodayDescriptionadMyvUU(), composer, 6));
        }
        String sb2 = sb.length() == 0 ? null : sb.toString();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Day(final Modifier modifier, final boolean z, final Function0<Unit> function0, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final String str, final DatePickerColors datePickerColors, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(-1434777861);
        ComposerKt.sourceInformation(startRestartGroup, "C(Day)P(6,8,7!1,4,9,5,3)1594@65783L102,1599@65971L9,1600@66005L129,1605@66172L150,1582@65195L1472:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i & 57344) == 0) {
            i2 |= startRestartGroup.changed(z3) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(z4) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changed(z5) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changed(str) ? 8388608 : 4194304;
        }
        if ((234881024 & i) == 0) {
            i2 |= startRestartGroup.changed(datePickerColors) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((1879048192 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 536870912 : 268435456;
        }
        final int i3 = i2;
        if ((1533916891 & i3) != 306783378 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1434777861, i3, -1, "androidx.compose.material3.Day (DatePicker.kt:1570)");
            }
            Modifier m531requiredSizeVpY3zN4 = SizeKt.m531requiredSizeVpY3zN4(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier), DatePickerModalTokens.INSTANCE.m1797getDateStateLayerWidthD9Ej5fM(), DatePickerModalTokens.INSTANCE.m1796getDateStateLayerHeightD9Ej5fM());
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(str);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Day$1$1
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
                        SemanticsPropertiesKt.setText(semantics, new AnnotatedString(str, null, null, 6, null));
                        SemanticsPropertiesKt.m4270setRolekuIjeqM(semantics, Role.INSTANCE.m4256getButtono7Vup1c());
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier semantics = SemanticsModifierKt.semantics(m531requiredSizeVpY3zN4, true, (Function1) rememberedValue);
            Shape shape = ShapesKt.toShape(DatePickerModalTokens.INSTANCE.getDateContainerShape(), startRestartGroup, 6);
            int i4 = i3 >> 3;
            int i5 = i4 & 14;
            int i6 = i3 >> 15;
            long m2649unboximpl = datePickerColors.dayContainerColor$material3_release(z, z3, z2, startRestartGroup, i5 | ((i3 >> 9) & 112) | (i4 & 896) | (i6 & 7168)).getValue().m2649unboximpl();
            int i7 = (i6 & 14) | (i3 & 112);
            int i8 = i3 >> 12;
            int i9 = i4 & 7168;
            composer2 = startRestartGroup;
            SurfaceKt.m1485Surfaced85dljk(z, function0, semantics, z3, shape, m2649unboximpl, datePickerColors.dayContentColor$material3_release(z4, z, z5, z3, startRestartGroup, i7 | (i8 & 896) | i9 | (i8 & 57344)).getValue().m2649unboximpl(), 0.0f, 0.0f, (!z4 || z) ? null : BorderStrokeKt.m196BorderStrokecXLIe8U(DatePickerModalTokens.INSTANCE.m1798getDateTodayContainerOutlineWidthD9Ej5fM(), datePickerColors.getTodayDateBorderColor()), (MutableInteractionSource) null, ComposableLambdaKt.composableLambda(startRestartGroup, -2031780827, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Day$2
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

                public final void invoke(Composer composer3, int i10) {
                    ComposerKt.sourceInformation(composer3, "C1620@66587L74:DatePicker.kt#uh7d8r");
                    if ((i10 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2031780827, i10, -1, "androidx.compose.material3.Day.<anonymous> (DatePicker.kt:1619)");
                        }
                        Alignment center = Alignment.INSTANCE.getCenter();
                        Function2<Composer, Integer, Unit> function22 = function2;
                        int i11 = i3;
                        composer3.startReplaceableGroup(733328855);
                        ComposerKt.sourceInformation(composer3, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                        Modifier.Companion companion = Modifier.INSTANCE;
                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, false, composer3, 6);
                        composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume = composer3.consume(localDensity);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Density density = (Density) consume;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume2 = composer3.consume(localLayoutDirection);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        LayoutDirection layoutDirection = (LayoutDirection) consume2;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume3 = composer3.consume(localViewConfiguration);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
                        if (!(composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer3.startReusableNode();
                        if (composer3.getInserting()) {
                            composer3.createNode(constructor);
                        } else {
                            composer3.useNode();
                        }
                        composer3.disableReusing();
                        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer3);
                        Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer3.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                        composer3.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer3, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer3, -806758821, "C1621@66642L9:DatePicker.kt#uh7d8r");
                        function22.invoke(composer3, Integer.valueOf((i11 >> 27) & 14));
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endReplaceableGroup();
                        composer3.endNode();
                        composer3.endReplaceableGroup();
                        composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), composer2, i5 | (i4 & 112) | i9, 48, 1408);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Day$3
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

            public final void invoke(Composer composer3, int i10) {
                DatePickerKt.Day(Modifier.this, z, function0, z2, z3, z4, z5, str, datePickerColors, function2, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void YearPicker(final Modifier modifier, final Function1<? super Integer, Unit> function1, final DatePickerColors datePickerColors, final StateData stateData, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1038904873);
        ComposerKt.sourceInformation(startRestartGroup, "C(YearPicker)P(1,2)1635@66923L10,1634@66875L4042:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(datePickerColors) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(stateData) ? 2048 : 1024;
        }
        final int i3 = i2;
        if ((i3 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1038904873, i3, -1, "androidx.compose.material3.YearPicker (DatePicker.kt:1628)");
            }
            TextKt.ProvideTextStyle(TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), DatePickerModalTokens.INSTANCE.getSelectionYearLabelTextFont()), ComposableLambdaKt.composableLambda(startRestartGroup, -145469688, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1
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
                    long containerColor;
                    float f;
                    ComposerKt.sourceInformation(composer2, "C1640@67154L329,1648@67656L11,1653@67868L24,1654@67933L53,1655@68025L51,1656@68085L2826:DatePicker.kt#uh7d8r");
                    if ((i4 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-145469688, i4, -1, "androidx.compose.material3.YearPicker.<anonymous> (DatePicker.kt:1636)");
                        }
                        final int year = StateData.this.getCurrentMonth().getYear();
                        final int year2 = StateData.this.getDisplayedMonth().getYear();
                        final LazyGridState rememberLazyGridState = LazyGridStateKt.rememberLazyGridState(Integer.max(0, (year2 - StateData.this.getYearRange().getFirst()) - 3), 0, composer2, 0, 2);
                        composer2.startReplaceableGroup(-969349200);
                        ComposerKt.sourceInformation(composer2, "1649@67705L11,1649@67769L7");
                        if (Color.m2640equalsimpl0(datePickerColors.getContainerColor(), MaterialTheme.INSTANCE.getColorScheme(composer2, 6).m1068getSurface0d7_KjU())) {
                            ColorScheme colorScheme = MaterialTheme.INSTANCE.getColorScheme(composer2, 6);
                            ProvidableCompositionLocal<Dp> localAbsoluteTonalElevation = SurfaceKt.getLocalAbsoluteTonalElevation();
                            ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                            Object consume = composer2.consume(localAbsoluteTonalElevation);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            containerColor = ColorSchemeKt.m1109surfaceColorAtElevation3ABfNKs(colorScheme, ((Dp) consume).m4897unboximpl());
                        } else {
                            containerColor = datePickerColors.getContainerColor();
                        }
                        long j = containerColor;
                        composer2.endReplaceableGroup();
                        composer2.startReplaceableGroup(773894976);
                        ComposerKt.sourceInformation(composer2, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp");
                        composer2.startReplaceableGroup(-492369756);
                        ComposerKt.sourceInformation(composer2, "CC(remember):Composables.kt#9igjgp");
                        Object rememberedValue = composer2.rememberedValue();
                        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composer2));
                            composer2.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                            rememberedValue = compositionScopedCoroutineScopeCanceller;
                        }
                        composer2.endReplaceableGroup();
                        final CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                        composer2.endReplaceableGroup();
                        final String m1475getStringNWtq28 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1431getDatePickerScrollToShowEarlierYearsadMyvUU(), composer2, 6);
                        final String m1475getStringNWtq282 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1432getDatePickerScrollToShowLaterYearsadMyvUU(), composer2, 6);
                        GridCells.Fixed fixed = new GridCells.Fixed(3);
                        Modifier semantics$default = SemanticsModifierKt.semantics$default(BackgroundKt.m169backgroundbw27NRU$default(modifier, j, null, 2, null), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver semantics) {
                                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                SemanticsPropertiesKt.setVerticalScrollAxisRange(semantics, new ScrollAxisRange(new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.1.1
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.1.2
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, false, 4, null));
                            }
                        }, 1, null);
                        Arrangement.HorizontalOrVertical spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
                        Arrangement arrangement = Arrangement.INSTANCE;
                        f = DatePickerKt.YearsVerticalPadding;
                        final StateData stateData2 = StateData.this;
                        final Function1<Integer, Unit> function12 = function1;
                        final int i5 = i3;
                        final DatePickerColors datePickerColors2 = datePickerColors;
                        LazyGridDslKt.LazyVerticalGrid(fixed, semantics$default, rememberLazyGridState, null, false, arrangement.m401spacedBy0680j_4(f), spaceEvenly, null, false, new Function1<LazyGridScope, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(LazyGridScope lazyGridScope) {
                                invoke2(lazyGridScope);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(LazyGridScope LazyVerticalGrid) {
                                Intrinsics.checkNotNullParameter(LazyVerticalGrid, "$this$LazyVerticalGrid");
                                int count = CollectionsKt.count(StateData.this.getYearRange());
                                final StateData stateData3 = StateData.this;
                                final int i6 = year2;
                                final int i7 = year;
                                final Function1<Integer, Unit> function13 = function12;
                                final int i8 = i5;
                                final DatePickerColors datePickerColors3 = datePickerColors2;
                                final LazyGridState lazyGridState = rememberLazyGridState;
                                final CoroutineScope coroutineScope2 = coroutineScope;
                                final String str = m1475getStringNWtq28;
                                final String str2 = m1475getStringNWtq282;
                                LazyGridScope.items$default(LazyVerticalGrid, count, null, null, null, ComposableLambdaKt.composableLambdaInstance(1369226173, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.2.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(4);
                                    }

                                    @Override // kotlin.jvm.functions.Function4
                                    public /* bridge */ /* synthetic */ Unit invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer3, Integer num2) {
                                        invoke(lazyGridItemScope, num.intValue(), composer3, num2.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(LazyGridItemScope items, final int i9, Composer composer3, int i10) {
                                        int i11;
                                        Intrinsics.checkNotNullParameter(items, "$this$items");
                                        ComposerKt.sourceInformation(composer3, "C1697@70359L32,*1698@70427L54,1672@68906L1981:DatePicker.kt#uh7d8r");
                                        if ((i10 & 112) == 0) {
                                            i11 = (composer3.changed(i9) ? 32 : 16) | i10;
                                        } else {
                                            i11 = i10;
                                        }
                                        if ((i11 & 721) != 144 || !composer3.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1369226173, i10, -1, "androidx.compose.material3.YearPicker.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1669)");
                                            }
                                            final int first = i9 + StateData.this.getYearRange().getFirst();
                                            final String localString = DatePickerKt.toLocalString(first);
                                            Modifier m531requiredSizeVpY3zN4 = SizeKt.m531requiredSizeVpY3zN4(Modifier.INSTANCE, DatePickerModalTokens.INSTANCE.m1805getSelectionYearContainerWidthD9Ej5fM(), DatePickerModalTokens.INSTANCE.m1804getSelectionYearContainerHeightD9Ej5fM());
                                            final LazyGridState lazyGridState2 = lazyGridState;
                                            final CoroutineScope coroutineScope3 = coroutineScope2;
                                            final String str3 = str;
                                            final String str4 = str2;
                                            Modifier semantics$default2 = SemanticsModifierKt.semantics$default(m531requiredSizeVpY3zN4, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.2.1.1
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
                                                    List customScrollActions;
                                                    LazyGridItemInfo lazyGridItemInfo;
                                                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                                    if (LazyGridState.this.getFirstVisibleItemIndex() == i9 || ((lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.lastOrNull((List) LazyGridState.this.getLayoutInfo().getVisibleItemsInfo())) != null && lazyGridItemInfo.getIndex() == i9)) {
                                                        customScrollActions = DatePickerKt.customScrollActions(LazyGridState.this, coroutineScope3, str3, str4);
                                                    } else {
                                                        customScrollActions = CollectionsKt.emptyList();
                                                    }
                                                    SemanticsPropertiesKt.setCustomActions(semantics, customScrollActions);
                                                }
                                            }, 1, null);
                                            boolean z = first == i6;
                                            boolean z2 = first == i7;
                                            Function1<Integer, Unit> function14 = function13;
                                            Integer valueOf = Integer.valueOf(first);
                                            final Function1<Integer, Unit> function15 = function13;
                                            composer3.startReplaceableGroup(511388516);
                                            ComposerKt.sourceInformation(composer3, "CC(remember)P(1,2):Composables.kt#9igjgp");
                                            boolean changed = composer3.changed(function14) | composer3.changed(valueOf);
                                            Object rememberedValue2 = composer3.rememberedValue();
                                            if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                                                rememberedValue2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1$2$1$2$1
                                                    /* JADX INFO: Access modifiers changed from: package-private */
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    /* JADX WARN: Multi-variable type inference failed */
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
                                                        function15.invoke(Integer.valueOf(first));
                                                    }
                                                };
                                                composer3.updateRememberedValue(rememberedValue2);
                                            }
                                            composer3.endReplaceableGroup();
                                            Function0 function0 = (Function0) rememberedValue2;
                                            String format = String.format(Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1429getDatePickerNavigateToYearDescriptionadMyvUU(), composer3, 6), Arrays.copyOf(new Object[]{localString}, 1));
                                            Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
                                            DatePickerKt.Year(semantics$default2, z, z2, function0, format, datePickerColors3, ComposableLambdaKt.composableLambda(composer3, 2095319565, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.2.1.3
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(2);
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                                    invoke(composer4, num.intValue());
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(Composer composer4, int i12) {
                                                    ComposerKt.sourceInformation(composer4, "C1702@70606L263:DatePicker.kt#uh7d8r");
                                                    if ((i12 & 11) != 2 || !composer4.getSkipping()) {
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(2095319565, i12, -1, "androidx.compose.material3.YearPicker.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1701)");
                                                        }
                                                        TextKt.m1562Text4IGK_g(localString, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.2.1.3.1
                                                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                                            public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                                                                Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                                                            }

                                                            @Override // kotlin.jvm.functions.Function1
                                                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                                                invoke2(semanticsPropertyReceiver);
                                                                return Unit.INSTANCE;
                                                            }
                                                        }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m4770boximpl(TextAlign.INSTANCE.m4777getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer4, 0, 0, 130556);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    composer4.skipToGroupEnd();
                                                }
                                            }), composer3, ((i8 << 9) & 458752) | 1572864);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        composer3.skipToGroupEnd();
                                    }
                                }), 14, null);
                            }
                        }, composer2, 1769472, 408);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }), startRestartGroup, 48);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$2
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
                DatePickerKt.YearPicker(Modifier.this, function1, datePickerColors, stateData, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Year(final Modifier modifier, final boolean z, final boolean z2, final Function0<Unit> function0, final String str, final DatePickerColors datePickerColors, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(-1441573940);
        ComposerKt.sourceInformation(startRestartGroup, "C(Year)P(4,6,2,5,3)1725@71201L353,1742@71917L90,1746@72076L9,1747@72110L39,1748@72187L98,1736@71559L891:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function0) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(str) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(datePickerColors) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 1048576 : 524288;
        }
        final int i3 = i2;
        if ((2995931 & i3) != 599186 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1441573940, i3, -1, "androidx.compose.material3.Year (DatePicker.kt:1716)");
            }
            Boolean valueOf = Boolean.valueOf(z2);
            Boolean valueOf2 = Boolean.valueOf(z);
            int i4 = i3 >> 6;
            int i5 = (i4 & 14) | (i3 & 112);
            startRestartGroup.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(valueOf) | startRestartGroup.changed(valueOf2);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (!z2 || z) ? null : BorderStrokeKt.m196BorderStrokecXLIe8U(DatePickerModalTokens.INSTANCE.m1798getDateTodayContainerOutlineWidthD9Ej5fM(), datePickerColors.getTodayDateBorderColor());
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            BorderStroke borderStroke = (BorderStroke) rememberedValue;
            int i6 = i3 >> 12;
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(str);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Year$1$1
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
                        SemanticsPropertiesKt.setText(semantics, new AnnotatedString(str, null, null, 6, null));
                        SemanticsPropertiesKt.m4270setRolekuIjeqM(semantics, Role.INSTANCE.m4256getButtono7Vup1c());
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            int i7 = (i3 >> 3) & 14;
            composer2 = startRestartGroup;
            SurfaceKt.m1485Surfaced85dljk(z, function0, SemanticsModifierKt.semantics(modifier, true, (Function1) rememberedValue2), false, ShapesKt.toShape(DatePickerModalTokens.INSTANCE.getSelectionYearStateLayerShape(), startRestartGroup, 6), datePickerColors.yearContainerColor$material3_release(z, startRestartGroup, i7 | (i6 & 112)).getValue().m2649unboximpl(), datePickerColors.yearContentColor$material3_release(z2, z, startRestartGroup, ((i3 >> 9) & 896) | i5).getValue().m2649unboximpl(), 0.0f, 0.0f, borderStroke, (MutableInteractionSource) null, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.composableLambda(startRestartGroup, -68753950, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Year$2
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
                    ComposerKt.sourceInformation(composer3, "C1754@72334L110:DatePicker.kt#uh7d8r");
                    if ((i8 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-68753950, i8, -1, "androidx.compose.material3.Year.<anonymous> (DatePicker.kt:1753)");
                        }
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Alignment center = Alignment.INSTANCE.getCenter();
                        Function2<Composer, Integer, Unit> function22 = function2;
                        int i9 = i3;
                        composer3.startReplaceableGroup(733328855);
                        ComposerKt.sourceInformation(composer3, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, false, composer3, 6);
                        composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation(composer3, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume = composer3.consume(localDensity);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        Density density = (Density) consume;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume2 = composer3.consume(localLayoutDirection);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        LayoutDirection layoutDirection = (LayoutDirection) consume2;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer3, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume3 = composer3.consume(localViewConfiguration);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(fillMaxWidth$default);
                        if (!(composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer3.startReusableNode();
                        if (composer3.getInserting()) {
                            composer3.createNode(constructor);
                        } else {
                            composer3.useNode();
                        }
                        composer3.disableReusing();
                        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer3);
                        Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer3.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer3)), composer3, 0);
                        composer3.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer3, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer3, 873739531, "C1755@72425L9:DatePicker.kt#uh7d8r");
                        function22.invoke(composer3, Integer.valueOf((i9 >> 18) & 14));
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endReplaceableGroup();
                        composer3.endNode();
                        composer3.endReplaceableGroup();
                        composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), startRestartGroup, i7 | (i4 & 112), 48, 1416);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Year$3
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
                DatePickerKt.Year(Modifier.this, z, z2, function0, str, datePickerColors, function2, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void MonthsNavigation(final Modifier modifier, final boolean z, final boolean z2, final boolean z3, final String str, final Function0<Unit> function0, final Function0<Unit> function02, final Function0<Unit> function03, Composer composer, final int i) {
        int i2;
        Arrangement.HorizontalOrVertical spaceBetween;
        Composer composer2;
        Composer startRestartGroup = composer.startRestartGroup(-1127095896);
        ComposerKt.sourceInformation(startRestartGroup, "C(MonthsNavigation)P(!2,5,7,6)1775@72887L2078:DatePicker.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(z3) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(str) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function0) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function02) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function03) ? 8388608 : 4194304;
        }
        final int i3 = i2;
        if ((23967451 & i3) != 4793490 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1127095896, i3, -1, "androidx.compose.material3.MonthsNavigation (DatePicker.kt:1765)");
            }
            Modifier m526requiredHeight3ABfNKs = SizeKt.m526requiredHeight3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), MonthYearHeight);
            if (z3) {
                spaceBetween = Arrangement.INSTANCE.getStart();
            } else {
                spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
            }
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            startRestartGroup.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(spaceBetween, centerVertically, startRestartGroup, 48);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m526requiredHeight3ABfNKs);
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
            Updater.m2280setimpl(m2273constructorimpl, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -326682283, "C80@4021L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1911928903, "C1787@73264L536:DatePicker.kt#uh7d8r");
            YearPickerMenuButton(function03, z3, null, ComposableLambdaKt.composableLambda(startRestartGroup, -1156508456, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i4) {
                    ComposerKt.sourceInformation(composer3, "C1792@73474L315,1791@73400L390:DatePicker.kt#uh7d8r");
                    if ((i4 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1156508456, i4, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous> (DatePicker.kt:1790)");
                        }
                        String str2 = str;
                        Modifier.Companion companion = Modifier.INSTANCE;
                        final String str3 = str;
                        composer3.startReplaceableGroup(1157296644);
                        ComposerKt.sourceInformation(composer3, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean changed = composer3.changed(str3);
                        Object rememberedValue = composer3.rememberedValue();
                        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                            rememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$1$1$1
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
                                    SemanticsPropertiesKt.m4269setLiveRegionhR3wRGc(semantics, LiveRegionMode.INSTANCE.m4248getPolite0phEisY());
                                    SemanticsPropertiesKt.setContentDescription(semantics, str3);
                                }
                            };
                            composer3.updateRememberedValue(rememberedValue);
                        }
                        composer3.endReplaceableGroup();
                        TextKt.m1562Text4IGK_g(str2, SemanticsModifierKt.semantics$default(companion, false, (Function1) rememberedValue, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, composer3, (i3 >> 12) & 14, 0, 131068);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), startRestartGroup, ((i3 >> 21) & 14) | 3072 | ((i3 >> 6) & 112), 4);
            startRestartGroup.startReplaceableGroup(979007906);
            ComposerKt.sourceInformation(startRestartGroup, "1801@73938L1011");
            if (z3) {
                composer2 = startRestartGroup;
            } else {
                startRestartGroup.startReplaceableGroup(693286680);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.INSTANCE.getTop(), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume4 = startRestartGroup.consume(localDensity2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density2 = (Density) consume4;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume5 = startRestartGroup.consume(localLayoutDirection2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume6 = startRestartGroup.consume(localViewConfiguration2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(companion);
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
                Updater.m2280setimpl(m2273constructorimpl2, rowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -326682283, "C80@4021L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 479941280, "C1802@73991L7,1803@74038L446,1813@74501L434:DatePicker.kt#uh7d8r");
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume7 = startRestartGroup.consume(localLayoutDirection3);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                final boolean z4 = consume7 == LayoutDirection.Rtl;
                composer2 = startRestartGroup;
                IconButtonKt.IconButton(function02, null, z2, null, null, ComposableLambdaKt.composableLambda(startRestartGroup, -1143715416, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer3, int i4) {
                        ImageVector keyboardArrowLeft;
                        ComposerKt.sourceInformation(composer3, "C1810@74394L50,1804@74129L337:DatePicker.kt#uh7d8r");
                        if ((i4 & 11) != 2 || !composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1143715416, i4, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1803)");
                            }
                            if (z4) {
                                keyboardArrowLeft = KeyboardArrowRightKt.getKeyboardArrowRight(Icons.Filled.INSTANCE);
                            } else {
                                keyboardArrowLeft = KeyboardArrowLeftKt.getKeyboardArrowLeft(Icons.Filled.INSTANCE);
                            }
                            IconKt.m1246Iconww6aTOc(keyboardArrowLeft, Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1437getDatePickerSwitchToPreviousMonthadMyvUU(), composer3, 6), (Modifier) null, 0L, composer3, 0, 12);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer3.skipToGroupEnd();
                    }
                }), composer2, ((i3 >> 18) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i3 & 896), 26);
                IconButtonKt.IconButton(function0, null, z, null, null, ComposableLambdaKt.composableLambda(composer2, 1336532191, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$2$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer3, int i4) {
                        ImageVector keyboardArrowRight;
                        ComposerKt.sourceInformation(composer3, "C1820@74849L46,1814@74584L333:DatePicker.kt#uh7d8r");
                        if ((i4 & 11) != 2 || !composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1336532191, i4, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1813)");
                            }
                            if (z4) {
                                keyboardArrowRight = KeyboardArrowLeftKt.getKeyboardArrowLeft(Icons.Filled.INSTANCE);
                            } else {
                                keyboardArrowRight = KeyboardArrowRightKt.getKeyboardArrowRight(Icons.Filled.INSTANCE);
                            }
                            IconKt.m1246Iconww6aTOc(keyboardArrowRight, Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1436getDatePickerSwitchToNextMonthadMyvUU(), composer3, 6), (Modifier) null, 0L, composer3, 0, 12);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer3.skipToGroupEnd();
                    }
                }), composer2, ((i3 >> 15) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | ((i3 << 3) & 896), 26);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                ComposerKt.sourceInformationMarkerEnd(composer2);
                composer2.endReplaceableGroup();
                composer2.endNode();
                composer2.endReplaceableGroup();
                composer2.endReplaceableGroup();
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
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                invoke(composer3, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer3, int i4) {
                DatePickerKt.MonthsNavigation(Modifier.this, z, z2, z3, str, function0, function02, function03, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void YearPickerMenuButton(final kotlin.jvm.functions.Function0<kotlin.Unit> r20, final boolean r21, androidx.compose.ui.Modifier r22, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r23, androidx.compose.runtime.Composer r24, final int r25, final int r26) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DatePickerKt.YearPickerMenuButton(kotlin.jvm.functions.Function0, boolean, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<CustomAccessibilityAction> customScrollActions(final LazyGridState lazyGridState, final CoroutineScope coroutineScope, String str, String str2) {
        return CollectionsKt.listOf((Object[]) new CustomAccessibilityAction[]{new CustomAccessibilityAction(str, new Function0<Boolean>() { // from class: androidx.compose.material3.DatePickerKt$customScrollActions$scrollUpAction$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                boolean z;
                if (LazyGridState.this.getCanScrollBackward()) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(LazyGridState.this, null), 3, null);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: DatePicker.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$customScrollActions$scrollUpAction$1$1", f = "DatePicker.kt", i = {}, l = {1871}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: androidx.compose.material3.DatePickerKt$customScrollActions$scrollUpAction$1$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ LazyGridState $state;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LazyGridState lazyGridState, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$state = lazyGridState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        LazyGridState lazyGridState = this.$state;
                        this.label = 1;
                        if (LazyGridState.scrollToItem$default(lazyGridState, lazyGridState.getFirstVisibleItemIndex() - 3, 0, this, 2, null) == coroutine_suspended) {
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
        }), new CustomAccessibilityAction(str2, new Function0<Boolean>() { // from class: androidx.compose.material3.DatePickerKt$customScrollActions$scrollDownAction$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                boolean z;
                if (LazyGridState.this.getCanScrollForward()) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(LazyGridState.this, null), 3, null);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: DatePicker.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$customScrollActions$scrollDownAction$1$1", f = "DatePicker.kt", i = {}, l = {1881}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: androidx.compose.material3.DatePickerKt$customScrollActions$scrollDownAction$1$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ LazyGridState $state;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LazyGridState lazyGridState, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$state = lazyGridState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        LazyGridState lazyGridState = this.$state;
                        this.label = 1;
                        if (LazyGridState.scrollToItem$default(lazyGridState, lazyGridState.getFirstVisibleItemIndex() + 3, 0, this, 2, null) == coroutine_suspended) {
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
        })});
    }

    public static final String toLocalString(int i) {
        NumberFormat integerInstance = NumberFormat.getIntegerInstance();
        integerInstance.setGroupingUsed(false);
        String format = integerInstance.format(Integer.valueOf(i));
        Intrinsics.checkNotNullExpressionValue(format, "formatter.format(this)");
        return format;
    }

    static {
        float f = 12;
        DatePickerHorizontalPadding = Dp.m4883constructorimpl(f);
        DatePickerModeTogglePadding = PaddingKt.m487PaddingValuesa9UjIt4$default(0.0f, 0.0f, Dp.m4883constructorimpl(f), Dp.m4883constructorimpl(f), 3, null);
        float f2 = 24;
        float f3 = 16;
        DatePickerTitlePadding = PaddingKt.m487PaddingValuesa9UjIt4$default(Dp.m4883constructorimpl(f2), Dp.m4883constructorimpl(f3), Dp.m4883constructorimpl(f), 0.0f, 8, null);
        DatePickerHeadlinePadding = PaddingKt.m487PaddingValuesa9UjIt4$default(Dp.m4883constructorimpl(f2), 0.0f, Dp.m4883constructorimpl(f), Dp.m4883constructorimpl(f), 2, null);
        YearsVerticalPadding = Dp.m4883constructorimpl(f3);
    }
}
