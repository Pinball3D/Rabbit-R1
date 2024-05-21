package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.media3.container.MdtaMetadataEntry;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.encoding.Base64;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* compiled from: TextFieldPressGestureFilter.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a7\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0000ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"tapPressTextFieldModifier", "Landroidx/compose/ui/Modifier;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "enabled", "", "onTap", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextFieldPressGestureFilterKt {
    public static /* synthetic */ Modifier tapPressTextFieldModifier$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return tapPressTextFieldModifier(modifier, mutableInteractionSource, z, function1);
    }

    public static final Modifier tapPressTextFieldModifier(Modifier modifier, final MutableInteractionSource mutableInteractionSource, boolean z, final Function1<? super Offset, Unit> onTap) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onTap, "onTap");
        return z ? ComposedModifierKt.composed$default(modifier, null, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1
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

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-102778667);
                ComposerKt.sourceInformation(composer, "C40@1611L24,41@1665L58,42@1745L27,43@1813L279,43@1777L315:TextFieldPressGestureFilter.kt#423gt5");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-102778667, i, -1, "androidx.compose.foundation.text.tapPressTextFieldModifier.<anonymous> (TextFieldPressGestureFilter.kt:39)");
                }
                composer.startReplaceableGroup(773894976);
                ComposerKt.sourceInformation(composer, "CC(rememberCoroutineScope)488@20446L144:Effects.kt#9igjgp");
                composer.startReplaceableGroup(-492369756);
                ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composer));
                    composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                    rememberedValue = compositionScopedCoroutineScopeCanceller;
                }
                composer.endReplaceableGroup();
                CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                composer.endReplaceableGroup();
                composer.startReplaceableGroup(-492369756);
                ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
                Object rememberedValue2 = composer.rememberedValue();
                if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                final MutableState mutableState = (MutableState) rememberedValue2;
                State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onTap, composer, 0);
                final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                composer.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed = composer.changed(mutableState) | composer.changed(mutableInteractionSource2);
                Object rememberedValue3 = composer.rememberedValue();
                if (changed || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue3 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                            Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                            final MutableState<PressInteraction.Press> mutableState2 = mutableState;
                            final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                            return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public void dispose() {
                                    PressInteraction.Press press = (PressInteraction.Press) MutableState.this.getValue();
                                    if (press != null) {
                                        PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                                        MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource3;
                                        if (mutableInteractionSource4 != null) {
                                            mutableInteractionSource4.tryEmit(cancel);
                                        }
                                        MutableState.this.setValue(null);
                                    }
                                }
                            };
                        }
                    };
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceableGroup();
                EffectsKt.DisposableEffect(mutableInteractionSource2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) rememberedValue3, composer, 0);
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(Modifier.INSTANCE, mutableInteractionSource, new AnonymousClass2(coroutineScope, mutableState, mutableInteractionSource, rememberUpdatedState, null));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return pointerInput;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TextFieldPressGestureFilter.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2", f = "TextFieldPressGestureFilter.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ MutableInteractionSource $interactionSource;
                final /* synthetic */ State<Function1<Offset, Unit>> $onTapState;
                final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                final /* synthetic */ CoroutineScope $scope;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass2(CoroutineScope coroutineScope, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, State<? extends Function1<? super Offset, Unit>> state, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.$scope = coroutineScope;
                    this.$pressedInteraction = mutableState;
                    this.$interactionSource = mutableInteractionSource;
                    this.$onTapState = state;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$scope, this.$pressedInteraction, this.$interactionSource, this.$onTapState, continuation);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass2) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: TextFieldPressGestureFilter.kt */
                @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/PressGestureScope;", "it", "Landroidx/compose/ui/geometry/Offset;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1", f = "TextFieldPressGestureFilter.kt", i = {}, l = {MdtaMetadataEntry.TYPE_INDICATOR_INT32}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                    final /* synthetic */ MutableInteractionSource $interactionSource;
                    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                    final /* synthetic */ CoroutineScope $scope;
                    /* synthetic */ long J$0;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(CoroutineScope coroutineScope, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, Continuation<? super AnonymousClass1> continuation) {
                        super(3, continuation);
                        this.$scope = coroutineScope;
                        this.$pressedInteraction = mutableState;
                        this.$interactionSource = mutableInteractionSource;
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, Continuation<? super Unit> continuation) {
                        return m829invoked4ec7I(pressGestureScope, offset.getPackedValue(), continuation);
                    }

                    /* renamed from: invoke-d-4ec7I, reason: not valid java name */
                    public final Object m829invoked4ec7I(PressGestureScope pressGestureScope, long j, Continuation<? super Unit> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, continuation);
                        anonymousClass1.L$0 = pressGestureScope;
                        anonymousClass1.J$0 = j;
                        return anonymousClass1.invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: TextFieldPressGestureFilter.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", i = {1}, l = {LockFreeTaskQueueCore.FROZEN_SHIFT, 64}, m = "invokeSuspend", n = {"interaction"}, s = {"L$0"})
                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static final class C00191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ MutableInteractionSource $interactionSource;
                        final /* synthetic */ long $it;
                        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                        Object L$0;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C00191(MutableState<PressInteraction.Press> mutableState, long j, MutableInteractionSource mutableInteractionSource, Continuation<? super C00191> continuation) {
                            super(2, continuation);
                            this.$pressedInteraction = mutableState;
                            this.$it = j;
                            this.$interactionSource = mutableInteractionSource;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C00191(this.$pressedInteraction, this.$it, this.$interactionSource, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((C00191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                            /*
                                r7 = this;
                                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                                int r1 = r7.label
                                r2 = 0
                                r3 = 2
                                r4 = 1
                                if (r1 == 0) goto L27
                                if (r1 == r4) goto L1f
                                if (r1 != r3) goto L17
                                java.lang.Object r0 = r7.L$0
                                androidx.compose.foundation.interaction.PressInteraction$Press r0 = (androidx.compose.foundation.interaction.PressInteraction.Press) r0
                                kotlin.ResultKt.throwOnFailure(r8)
                                goto L6e
                            L17:
                                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                                r7.<init>(r8)
                                throw r7
                            L1f:
                                java.lang.Object r1 = r7.L$0
                                androidx.compose.runtime.MutableState r1 = (androidx.compose.runtime.MutableState) r1
                                kotlin.ResultKt.throwOnFailure(r8)
                                goto L4d
                            L27:
                                kotlin.ResultKt.throwOnFailure(r8)
                                androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.PressInteraction$Press> r8 = r7.$pressedInteraction
                                java.lang.Object r8 = r8.getValue()
                                androidx.compose.foundation.interaction.PressInteraction$Press r8 = (androidx.compose.foundation.interaction.PressInteraction.Press) r8
                                if (r8 == 0) goto L51
                                androidx.compose.foundation.interaction.MutableInteractionSource r1 = r7.$interactionSource
                                androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.PressInteraction$Press> r5 = r7.$pressedInteraction
                                androidx.compose.foundation.interaction.PressInteraction$Cancel r6 = new androidx.compose.foundation.interaction.PressInteraction$Cancel
                                r6.<init>(r8)
                                if (r1 == 0) goto L4e
                                androidx.compose.foundation.interaction.Interaction r6 = (androidx.compose.foundation.interaction.Interaction) r6
                                r7.L$0 = r5
                                r7.label = r4
                                java.lang.Object r8 = r1.emit(r6, r7)
                                if (r8 != r0) goto L4c
                                return r0
                            L4c:
                                r1 = r5
                            L4d:
                                r5 = r1
                            L4e:
                                r5.setValue(r2)
                            L51:
                                androidx.compose.foundation.interaction.PressInteraction$Press r8 = new androidx.compose.foundation.interaction.PressInteraction$Press
                                long r4 = r7.$it
                                r8.<init>(r4, r2)
                                androidx.compose.foundation.interaction.MutableInteractionSource r1 = r7.$interactionSource
                                if (r1 == 0) goto L6f
                                r2 = r8
                                androidx.compose.foundation.interaction.Interaction r2 = (androidx.compose.foundation.interaction.Interaction) r2
                                r4 = r7
                                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                                r7.L$0 = r8
                                r7.label = r3
                                java.lang.Object r1 = r1.emit(r2, r4)
                                if (r1 != r0) goto L6d
                                return r0
                            L6d:
                                r0 = r8
                            L6e:
                                r8 = r0
                            L6f:
                                androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.PressInteraction$Press> r7 = r7.$pressedInteraction
                                r7.setValue(r8)
                                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                                return r7
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1.AnonymousClass2.AnonymousClass1.C00191.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: TextFieldPressGestureFilter.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$2", f = "TextFieldPressGestureFilter.kt", i = {}, l = {Base64.mimeLineLength}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$2, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static final class C00202 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ MutableInteractionSource $interactionSource;
                        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                        final /* synthetic */ boolean $success;
                        Object L$0;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C00202(MutableState<PressInteraction.Press> mutableState, boolean z, MutableInteractionSource mutableInteractionSource, Continuation<? super C00202> continuation) {
                            super(2, continuation);
                            this.$pressedInteraction = mutableState;
                            this.$success = z;
                            this.$interactionSource = mutableInteractionSource;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C00202(this.$pressedInteraction, this.$success, this.$interactionSource, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((C00202) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            MutableState<PressInteraction.Press> mutableState;
                            PressInteraction.Cancel cancel;
                            MutableState<PressInteraction.Press> mutableState2;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = this.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                PressInteraction.Press value = this.$pressedInteraction.getValue();
                                if (value != null) {
                                    boolean z = this.$success;
                                    MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                                    mutableState = this.$pressedInteraction;
                                    if (z) {
                                        cancel = new PressInteraction.Release(value);
                                    } else {
                                        cancel = new PressInteraction.Cancel(value);
                                    }
                                    if (mutableInteractionSource != null) {
                                        this.L$0 = mutableState;
                                        this.label = 1;
                                        if (mutableInteractionSource.emit(cancel, this) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        mutableState2 = mutableState;
                                    }
                                    mutableState.setValue(null);
                                }
                                return Unit.INSTANCE;
                            }
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            mutableState2 = (MutableState) this.L$0;
                            ResultKt.throwOnFailure(obj);
                            mutableState = mutableState2;
                            mutableState.setValue(null);
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                            BuildersKt__Builders_commonKt.launch$default(this.$scope, null, null, new C00191(this.$pressedInteraction, this.J$0, this.$interactionSource, null), 3, null);
                            this.label = 1;
                            obj = pressGestureScope.tryAwaitRelease(this);
                            if (obj == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        BuildersKt__Builders_commonKt.launch$default(this.$scope, null, null, new C00202(this.$pressedInteraction, ((Boolean) obj).booleanValue(), this.$interactionSource, null), 3, null);
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
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, null);
                        final State<Function1<Offset, Unit>> state = this.$onTapState;
                        this.label = 1;
                        if (TapGestureDetectorKt.detectTapAndPress(pointerInputScope, anonymousClass1, new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt.tapPressTextFieldModifier.1.2.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                                m830invokek4lQ0M(offset.getPackedValue());
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                            public final void m830invokek4lQ0M(long j) {
                                state.getValue().invoke(Offset.m2389boximpl(j));
                            }
                        }, this) == coroutine_suspended) {
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
        }, 1, null) : modifier;
    }
}
