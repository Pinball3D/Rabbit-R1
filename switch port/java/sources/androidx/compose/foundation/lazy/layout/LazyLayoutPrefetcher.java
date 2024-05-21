package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.View;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import io.sentry.protocol.SentryThread;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutPrefetcher.android.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 02\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u000201B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016J \u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0002J\b\u0010$\u001a\u00020\u001eH\u0016J\b\u0010%\u001a\u00020\u001eH\u0016J\b\u0010&\u001a\u00020\u001eH\u0016J\b\u0010'\u001a\u00020\u001eH\u0016J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00062"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;", "Landroidx/compose/runtime/RememberObserver;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;", "Ljava/lang/Runnable;", "Landroid/view/Choreographer$FrameCallback;", "prefetchState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "subcomposeLayoutState", "Landroidx/compose/ui/layout/SubcomposeLayoutState;", "itemContentFactory", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;", "view", "Landroid/view/View;", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroid/view/View;)V", "averagePrecomposeTimeNs", "", "averagePremeasureTimeNs", "choreographer", "Landroid/view/Choreographer;", "kotlin.jvm.PlatformType", "isActive", "", "prefetchRequests", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;", "prefetchScheduled", "calculateAverageTime", "new", SentryThread.JsonKeys.CURRENT, "doFrame", "", "frameTimeNanos", "enoughTimeLeft", "now", "nextFrame", "average", "onAbandoned", "onForgotten", "onRemembered", "run", "schedulePrefetch", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "index", "", "constraints", "Landroidx/compose/ui/unit/Constraints;", "schedulePrefetch-0kLqBqw", "(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "Companion", "PrefetchRequest", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutPrefetcher implements RememberObserver, LazyLayoutPrefetchState.Prefetcher, Runnable, Choreographer.FrameCallback {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static long frameIntervalNs;
    private long averagePrecomposeTimeNs;
    private long averagePremeasureTimeNs;
    private final Choreographer choreographer;
    private boolean isActive;
    private final LazyLayoutItemContentFactory itemContentFactory;
    private final MutableVector<PrefetchRequest> prefetchRequests;
    private boolean prefetchScheduled;
    private final LazyLayoutPrefetchState prefetchState;
    private final SubcomposeLayoutState subcomposeLayoutState;
    private final View view;

    private final boolean enoughTimeLeft(long now, long nextFrame, long average) {
        return now > nextFrame || now + average < nextFrame;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }

    public LazyLayoutPrefetcher(LazyLayoutPrefetchState prefetchState, SubcomposeLayoutState subcomposeLayoutState, LazyLayoutItemContentFactory itemContentFactory, View view) {
        Intrinsics.checkNotNullParameter(prefetchState, "prefetchState");
        Intrinsics.checkNotNullParameter(subcomposeLayoutState, "subcomposeLayoutState");
        Intrinsics.checkNotNullParameter(itemContentFactory, "itemContentFactory");
        Intrinsics.checkNotNullParameter(view, "view");
        this.prefetchState = prefetchState;
        this.subcomposeLayoutState = subcomposeLayoutState;
        this.itemContentFactory = itemContentFactory;
        this.view = view;
        this.prefetchRequests = new MutableVector<>(new PrefetchRequest[16], 0);
        this.choreographer = Choreographer.getInstance();
        INSTANCE.calculateFrameIntervalIfNeeded(view);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prefetchRequests.isEmpty() || !this.prefetchScheduled || !this.isActive || this.view.getWindowVisibility() != 0) {
            this.prefetchScheduled = false;
            return;
        }
        long nanos = TimeUnit.MILLISECONDS.toNanos(this.view.getDrawingTime()) + frameIntervalNs;
        boolean z = false;
        while (this.prefetchRequests.isNotEmpty() && !z) {
            PrefetchRequest prefetchRequest = this.prefetchRequests.getContent()[0];
            LazyLayoutItemProvider invoke = this.itemContentFactory.getItemProvider().invoke();
            if (!prefetchRequest.getCanceled()) {
                int itemCount = invoke.getItemCount();
                int index = prefetchRequest.getIndex();
                if (index >= 0 && index < itemCount) {
                    if (prefetchRequest.getPrecomposeHandle() != null) {
                        if (!(!prefetchRequest.getMeasured())) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        Trace.beginSection("compose:lazylist:prefetch:measure");
                        try {
                            long nanoTime = System.nanoTime();
                            if (enoughTimeLeft(nanoTime, nanos, this.averagePremeasureTimeNs)) {
                                SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle = prefetchRequest.getPrecomposeHandle();
                                Intrinsics.checkNotNull(precomposeHandle);
                                int placeablesCount = precomposeHandle.getPlaceablesCount();
                                for (int i = 0; i < placeablesCount; i++) {
                                    precomposeHandle.mo3897premeasure0kLqBqw(i, prefetchRequest.getConstraints());
                                }
                                this.averagePremeasureTimeNs = calculateAverageTime(System.nanoTime() - nanoTime, this.averagePremeasureTimeNs);
                                this.prefetchRequests.removeAt(0);
                            } else {
                                Unit unit = Unit.INSTANCE;
                                z = true;
                            }
                        } finally {
                        }
                    } else {
                        Trace.beginSection("compose:lazylist:prefetch:compose");
                        try {
                            long nanoTime2 = System.nanoTime();
                            if (enoughTimeLeft(nanoTime2, nanos, this.averagePrecomposeTimeNs)) {
                                Object key = invoke.getKey(prefetchRequest.getIndex());
                                prefetchRequest.setPrecomposeHandle(this.subcomposeLayoutState.precompose(key, this.itemContentFactory.getContent(prefetchRequest.getIndex(), key, invoke.getContentType(prefetchRequest.getIndex()))));
                                this.averagePrecomposeTimeNs = calculateAverageTime(System.nanoTime() - nanoTime2, this.averagePrecomposeTimeNs);
                            } else {
                                z = true;
                            }
                            Unit unit2 = Unit.INSTANCE;
                        } finally {
                        }
                    }
                }
            }
            this.prefetchRequests.removeAt(0);
        }
        if (z) {
            this.choreographer.postFrameCallback(this);
        } else {
            this.prefetchScheduled = false;
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long frameTimeNanos) {
        if (this.isActive) {
            this.view.post(this);
        }
    }

    private final long calculateAverageTime(long r5, long current) {
        if (current == 0) {
            return r5;
        }
        long j = 4;
        return (r5 / j) + ((current / j) * 3);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.Prefetcher
    /* renamed from: schedulePrefetch-0kLqBqw */
    public LazyLayoutPrefetchState.PrefetchHandle mo650schedulePrefetch0kLqBqw(int index, long constraints) {
        PrefetchRequest prefetchRequest = new PrefetchRequest(index, constraints, null);
        this.prefetchRequests.add(prefetchRequest);
        if (!this.prefetchScheduled) {
            this.prefetchScheduled = true;
            this.view.post(this);
        }
        return prefetchRequest;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        this.prefetchState.setPrefetcher$foundation_release(this);
        this.isActive = true;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        this.isActive = false;
        this.prefetchState.setPrefetcher$foundation_release(null);
        this.view.removeCallbacks(this);
        this.choreographer.removeFrameCallback(this);
    }

    /* compiled from: LazyLayoutPrefetcher.android.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\fR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001d"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "index", "", "constraints", "Landroidx/compose/ui/unit/Constraints;", "(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "canceled", "", "getCanceled", "()Z", "setCanceled", "(Z)V", "getConstraints-msEJaDk", "()J", "J", "getIndex", "()I", "measured", "getMeasured", "setMeasured", "precomposeHandle", "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "getPrecomposeHandle", "()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "setPrecomposeHandle", "(Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;)V", "cancel", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class PrefetchRequest implements LazyLayoutPrefetchState.PrefetchHandle {
        private boolean canceled;
        private final long constraints;
        private final int index;
        private boolean measured;
        private SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle;

        public /* synthetic */ PrefetchRequest(int i, long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, j);
        }

        public final boolean getCanceled() {
            return this.canceled;
        }

        /* renamed from: getConstraints-msEJaDk, reason: not valid java name and from getter */
        public final long getConstraints() {
            return this.constraints;
        }

        public final int getIndex() {
            return this.index;
        }

        public final boolean getMeasured() {
            return this.measured;
        }

        public final SubcomposeLayoutState.PrecomposedSlotHandle getPrecomposeHandle() {
            return this.precomposeHandle;
        }

        public final void setCanceled(boolean z) {
            this.canceled = z;
        }

        public final void setMeasured(boolean z) {
            this.measured = z;
        }

        public final void setPrecomposeHandle(SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle) {
            this.precomposeHandle = precomposedSlotHandle;
        }

        private PrefetchRequest(int i, long j) {
            this.index = i;
            this.constraints = j;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public void cancel() {
            if (this.canceled) {
                return;
            }
            this.canceled = true;
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            if (precomposedSlotHandle != null) {
                precomposedSlotHandle.dispose();
            }
            this.precomposeHandle = null;
        }
    }

    /* compiled from: LazyLayoutPrefetcher.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;", "", "()V", "frameIntervalNs", "", "calculateFrameIntervalIfNeeded", "", "view", "Landroid/view/View;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        
            if (r4 >= 30.0f) goto L11;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void calculateFrameIntervalIfNeeded(android.view.View r5) {
            /*
                r4 = this;
                long r0 = androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher.access$getFrameIntervalNs$cp()
                r2 = 0
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 != 0) goto L2c
                android.view.Display r4 = r5.getDisplay()
                boolean r5 = r5.isInEditMode()
                if (r5 != 0) goto L21
                if (r4 == 0) goto L21
                float r4 = r4.getRefreshRate()
                r5 = 1106247680(0x41f00000, float:30.0)
                int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r5 < 0) goto L21
                goto L23
            L21:
                r4 = 1114636288(0x42700000, float:60.0)
            L23:
                r5 = 1000000000(0x3b9aca00, float:0.0047237873)
                float r5 = (float) r5
                float r5 = r5 / r4
                long r4 = (long) r5
                androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher.access$setFrameIntervalNs$cp(r4)
            L2c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher.Companion.calculateFrameIntervalIfNeeded(android.view.View):void");
        }
    }
}
