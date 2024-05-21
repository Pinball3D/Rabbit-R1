package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import okhttp3.internal.http.StatusLine;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1", f = "Draggable.kt", i = {}, l = {302}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class DraggableNode$pointerInputNode$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DraggableNode this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$pointerInputNode$1(DraggableNode draggableNode, Continuation<? super DraggableNode$pointerInputNode$1> continuation) {
        super(2, continuation);
        this.this$0 = draggableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DraggableNode$pointerInputNode$1 draggableNode$pointerInputNode$1 = new DraggableNode$pointerInputNode$1(this.this$0, continuation);
        draggableNode$pointerInputNode$1.L$0 = obj;
        return draggableNode$pointerInputNode$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((DraggableNode$pointerInputNode$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            z = this.this$0.enabled;
            if (!z) {
                return Unit.INSTANCE;
            }
            this.label = 1;
            if (CoroutineScopeKt.coroutineScope(new AnonymousClass1(pointerInputScope, this.this$0, null), this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Draggable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1", f = "Draggable.kt", i = {0}, l = {326}, m = "invokeSuspend", n = {"$this$coroutineScope"}, s = {"L$0"})
    /* renamed from: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PointerInputScope $$this$SuspendingPointerInputModifierNode;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DraggableNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PointerInputScope pointerInputScope, DraggableNode draggableNode, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$SuspendingPointerInputModifierNode = pointerInputScope;
            this.this$0 = draggableNode;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$SuspendingPointerInputModifierNode, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Draggable.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$1", f = "Draggable.kt", i = {0, 0, 1, 1, 2, 2, 3, 4, 5}, l = {305, StatusLine.HTTP_TEMP_REDIRECT, 309, 316, 318, 321}, m = "invokeSuspend", n = {"$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch", "$this$launch", "$this$launch"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$0", "L$0"})
        /* renamed from: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            int label;
            final /* synthetic */ DraggableNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00051(DraggableNode draggableNode, Continuation<? super C00051> continuation) {
                super(2, continuation);
                this.this$0 = draggableNode;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00051 c00051 = new C00051(this.this$0, continuation);
                c00051.L$0 = obj;
                return c00051;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Can't wrap try/catch for region: R(9:19|20|(1:39)|22|23|24|(2:29|(2:31|(1:33)))(2:26|(1:28))|8|(2:43|44)(0)) */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x0104, code lost:
            
                r1 = r9;
             */
            /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0063  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00cf A[Catch: CancellationException -> 0x0104, TryCatch #1 {CancellationException -> 0x0104, blocks: (B:24:0x00c9, B:26:0x00cf, B:29:0x00eb, B:31:0x00f1), top: B:23:0x00c9 }] */
            /* JADX WARN: Removed duplicated region for block: B:29:0x00eb A[Catch: CancellationException -> 0x0104, TryCatch #1 {CancellationException -> 0x0104, blocks: (B:24:0x00c9, B:26:0x00cf, B:29:0x00eb, B:31:0x00f1), top: B:23:0x00c9 }] */
            /* JADX WARN: Removed duplicated region for block: B:38:0x0117 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00c8 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:42:0x0118  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x011b  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00e8 -> B:8:0x005d). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00ef -> B:8:0x005d). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0101 -> B:8:0x005d). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0115 -> B:7:0x0027). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0118 -> B:8:0x005d). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r9) {
                /*
                    Method dump skipped, instructions count: 304
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1.AnonymousClass1.C00051.invokeSuspend(java.lang.Object):java.lang.Object");
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Draggable.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/DragScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$1$1", f = "Draggable.kt", i = {0}, l = {312}, m = "invokeSuspend", n = {"$this$drag"}, s = {"L$0"})
            /* renamed from: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00061 extends SuspendLambda implements Function2<DragScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Ref.ObjectRef<DragEvent> $event;
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;
                final /* synthetic */ DraggableNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00061(Ref.ObjectRef<DragEvent> objectRef, DraggableNode draggableNode, Continuation<? super C00061> continuation) {
                    super(2, continuation);
                    this.$event = objectRef;
                    this.this$0 = draggableNode;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C00061 c00061 = new C00061(this.$event, this.this$0, continuation);
                    c00061.L$0 = obj;
                    return c00061;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(DragScope dragScope, Continuation<? super Unit> continuation) {
                    return ((C00061) create(dragScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x006b -> B:5:0x006e). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                    /*
                        r6 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r6.label
                        r2 = 1
                        if (r1 == 0) goto L1f
                        if (r1 != r2) goto L17
                        java.lang.Object r1 = r6.L$1
                        kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
                        java.lang.Object r3 = r6.L$0
                        androidx.compose.foundation.gestures.DragScope r3 = (androidx.compose.foundation.gestures.DragScope) r3
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L6e
                    L17:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L1f:
                        kotlin.ResultKt.throwOnFailure(r7)
                        java.lang.Object r7 = r6.L$0
                        androidx.compose.foundation.gestures.DragScope r7 = (androidx.compose.foundation.gestures.DragScope) r7
                        r3 = r7
                    L27:
                        kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.foundation.gestures.DragEvent> r7 = r6.$event
                        T r7 = r7.element
                        boolean r7 = r7 instanceof androidx.compose.foundation.gestures.DragEvent.DragStopped
                        if (r7 != 0) goto L71
                        kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.foundation.gestures.DragEvent> r7 = r6.$event
                        T r7 = r7.element
                        boolean r7 = r7 instanceof androidx.compose.foundation.gestures.DragEvent.DragCancelled
                        if (r7 != 0) goto L71
                        kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.foundation.gestures.DragEvent> r7 = r6.$event
                        T r7 = r7.element
                        boolean r1 = r7 instanceof androidx.compose.foundation.gestures.DragEvent.DragDelta
                        if (r1 == 0) goto L42
                        androidx.compose.foundation.gestures.DragEvent$DragDelta r7 = (androidx.compose.foundation.gestures.DragEvent.DragDelta) r7
                        goto L43
                    L42:
                        r7 = 0
                    L43:
                        if (r7 == 0) goto L56
                        androidx.compose.foundation.gestures.DraggableNode r1 = r6.this$0
                        long r4 = r7.getDelta()
                        androidx.compose.foundation.gestures.Orientation r7 = androidx.compose.foundation.gestures.DraggableNode.access$getOrientation$p(r1)
                        float r7 = androidx.compose.foundation.gestures.DraggableKt.m295access$toFloat3MmeM6k(r4, r7)
                        r3.dragBy(r7)
                    L56:
                        kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.foundation.gestures.DragEvent> r1 = r6.$event
                        androidx.compose.foundation.gestures.DraggableNode r7 = r6.this$0
                        kotlinx.coroutines.channels.Channel r7 = androidx.compose.foundation.gestures.DraggableNode.access$getChannel$p(r7)
                        r4 = r6
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        r6.L$0 = r3
                        r6.L$1 = r1
                        r6.label = r2
                        java.lang.Object r7 = r7.receive(r4)
                        if (r7 != r0) goto L6e
                        return r0
                    L6e:
                        r1.element = r7
                        goto L27
                    L71:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1.AnonymousClass1.C00051.C00061.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.label
                r2 = 1
                if (r1 == 0) goto L1d
                if (r1 != r2) goto L15
                java.lang.Object r11 = r11.L$0
                kotlinx.coroutines.CoroutineScope r11 = (kotlinx.coroutines.CoroutineScope) r11
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.util.concurrent.CancellationException -> L13
                goto L5b
            L13:
                r12 = move-exception
                goto L55
            L15:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r12)
                throw r11
            L1d:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.L$0
                kotlinx.coroutines.CoroutineScope r12 = (kotlinx.coroutines.CoroutineScope) r12
                r4 = 0
                kotlinx.coroutines.CoroutineStart r5 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
                androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$1 r1 = new androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$1
                androidx.compose.foundation.gestures.DraggableNode r3 = r11.this$0
                r9 = 0
                r1.<init>(r3, r9)
                r6 = r1
                kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
                r7 = 1
                r8 = 0
                r3 = r12
                kotlinx.coroutines.BuildersKt.launch$default(r3, r4, r5, r6, r7, r8)
                androidx.compose.ui.input.pointer.PointerInputScope r1 = r11.$$this$SuspendingPointerInputModifierNode     // Catch: java.util.concurrent.CancellationException -> L51
                androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$2 r3 = new androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$2     // Catch: java.util.concurrent.CancellationException -> L51
                androidx.compose.foundation.gestures.DraggableNode r4 = r11.this$0     // Catch: java.util.concurrent.CancellationException -> L51
                r3.<init>(r12, r4, r9)     // Catch: java.util.concurrent.CancellationException -> L51
                kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3     // Catch: java.util.concurrent.CancellationException -> L51
                r4 = r11
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.util.concurrent.CancellationException -> L51
                r11.L$0 = r12     // Catch: java.util.concurrent.CancellationException -> L51
                r11.label = r2     // Catch: java.util.concurrent.CancellationException -> L51
                java.lang.Object r11 = r1.awaitPointerEventScope(r3, r4)     // Catch: java.util.concurrent.CancellationException -> L51
                if (r11 != r0) goto L5b
                return r0
            L51:
                r11 = move-exception
                r10 = r12
                r12 = r11
                r11 = r10
            L55:
                boolean r11 = kotlinx.coroutines.CoroutineScopeKt.isActive(r11)
                if (r11 == 0) goto L5e
            L5b:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            L5e:
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Draggable.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$2", f = "Draggable.kt", i = {0, 1, 1}, l = {328, 336}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope", "$this$awaitPointerEventScope", "isDragSuccessful"}, s = {"L$0", "L$0", "I$0"})
        /* renamed from: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ CoroutineScope $$this$coroutineScope;
            int I$0;
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            int label;
            final /* synthetic */ DraggableNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(CoroutineScope coroutineScope, DraggableNode draggableNode, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$$this$coroutineScope = coroutineScope;
                this.this$0 = draggableNode;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$$this$coroutineScope, this.this$0, continuation);
                anonymousClass2.L$0 = obj;
                return anonymousClass2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Can't wrap try/catch for region: R(7:24|(1:25)|26|27|28|29|(1:31)(7:33|9|(0)(0)|15|16|17|(2:61|62)(0))) */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x0113, code lost:
            
                r0 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x0121, code lost:
            
                r12 = r1;
                r10 = r20;
                r11 = r21;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x012c, code lost:
            
                r0 = androidx.compose.foundation.gestures.DragEvent.DragCancelled.INSTANCE;
                r1 = r11.channel;
                r1.mo7202trySendJP2dKIU(r0);
                r1 = r2;
                r2 = r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:41:0x013c, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x0111, code lost:
            
                r0 = th;
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:0x0118, code lost:
            
                r11 = r21;
             */
            /* JADX WARN: Removed duplicated region for block: B:11:0x00e0  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0088  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x012c  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x013c A[Catch: all -> 0x013d, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x013d, blocks: (B:38:0x0126, B:41:0x013c), top: B:37:0x0126 }] */
            /* JADX WARN: Removed duplicated region for block: B:45:0x0140  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x0163  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0170  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x0176  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0105  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00d0 -> B:9:0x00d8). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x012c -> B:16:0x0139). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0170 -> B:17:0x0051). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r23) {
                /*
                    Method dump skipped, instructions count: 377
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1.AnonymousClass1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }
    }
}
