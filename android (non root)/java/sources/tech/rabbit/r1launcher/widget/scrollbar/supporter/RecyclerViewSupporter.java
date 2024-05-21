package tech.rabbit.r1launcher.widget.scrollbar.supporter;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.widget.scrollbar.supporter.RecyclerViewSupporter;

/* compiled from: RecyclerViewSupporter.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;", "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "(Landroidx/recyclerview/widget/RecyclerView;)V", "onScrollListener", "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;", "getOnScrollListener", "()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;", "onScrollListener$delegate", "Lkotlin/Lazy;", "attachExt", "", "detachExt", "OnScrollListenerWrap", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RecyclerViewSupporter extends BaseSupporter {
    public static final int $stable = 8;

    /* renamed from: onScrollListener$delegate, reason: from kotlin metadata */
    private final Lazy onScrollListener;
    private final RecyclerView recyclerView;

    public RecyclerViewSupporter(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.recyclerView = recyclerView;
        this.onScrollListener = LazyKt.lazy(new Function0<OnScrollListenerWrap>() { // from class: tech.rabbit.r1launcher.widget.scrollbar.supporter.RecyclerViewSupporter$onScrollListener$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerViewSupporter.OnScrollListenerWrap invoke() {
                final RecyclerViewSupporter recyclerViewSupporter = RecyclerViewSupporter.this;
                return new RecyclerViewSupporter.OnScrollListenerWrap(new Function1<Float, Unit>() { // from class: tech.rabbit.r1launcher.widget.scrollbar.supporter.RecyclerViewSupporter$onScrollListener$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                        invoke(f.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(float f) {
                        RecyclerViewSupporter.this.getUpdater().updateScrollPercentage(f);
                    }
                });
            }
        });
    }

    private final OnScrollListenerWrap getOnScrollListener() {
        return (OnScrollListenerWrap) this.onScrollListener.getValue();
    }

    @Override // tech.rabbit.r1launcher.widget.scrollbar.supporter.BaseSupporter
    public void attachExt() {
        this.recyclerView.addOnScrollListener(getOnScrollListener());
    }

    @Override // tech.rabbit.r1launcher.widget.scrollbar.supporter.BaseSupporter
    public void detachExt() {
        this.recyclerView.removeOnScrollListener(getOnScrollListener());
    }

    /* compiled from: RecyclerViewSupporter.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J \u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "handler", "Lkotlin/Function1;", "", "", "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/OnScrollingPercentageHandler;", "(Lkotlin/jvm/functions/Function1;)V", "getHandler", "()Lkotlin/jvm/functions/Function1;", "onScrolled", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class OnScrollListenerWrap extends RecyclerView.OnScrollListener {
        public static final int $stable = 0;
        private final Function1<Float, Unit> handler;

        public final Function1<Float, Unit> getHandler() {
            return this.handler;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public OnScrollListenerWrap(Function1<? super Float, Unit> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.handler = handler;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            this.handler.invoke(Float.valueOf(recyclerView.computeVerticalScrollOffset() / (recyclerView.computeVerticalScrollRange() - recyclerView.computeVerticalScrollExtent())));
        }
    }
}
