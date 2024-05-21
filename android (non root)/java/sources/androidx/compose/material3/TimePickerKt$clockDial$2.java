package androidx.compose.material3;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TimePicker.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "Landroidx/compose/ui/Modifier;", "invoke", "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TimePickerKt$clockDial$2 extends Lambda implements Function3<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $autoSwitchToMinute;
    final /* synthetic */ TimePickerState $state;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimePickerKt$clockDial$2(TimePickerState timePickerState, boolean z) {
        super(3);
        this.$state = timePickerState;
        this.$autoSwitchToMinute = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return invoke(modifier, composer, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$lambda$1(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(MutableState<Float> mutableState, float f) {
        mutableState.setValue(Float.valueOf(f));
    }

    public final Modifier invoke(Modifier composed, Composer composer, int i) {
        float f;
        Intrinsics.checkNotNullParameter(composed, "$this$composed");
        composer.startReplaceableGroup(-1645090088);
        ComposerKt.sourceInformation(composer, "C1245@47844L31,1246@47895L31,1247@47945L43,1248@48005L24,*1249@48066L7,1252@48143L28:TimePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1645090088, i, -1, "androidx.compose.material3.clockDial.<anonymous> (TimePicker.kt:1244)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(0.0f), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(0.0f), null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        MutableState mutableState2 = (MutableState) rememberedValue2;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
            rememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntOffset.m4992boximpl(IntOffset.INSTANCE.m5011getZeronOccac()), null, 2, null);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        MutableState mutableState3 = (MutableState) rememberedValue3;
        composer.startReplaceableGroup(773894976);
        ComposerKt.sourceInformation(composer, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp");
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue4 = composer.rememberedValue();
        if (rememberedValue4 == Composer.INSTANCE.getEmpty()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composer));
            composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
            rememberedValue4 = compositionScopedCoroutineScopeCanceller;
        }
        composer.endReplaceableGroup();
        CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue4).getCoroutineScope();
        composer.endReplaceableGroup();
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        f = TimePickerKt.MaxDistance;
        float mo335toPx0680j_4 = ((Density) consume).mo335toPx0680j_4(f);
        Modifier.Companion companion = Modifier.INSTANCE;
        final TimePickerState timePickerState = this.$state;
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(timePickerState);
        Object rememberedValue5 = composer.rememberedValue();
        if (changed || rememberedValue5 == Composer.INSTANCE.getEmpty()) {
            rememberedValue5 = (Function1) new Function1<IntSize, Unit>() { // from class: androidx.compose.material3.TimePickerKt$clockDial$2$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                    m1588invokeozmzZPI(intSize.getPackedValue());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-ozmzZPI, reason: not valid java name */
                public final void m1588invokeozmzZPI(long j) {
                    TimePickerState.this.m1604setCentergyyYBs$material3_release(IntSizeKt.m5049getCenterozmzZPI(j));
                }
            };
            composer.updateRememberedValue(rememberedValue5);
        }
        composer.endReplaceableGroup();
        Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(SuspendingPointerInputFilterKt.pointerInput(OnRemeasuredModifierKt.onSizeChanged(companion, (Function1) rememberedValue5), new Object[]{this.$state, IntOffset.m4992boximpl(invoke$lambda$7(mutableState3)), Float.valueOf(mo335toPx0680j_4)}, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass2(mutableState, mutableState2, coroutineScope, this.$state, mo335toPx0680j_4, this.$autoSwitchToMinute, null)), new Object[]{this.$state, IntOffset.m4992boximpl(invoke$lambda$7(mutableState3)), Float.valueOf(mo335toPx0680j_4)}, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass3(coroutineScope, this.$state, this.$autoSwitchToMinute, mo335toPx0680j_4, mutableState, mutableState2, null));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return pointerInput;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$lambda$4(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$5(MutableState<Float> mutableState, float f) {
        mutableState.setValue(Float.valueOf(f));
    }

    private static final long invoke$lambda$7(MutableState<IntOffset> mutableState) {
        return mutableState.getValue().getPackedValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TimePicker.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.TimePickerKt$clockDial$2$2", f = "TimePicker.kt", i = {}, l = {1255}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.material3.TimePickerKt$clockDial$2$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $autoSwitchToMinute;
        final /* synthetic */ float $maxDist;
        final /* synthetic */ MutableState<Float> $offsetX$delegate;
        final /* synthetic */ MutableState<Float> $offsetY$delegate;
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ TimePickerState $state;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(MutableState<Float> mutableState, MutableState<Float> mutableState2, CoroutineScope coroutineScope, TimePickerState timePickerState, float f, boolean z, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$offsetX$delegate = mutableState;
            this.$offsetY$delegate = mutableState2;
            this.$scope = coroutineScope;
            this.$state = timePickerState;
            this.$maxDist = f;
            this.$autoSwitchToMinute = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$offsetX$delegate, this.$offsetY$delegate, this.$scope, this.$state, this.$maxDist, this.$autoSwitchToMinute, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TimePicker.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.material3.TimePickerKt$clockDial$2$2$1", f = "TimePicker.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: androidx.compose.material3.TimePickerKt$clockDial$2$2$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public static final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
            final /* synthetic */ MutableState<Float> $offsetX$delegate;
            final /* synthetic */ MutableState<Float> $offsetY$delegate;
            /* synthetic */ long J$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(MutableState<Float> mutableState, MutableState<Float> mutableState2, Continuation<? super AnonymousClass1> continuation) {
                super(3, continuation);
                this.$offsetX$delegate = mutableState;
                this.$offsetY$delegate = mutableState2;
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, Continuation<? super Unit> continuation) {
                return m1589invoked4ec7I(pressGestureScope, offset.getPackedValue(), continuation);
            }

            /* renamed from: invoke-d-4ec7I, reason: not valid java name */
            public final Object m1589invoked4ec7I(PressGestureScope pressGestureScope, long j, Continuation<? super Unit> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$offsetX$delegate, this.$offsetY$delegate, continuation);
                anonymousClass1.J$0 = j;
                return anonymousClass1.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    long j = this.J$0;
                    TimePickerKt$clockDial$2.invoke$lambda$2(this.$offsetX$delegate, Offset.m2400getXimpl(j));
                    TimePickerKt$clockDial$2.invoke$lambda$5(this.$offsetY$delegate, Offset.m2401getYimpl(j));
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
                PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$offsetX$delegate, this.$offsetY$delegate, null);
                final CoroutineScope coroutineScope = this.$scope;
                final TimePickerState timePickerState = this.$state;
                final float f = this.$maxDist;
                final boolean z = this.$autoSwitchToMinute;
                this.label = 1;
                if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, anonymousClass1, new Function1<Offset, Unit>() { // from class: androidx.compose.material3.TimePickerKt.clockDial.2.2.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                        m1590invokek4lQ0M(offset.getPackedValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                    public final void m1590invokek4lQ0M(long j) {
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(timePickerState, j, f, z, null), 3, null);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: TimePicker.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.TimePickerKt$clockDial$2$2$2$1", f = "TimePicker.kt", i = {}, l = {1261}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.TimePickerKt$clockDial$2$2$2$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ boolean $autoSwitchToMinute;
                        final /* synthetic */ long $it;
                        final /* synthetic */ float $maxDist;
                        final /* synthetic */ TimePickerState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(TimePickerState timePickerState, long j, float f, boolean z, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$state = timePickerState;
                            this.$it = j;
                            this.$maxDist = f;
                            this.$autoSwitchToMinute = z;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$state, this.$it, this.$maxDist, this.$autoSwitchToMinute, continuation);
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
                                this.label = 1;
                                if (this.$state.onTap$material3_release(Offset.m2400getXimpl(this.$it), Offset.m2401getYimpl(this.$it), this.$maxDist, this.$autoSwitchToMinute, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TimePicker.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.TimePickerKt$clockDial$2$3", f = "TimePicker.kt", i = {}, l = {1266}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.material3.TimePickerKt$clockDial$2$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $autoSwitchToMinute;
        final /* synthetic */ float $maxDist;
        final /* synthetic */ MutableState<Float> $offsetX$delegate;
        final /* synthetic */ MutableState<Float> $offsetY$delegate;
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ TimePickerState $state;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(CoroutineScope coroutineScope, TimePickerState timePickerState, boolean z, float f, MutableState<Float> mutableState, MutableState<Float> mutableState2, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$scope = coroutineScope;
            this.$state = timePickerState;
            this.$autoSwitchToMinute = z;
            this.$maxDist = f;
            this.$offsetX$delegate = mutableState;
            this.$offsetY$delegate = mutableState2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$scope, this.$state, this.$autoSwitchToMinute, this.$maxDist, this.$offsetX$delegate, this.$offsetY$delegate, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                final CoroutineScope coroutineScope = this.$scope;
                final TimePickerState timePickerState = this.$state;
                final boolean z = this.$autoSwitchToMinute;
                Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.material3.TimePickerKt.clockDial.2.3.1
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
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new C00421(timePickerState, z, null), 3, null);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: TimePicker.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.TimePickerKt$clockDial$2$3$1$1", f = "TimePicker.kt", i = {}, l = {1270, 1272}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.TimePickerKt$clockDial$2$3$1$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static final class C00421 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ boolean $autoSwitchToMinute;
                        final /* synthetic */ TimePickerState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C00421(TimePickerState timePickerState, boolean z, Continuation<? super C00421> continuation) {
                            super(2, continuation);
                            this.$state = timePickerState;
                            this.$autoSwitchToMinute = z;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C00421(this.$state, this.$autoSwitchToMinute, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((C00421) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = this.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                if (Selection.m1385equalsimpl0(this.$state.m1602getSelectionJiIwxys$material3_release(), Selection.INSTANCE.m1389getHourJiIwxys()) && this.$autoSwitchToMinute) {
                                    this.$state.m1605setSelectioniHAOin8$material3_release(Selection.INSTANCE.m1390getMinuteJiIwxys());
                                    this.label = 1;
                                    if (this.$state.animateToCurrent$material3_release(this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                } else if (Selection.m1385equalsimpl0(this.$state.m1602getSelectionJiIwxys$material3_release(), Selection.INSTANCE.m1390getMinuteJiIwxys())) {
                                    this.label = 2;
                                    if (this.$state.settle(this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            } else {
                                if (i != 1 && i != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj);
                            }
                            return Unit.INSTANCE;
                        }
                    }
                };
                final CoroutineScope coroutineScope2 = this.$scope;
                final TimePickerState timePickerState2 = this.$state;
                final float f = this.$maxDist;
                final MutableState<Float> mutableState = this.$offsetX$delegate;
                final MutableState<Float> mutableState2 = this.$offsetY$delegate;
                this.label = 1;
                if (DragGestureDetectorKt.detectDragGestures$default(pointerInputScope, null, function0, null, new Function2<PointerInputChange, Offset, Unit>() { // from class: androidx.compose.material3.TimePickerKt.clockDial.2.3.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange, Offset offset) {
                        m1591invokeUv8p0NA(pointerInputChange, offset.getPackedValue());
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke-Uv8p0NA, reason: not valid java name */
                    public final void m1591invokeUv8p0NA(PointerInputChange pointerInputChange, long j) {
                        Intrinsics.checkNotNullParameter(pointerInputChange, "<anonymous parameter 0>");
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(j, timePickerState2, mutableState, mutableState2, null), 3, null);
                        timePickerState2.moveSelector$material3_release(TimePickerKt$clockDial$2.invoke$lambda$1(mutableState), TimePickerKt$clockDial$2.invoke$lambda$4(mutableState2), f);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: TimePicker.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.TimePickerKt$clockDial$2$3$2$1", f = "TimePicker.kt", i = {}, l = {1279}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.TimePickerKt$clockDial$2$3$2$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ long $dragAmount;
                        final /* synthetic */ MutableState<Float> $offsetX$delegate;
                        final /* synthetic */ MutableState<Float> $offsetY$delegate;
                        final /* synthetic */ TimePickerState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(long j, TimePickerState timePickerState, MutableState<Float> mutableState, MutableState<Float> mutableState2, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$dragAmount = j;
                            this.$state = timePickerState;
                            this.$offsetX$delegate = mutableState;
                            this.$offsetY$delegate = mutableState2;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$dragAmount, this.$state, this.$offsetX$delegate, this.$offsetY$delegate, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            float atan;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = this.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                MutableState<Float> mutableState = this.$offsetX$delegate;
                                TimePickerKt$clockDial$2.invoke$lambda$2(mutableState, TimePickerKt$clockDial$2.invoke$lambda$1(mutableState) + Offset.m2400getXimpl(this.$dragAmount));
                                MutableState<Float> mutableState2 = this.$offsetY$delegate;
                                TimePickerKt$clockDial$2.invoke$lambda$5(mutableState2, TimePickerKt$clockDial$2.invoke$lambda$4(mutableState2) + Offset.m2401getYimpl(this.$dragAmount));
                                TimePickerState timePickerState = this.$state;
                                atan = TimePickerKt.atan(TimePickerKt$clockDial$2.invoke$lambda$4(this.$offsetY$delegate) - IntOffset.m5002getYimpl(this.$state.m1601getCenternOccac$material3_release()), TimePickerKt$clockDial$2.invoke$lambda$1(this.$offsetX$delegate) - IntOffset.m5001getXimpl(this.$state.m1601getCenternOccac$material3_release()));
                                this.label = 1;
                                if (TimePickerState.update$material3_release$default(timePickerState, atan, false, this, 2, null) == coroutine_suspended) {
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
                }, this, 5, null) == coroutine_suspended) {
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
}
