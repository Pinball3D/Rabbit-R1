package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Swipeable.kt */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aP\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\r2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002\u001a$\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00132\u0006\u0010\n\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\rH\u0002\u001aZ\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\b\b\u0000\u0010\u0002*\u00020\u00152\u0006\u0010\u0016\u001a\u0002H\u00022\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u00182#\b\u0002\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u001aH\u0001¢\u0006\u0002\u0010\u001f\u001aI\u0010 \u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\b\b\u0000\u0010\u0002*\u00020\u00152\u0006\u0010!\u001a\u0002H\u00022\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020#0\u001a2\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u0018H\u0001¢\u0006\u0002\u0010$\u001a-\u0010%\u001a\u0004\u0018\u00010\t\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00020&2\u0006\u0010'\u001a\u0002H\u0002H\u0002¢\u0006\u0002\u0010(\u001a¹\u0001\u0010)\u001a\u00020*\"\u0004\b\u0000\u0010\u0002*\u00020*2\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00020&2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010-\u001a\u00020\u001e2\b\b\u0002\u0010.\u001a\u00020\u001e2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010028\b\u0002\u0010\u000e\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(1\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(2\u0012\u0004\u0012\u0002030\u000f2\n\b\u0002\u00104\u001a\u0004\u0018\u0001052\b\b\u0002\u0010\u0011\u001a\u000206H\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u00108\"*\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00038@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00069"}, d2 = {"PreUpPostDownNestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/material3/SwipeableState;", "getPreUpPostDownNestedScrollConnection$annotations", "(Landroidx/compose/material3/SwipeableState;)V", "getPreUpPostDownNestedScrollConnection", "(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "computeTarget", "", "offset", "lastValue", "anchors", "", "thresholds", "Lkotlin/Function2;", "velocity", "velocityThreshold", "findBounds", "", "rememberSwipeableState", "", "initialValue", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "confirmStateChange", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "newValue", "", "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SwipeableState;", "rememberSwipeableStateFor", "value", "onValueChange", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SwipeableState;", "getOffset", "", SentryThread.JsonKeys.STATE, "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;", "swipeable", "Landroidx/compose/ui/Modifier;", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "enabled", "reverseDirection", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "from", "to", "Landroidx/compose/material3/ThresholdConfig;", "resistance", "Landroidx/compose/material3/ResistanceConfig;", "Landroidx/compose/ui/unit/Dp;", "swipeable-pPrIpRY", "(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ResistanceConfig;F)Landroidx/compose/ui/Modifier;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwipeableKt {
    public static /* synthetic */ void getPreUpPostDownNestedScrollConnection$annotations(SwipeableState swipeableState) {
    }

    public static final <T> SwipeableState<T> rememberSwipeableState(final T initialValue, final AnimationSpec<Float> animationSpec, final Function1<? super T, Boolean> function1, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(102743774);
        ComposerKt.sourceInformation(composer, "C(rememberSwipeableState)P(2)472@19247L344:Swipeable.kt#uh7d8r");
        if ((i2 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec$material3_release();
        }
        if ((i2 & 4) != 0) {
            function1 = new Function1<T, Boolean>() { // from class: androidx.compose.material3.SwipeableKt$rememberSwipeableState$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(T it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                    return invoke((SwipeableKt$rememberSwipeableState$1<T>) obj);
                }
            };
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(102743774, i, -1, "androidx.compose.material3.rememberSwipeableState (Swipeable.kt:467)");
        }
        SwipeableState<T> swipeableState = (SwipeableState) RememberSaveableKt.m2286rememberSaveable(new Object[0], (Saver) SwipeableState.INSTANCE.Saver(animationSpec, function1), (String) null, (Function0) new Function0<SwipeableState<T>>() { // from class: androidx.compose.material3.SwipeableKt$rememberSwipeableState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SwipeableState<T> invoke() {
                return new SwipeableState<>(initialValue, animationSpec, function1);
            }
        }, composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return swipeableState;
    }

    public static final <T> SwipeableState<T> rememberSwipeableStateFor(final T value, final Function1<? super T, Unit> onValueChange, AnimationSpec<Float> animationSpec, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        composer.startReplaceableGroup(1306709399);
        ComposerKt.sourceInformation(composer, "C(rememberSwipeableStateFor)P(2,1)501@20415L169,508@20615L34,509@20654L162,514@20821L259:Swipeable.kt#uh7d8r");
        if ((i2 & 4) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec$material3_release();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1306709399, i, -1, "androidx.compose.material3.rememberSwipeableStateFor (Swipeable.kt:496)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = new SwipeableState(value, animationSpec, new Function1<T, Boolean>() { // from class: androidx.compose.material3.SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(T it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                    return invoke((SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1<T>) obj);
                }
            });
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final SwipeableState<T> swipeableState = (SwipeableState) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue2;
        int i3 = i & 8;
        EffectsKt.LaunchedEffect(value, mutableState.getValue(), new SwipeableKt$rememberSwipeableStateFor$1(value, swipeableState, null), composer, (i & 14) | i3 | 512);
        EffectsKt.DisposableEffect(swipeableState.getCurrentValue(), new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.material3.SwipeableKt$rememberSwipeableStateFor$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                if (!Intrinsics.areEqual(value, swipeableState.getCurrentValue())) {
                    onValueChange.invoke(swipeableState.getCurrentValue());
                    mutableState.setValue(Boolean.valueOf(!r1.getValue().booleanValue()));
                }
                return new DisposableEffectResult() { // from class: androidx.compose.material3.SwipeableKt$rememberSwipeableStateFor$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                    }
                };
            }
        }, composer, i3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return swipeableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Float> findBounds(float f, Set<Float> set) {
        Set<Float> set2 = set;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set2) {
            if (((Number) obj).floatValue() <= f + 0.001d) {
                arrayList.add(obj);
            }
        }
        Float maxOrNull = CollectionsKt.maxOrNull((Iterable<? extends Float>) arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : set2) {
            if (((Number) obj2).floatValue() >= f - 0.001d) {
                arrayList2.add(obj2);
            }
        }
        Float minOrNull = CollectionsKt.minOrNull((Iterable<? extends Float>) arrayList2);
        if (maxOrNull == null) {
            return CollectionsKt.listOfNotNull(minOrNull);
        }
        if (minOrNull == null) {
            return CollectionsKt.listOf(maxOrNull);
        }
        if (Intrinsics.areEqual(maxOrNull, minOrNull)) {
            return CollectionsKt.listOf(maxOrNull);
        }
        return CollectionsKt.listOf((Object[]) new Float[]{maxOrNull, minOrNull});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
    
        if (r3 < r6.invoke(java.lang.Float.valueOf(r0), java.lang.Float.valueOf(r5)).floatValue()) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
    
        if (r3 > r6.invoke(java.lang.Float.valueOf(r5), java.lang.Float.valueOf(r0)).floatValue()) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final float computeTarget(float r3, float r4, java.util.Set<java.lang.Float> r5, kotlin.jvm.functions.Function2<? super java.lang.Float, ? super java.lang.Float, java.lang.Float> r6, float r7, float r8) {
        /*
            java.util.List r5 = findBounds(r3, r5)
            int r0 = r5.size()
            if (r0 == 0) goto L6c
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L62
            java.lang.Object r0 = r5.get(r1)
            java.lang.Number r0 = (java.lang.Number) r0
            float r0 = r0.floatValue()
            java.lang.Object r5 = r5.get(r2)
            java.lang.Number r5 = (java.lang.Number) r5
            float r5 = r5.floatValue()
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 > 0) goto L42
            int r4 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r4 < 0) goto L2b
            return r5
        L2b:
            java.lang.Float r4 = java.lang.Float.valueOf(r0)
            java.lang.Float r7 = java.lang.Float.valueOf(r5)
            java.lang.Object r4 = r6.invoke(r4, r7)
            java.lang.Number r4 = (java.lang.Number) r4
            float r4 = r4.floatValue()
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L5e
            goto L60
        L42:
            float r4 = -r8
            int r4 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r4 > 0) goto L48
            return r0
        L48:
            java.lang.Float r4 = java.lang.Float.valueOf(r5)
            java.lang.Float r7 = java.lang.Float.valueOf(r0)
            java.lang.Object r4 = r6.invoke(r4, r7)
            java.lang.Number r4 = (java.lang.Number) r4
            float r4 = r4.floatValue()
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L60
        L5e:
            r4 = r5
            goto L6c
        L60:
            r4 = r0
            goto L6c
        L62:
            java.lang.Object r3 = r5.get(r1)
            java.lang.Number r3 = (java.lang.Number) r3
            float r4 = r3.floatValue()
        L6c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwipeableKt.computeTarget(float, float, java.util.Set, kotlin.jvm.functions.Function2, float, float):float");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Float getOffset(Map<Float, ? extends T> map, T t) {
        T t2;
        Iterator<T> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                t2 = null;
                break;
            }
            t2 = it.next();
            if (Intrinsics.areEqual(((Map.Entry) t2).getValue(), t)) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) t2;
        if (entry != null) {
            return (Float) entry.getKey();
        }
        return null;
    }

    public static final <T> NestedScrollConnection getPreUpPostDownNestedScrollConnection(SwipeableState<T> swipeableState) {
        Intrinsics.checkNotNullParameter(swipeableState, "<this>");
        return new SwipeableKt$PreUpPostDownNestedScrollConnection$1(swipeableState);
    }

    /* renamed from: swipeable-pPrIpRY, reason: not valid java name */
    public static final <T> Modifier m1496swipeablepPrIpRY(Modifier swipeable, final SwipeableState<T> state, final Map<Float, ? extends T> anchors, final Orientation orientation, final boolean z, final boolean z2, final MutableInteractionSource mutableInteractionSource, final Function2<? super T, ? super T, ? extends ThresholdConfig> thresholds, final ResistanceConfig resistanceConfig, final float f) {
        Intrinsics.checkNotNullParameter(swipeable, "$this$swipeable");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(anchors, "anchors");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(thresholds, "thresholds");
        return ComposedModifierKt.composed(swipeable, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material3.SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1
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
                inspectorInfo.setName("swipeable");
                inspectorInfo.getProperties().set(SentryThread.JsonKeys.STATE, SwipeableState.this);
                inspectorInfo.getProperties().set("anchors", anchors);
                inspectorInfo.getProperties().set(Device.JsonKeys.ORIENTATION, orientation);
                inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z));
                inspectorInfo.getProperties().set("reverseDirection", Boolean.valueOf(z2));
                inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                inspectorInfo.getProperties().set("thresholds", thresholds);
                inspectorInfo.getProperties().set("resistance", resistanceConfig);
                inspectorInfo.getProperties().set("velocityThreshold", Dp.m4881boximpl(f));
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material3.SwipeableKt$swipeable$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Modifier draggable;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1169892884);
                ComposerKt.sourceInformation(composer, "C588@24733L7,590@24775L502,611@25538L55:Swipeable.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1169892884, i, -1, "androidx.compose.material3.swipeable.<anonymous> (Swipeable.kt:581)");
                }
                if (!(!anchors.isEmpty())) {
                    throw new IllegalArgumentException("You must have at least one anchor.".toString());
                }
                if (CollectionsKt.distinct(anchors.values()).size() != anchors.size()) {
                    throw new IllegalArgumentException("You cannot have two anchors mapped to the same state.".toString());
                }
                ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume = composer.consume(localDensity);
                ComposerKt.sourceInformationMarkerEnd(composer);
                state.ensureInit$material3_release(anchors);
                EffectsKt.LaunchedEffect(anchors, state, new AnonymousClass3(state, anchors, resistanceConfig, (Density) consume, thresholds, f, null), composer, 520);
                Modifier.Companion companion = Modifier.INSTANCE;
                boolean isAnimationRunning = state.isAnimationRunning();
                DraggableState draggableState = state.getDraggableState();
                Modifier.Companion companion2 = companion;
                Orientation orientation2 = orientation;
                boolean z3 = z;
                MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                SwipeableState<T> swipeableState = state;
                composer.startReplaceableGroup(1157296644);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
                boolean changed = composer.changed(swipeableState);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                    rememberedValue = (Function3) new SwipeableKt$swipeable$3$4$1(swipeableState, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                draggable = DraggableKt.draggable(companion2, draggableState, orientation2, (r20 & 4) != 0 ? true : z3, (r20 & 8) != 0 ? null : mutableInteractionSource2, (r20 & 16) != 0 ? false : isAnimationRunning, (r20 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (r20 & 64) != 0 ? new DraggableKt$draggable$2(null) : (Function3) rememberedValue, (r20 & 128) != 0 ? false : z2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return draggable;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Swipeable.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.SwipeableKt$swipeable$3$3", f = "Swipeable.kt", i = {}, l = {603}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: androidx.compose.material3.SwipeableKt$swipeable$3$3, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Map<Float, T> $anchors;
                final /* synthetic */ Density $density;
                final /* synthetic */ ResistanceConfig $resistance;
                final /* synthetic */ SwipeableState<T> $state;
                final /* synthetic */ Function2<T, T, ThresholdConfig> $thresholds;
                final /* synthetic */ float $velocityThreshold;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass3(SwipeableState<T> swipeableState, Map<Float, ? extends T> map, ResistanceConfig resistanceConfig, Density density, Function2<? super T, ? super T, ? extends ThresholdConfig> function2, float f, Continuation<? super AnonymousClass3> continuation) {
                    super(2, continuation);
                    this.$state = swipeableState;
                    this.$anchors = map;
                    this.$resistance = resistanceConfig;
                    this.$density = density;
                    this.$thresholds = function2;
                    this.$velocityThreshold = f;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass3(this.$state, this.$anchors, this.$resistance, this.$density, this.$thresholds, this.$velocityThreshold, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Map anchors$material3_release = this.$state.getAnchors$material3_release();
                        this.$state.setAnchors$material3_release(this.$anchors);
                        this.$state.setResistance$material3_release(this.$resistance);
                        SwipeableState<T> swipeableState = this.$state;
                        final Map<Float, T> map = this.$anchors;
                        final Function2<T, T, ThresholdConfig> function2 = this.$thresholds;
                        final Density density = this.$density;
                        swipeableState.setThresholds$material3_release(new Function2<Float, Float, Float>() { // from class: androidx.compose.material3.SwipeableKt.swipeable.3.3.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Float invoke(Float f, Float f2) {
                                return invoke(f.floatValue(), f2.floatValue());
                            }

                            public final Float invoke(float f, float f2) {
                                return Float.valueOf(function2.invoke(MapsKt.getValue(map, Float.valueOf(f)), MapsKt.getValue(map, Float.valueOf(f2))).computeThreshold(density, f, f2));
                            }
                        });
                        this.$state.setVelocityThreshold$material3_release(this.$density.mo335toPx0680j_4(this.$velocityThreshold));
                        this.label = 1;
                        if (this.$state.processNewAnchors$material3_release(anchors$material3_release, this.$anchors, this) == coroutine_suspended) {
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
