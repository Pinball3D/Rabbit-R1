package androidx.compose.foundation.gestures;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001e\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\bH\u0002\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020!H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\"\u001aO\u0010#\u001a\u00020$*\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010/2\u0006\u0010\u001e\u001a\u00020\bH\u0003¢\u0006\u0002\u00100\u001aR\u00101\u001a\u00020$*\u00020$2\u0006\u00102\u001a\u00020+2\u0006\u0010'\u001a\u00020(2\b\u0010.\u001a\u0004\u0018\u00010/2\b\b\u0002\u0010\u001e\u001a\u00020\b2\b\b\u0002\u0010)\u001a\u00020\b2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&H\u0007\u001aF\u00101\u001a\u00020$*\u00020$2\u0006\u00102\u001a\u00020+2\u0006\u0010'\u001a\u00020(2\b\b\u0002\u0010\u001e\u001a\u00020\b2\b\b\u0002\u0010)\u001a\u00020\b2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000\"\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\"L\u0010\u000b\u001a8\b\u0001\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\f¢\u0006\u0002\b\u0015X\u0082\u0004ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0016\"\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00063"}, d2 = {"DefaultScrollMotionDurationScale", "Landroidx/compose/ui/MotionDurationScale;", "getDefaultScrollMotionDurationScale", "()Landroidx/compose/ui/MotionDurationScale;", "DefaultScrollMotionDurationScaleFactor", "", "ModifierLocalScrollableContainer", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "", "getModifierLocalScrollableContainer", "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "NoOpOnDragStarted", "Lkotlin/Function3;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/compose/ui/geometry/Offset;", "Lkotlin/ParameterName;", "name", "startedPosition", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "Lkotlin/jvm/functions/Function3;", "NoOpScrollScope", "Landroidx/compose/foundation/gestures/ScrollScope;", "scrollableNestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "scrollLogic", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "enabled", "awaitScrollEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pointerScrollable", "Landroidx/compose/ui/Modifier;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "reverseDirection", "controller", "Landroidx/compose/foundation/gestures/ScrollableState;", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "overscrollEffect", "Landroidx/compose/foundation/OverscrollEffect;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;", "scrollable", SentryThread.JsonKeys.STATE, "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ScrollableKt {
    private static final float DefaultScrollMotionDurationScaleFactor = 1.0f;
    private static final Function3<CoroutineScope, Offset, Continuation<? super Unit>, Object> NoOpOnDragStarted = new ScrollableKt$NoOpOnDragStarted$1(null);
    private static final ScrollScope NoOpScrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollableKt$NoOpScrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float pixels) {
            return pixels;
        }
    };
    private static final ProvidableModifierLocal<Boolean> ModifierLocalScrollableContainer = ModifierLocalKt.modifierLocalOf(new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$ModifierLocalScrollableContainer$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return false;
        }
    });
    private static final MotionDurationScale DefaultScrollMotionDurationScale = new MotionDurationScale() { // from class: androidx.compose.foundation.gestures.ScrollableKt$DefaultScrollMotionDurationScale$1
        @Override // androidx.compose.ui.MotionDurationScale
        public float getScaleFactor() {
            return 1.0f;
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) MotionDurationScale.DefaultImpls.fold(this, r, function2);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
            return (E) MotionDurationScale.DefaultImpls.get(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
            return MotionDurationScale.DefaultImpls.minusKey(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public CoroutineContext plus(CoroutineContext coroutineContext) {
            return MotionDurationScale.DefaultImpls.plus(this, coroutineContext);
        }
    };

    public static final MotionDurationScale getDefaultScrollMotionDurationScale() {
        return DefaultScrollMotionDurationScale;
    }

    public static final ProvidableModifierLocal<Boolean> getModifierLocalScrollableContainer() {
        return ModifierLocalScrollableContainer;
    }

    public static /* synthetic */ Modifier scrollable$default(Modifier modifier, ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            z2 = false;
        }
        return scrollable(modifier, scrollableState, orientation, z3, z2, (i & 16) != 0 ? null : flingBehavior, (i & 32) != 0 ? null : mutableInteractionSource);
    }

    public static final Modifier scrollable(Modifier modifier, ScrollableState state, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return scrollable(modifier, state, orientation, null, z, z2, flingBehavior, mutableInteractionSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier pointerScrollable(Modifier modifier, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z, ScrollableState scrollableState, FlingBehavior flingBehavior, OverscrollEffect overscrollEffect, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-2012025036);
        ComposerKt.sourceInformation(composer, "C(pointerScrollable)P(3,4,6!1,2,5)257@10957L53,258@11033L224,268@11291L88,271@11405L46,272@11475L22,281@11777L47,283@11901L176:Scrollable.kt#8bwon0");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2012025036, i, -1, "androidx.compose.foundation.gestures.pointerScrollable (Scrollable.kt:247)");
        }
        composer.startReplaceableGroup(-1730185954);
        ComposerKt.sourceInformation(composer, "256@10908L15");
        FlingBehavior flingBehavior2 = flingBehavior == null ? ScrollableDefaults.INSTANCE.flingBehavior(composer, 6) : flingBehavior;
        composer.endReplaceableGroup();
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new NestedScrollDispatcher(), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(new ScrollingLogic(orientation, z, mutableState, scrollableState, flingBehavior2, overscrollEffect), composer, 0);
        Object valueOf = Boolean.valueOf(z2);
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = scrollableNestedScrollConnection(rememberUpdatedState, z2);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        NestedScrollConnection nestedScrollConnection = (NestedScrollConnection) rememberedValue2;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
            rememberedValue3 = new ScrollDraggableState(rememberUpdatedState);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        ScrollConfig platformScrollConfig = AndroidScrollable_androidKt.platformScrollConfig(composer, 0);
        Function3<CoroutineScope, Offset, Continuation<? super Unit>, Object> function3 = NoOpOnDragStarted;
        ScrollDraggableState scrollDraggableState = (ScrollDraggableState) rememberedValue3;
        ScrollableKt$pointerScrollable$1 scrollableKt$pointerScrollable$1 = new Function1<PointerInputChange, Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(PointerInputChange down) {
                Intrinsics.checkNotNullParameter(down, "down");
                return Boolean.valueOf(!PointerType.m3829equalsimpl0(down.getType(), PointerType.INSTANCE.m3834getMouseT8wyACA()));
            }
        };
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed2 = composer.changed(rememberUpdatedState);
        Object rememberedValue4 = composer.rememberedValue();
        if (changed2 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
            rememberedValue4 = (Function0) new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(rememberUpdatedState.getValue().shouldScrollImmediately());
                }
            };
            composer.updateRememberedValue(rememberedValue4);
        }
        composer.endReplaceableGroup();
        Function0 function0 = (Function0) rememberedValue4;
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed3 = composer.changed(mutableState) | composer.changed(rememberUpdatedState);
        Object rememberedValue5 = composer.rememberedValue();
        if (changed3 || rememberedValue5 == Composer.INSTANCE.getEmpty()) {
            rememberedValue5 = (Function3) new ScrollableKt$pointerScrollable$3$1(mutableState, rememberUpdatedState, null);
            composer.updateRememberedValue(rememberedValue5);
        }
        composer.endReplaceableGroup();
        Modifier nestedScroll = NestedScrollModifierKt.nestedScroll(modifier.then(new DraggableElement(scrollDraggableState, scrollableKt$pointerScrollable$1, orientation, z2, mutableInteractionSource, function0, function3, (Function3) rememberedValue5, false)).then(new MouseWheelScrollElement(rememberUpdatedState, platformScrollConfig)), nestedScrollConnection, (NestedScrollDispatcher) mutableState.getValue());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return nestedScroll;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0042 -> B:10:0x0045). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitScrollEvent(androidx.compose.ui.input.pointer.AwaitPointerEventScope r5, kotlin.coroutines.Continuation<? super androidx.compose.ui.input.pointer.PointerEvent> r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1
            if (r0 == 0) goto L14
            r0 = r6
            androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1 r0 = (androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1 r0 = new androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
        L39:
            r0.L$0 = r5
            r0.label = r3
            r6 = 0
            java.lang.Object r6 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r5, r6, r0, r3, r6)
            if (r6 != r1) goto L45
            return r1
        L45:
            androidx.compose.ui.input.pointer.PointerEvent r6 = (androidx.compose.ui.input.pointer.PointerEvent) r6
            int r2 = r6.getType()
            androidx.compose.ui.input.pointer.PointerEventType$Companion r4 = androidx.compose.ui.input.pointer.PointerEventType.INSTANCE
            int r4 = r4.m3717getScroll7fucELk()
            boolean r2 = androidx.compose.ui.input.pointer.PointerEventType.m3708equalsimpl0(r2, r4)
            if (r2 == 0) goto L39
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.awaitScrollEvent(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NestedScrollConnection scrollableNestedScrollConnection(State<ScrollingLogic> state, boolean z) {
        return new ScrollableKt$scrollableNestedScrollConnection$1(state, z);
    }

    public static final Modifier scrollable(Modifier modifier, final ScrollableState state, final Orientation orientation, final OverscrollEffect overscrollEffect, final boolean z, final boolean z2, final FlingBehavior flingBehavior, final MutableInteractionSource mutableInteractionSource) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$scrollable$$inlined$debugInspectorInfo$1
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
                inspectorInfo.setName("scrollable");
                inspectorInfo.getProperties().set(Device.JsonKeys.ORIENTATION, Orientation.this);
                inspectorInfo.getProperties().set(SentryThread.JsonKeys.STATE, state);
                inspectorInfo.getProperties().set("overscrollEffect", overscrollEffect);
                inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z));
                inspectorInfo.getProperties().set("reverseDirection", Boolean.valueOf(z2));
                inspectorInfo.getProperties().set("flingBehavior", flingBehavior);
                inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$scrollable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Modifier pointerScrollable;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-629830927);
                ComposerKt.sourceInformation(composer, "C162@7780L24,164@7862L170,171@8149L242:Scrollable.kt#8bwon0");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-629830927, i, -1, "androidx.compose.foundation.gestures.scrollable.<anonymous> (Scrollable.kt:161)");
                }
                composer.startReplaceableGroup(773894976);
                ComposerKt.sourceInformation(composer, "CC(rememberCoroutineScope)488@20446L144:Effects.kt#9igjgp");
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
                Object[] objArr = {coroutineScope, Orientation.this, state, Boolean.valueOf(z2)};
                Orientation orientation2 = Orientation.this;
                ScrollableState scrollableState = state;
                boolean z3 = z2;
                composer.startReplaceableGroup(-568225417);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
                boolean z4 = false;
                for (int i2 = 0; i2 < 4; i2++) {
                    z4 |= composer.changed(objArr[i2]);
                }
                Object rememberedValue2 = composer.rememberedValue();
                if (z4 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue2 = new ContentInViewModifier(coroutineScope, orientation2, scrollableState, z3);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                pointerScrollable = ScrollableKt.pointerScrollable(FocusableKt.focusGroup(Modifier.INSTANCE).then(((ContentInViewModifier) rememberedValue2).getModifier()), mutableInteractionSource, Orientation.this, z2, state, flingBehavior, overscrollEffect, z, composer, 0);
                Modifier then = pointerScrollable.then(z ? ModifierLocalScrollableContainerProvider.INSTANCE : Modifier.INSTANCE);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return then;
            }
        });
    }
}
