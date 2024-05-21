package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;

/* compiled from: ReportDrawn.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\r\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001H\u0002J\u0006\u0010\u000e\u001a\u00020\u0002R \u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0001\u0012\u0004\u0012\u00020\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/activity/compose/ReportDrawnComposition;", "Lkotlin/Function0;", "", "fullyDrawnReporter", "Landroidx/activity/FullyDrawnReporter;", "predicate", "", "(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function0;)V", "checkReporter", "Lkotlin/Function1;", "snapshotStateObserver", "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "invoke", "observeReporter", "removeReporter", "activity-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ReportDrawnComposition implements Function0<Unit> {
    private final Function1<Function0<Boolean>, Unit> checkReporter;
    private final FullyDrawnReporter fullyDrawnReporter;
    private final Function0<Boolean> predicate;
    private final SnapshotStateObserver snapshotStateObserver;

    public ReportDrawnComposition(FullyDrawnReporter fullyDrawnReporter, Function0<Boolean> function0) {
        this.fullyDrawnReporter = fullyDrawnReporter;
        this.predicate = function0;
        SnapshotStateObserver snapshotStateObserver = new SnapshotStateObserver(new Function1<Function0<? extends Unit>, Unit>() { // from class: androidx.activity.compose.ReportDrawnComposition$snapshotStateObserver$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Function0<Unit> function02) {
                function02.invoke();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Unit> function02) {
                invoke2((Function0<Unit>) function02);
                return Unit.INSTANCE;
            }
        });
        snapshotStateObserver.start();
        this.snapshotStateObserver = snapshotStateObserver;
        this.checkReporter = new ReportDrawnComposition$checkReporter$1(this);
        fullyDrawnReporter.addOnReportDrawnListener(this);
        if (fullyDrawnReporter.isFullyDrawnReported()) {
            return;
        }
        fullyDrawnReporter.addReporter();
        observeReporter(function0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2() {
        this.snapshotStateObserver.clear();
        this.snapshotStateObserver.stop();
    }

    public final void removeReporter() {
        this.snapshotStateObserver.clear(this.predicate);
        if (!this.fullyDrawnReporter.isFullyDrawnReported()) {
            this.fullyDrawnReporter.removeReporter();
        }
        invoke2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void observeReporter(final Function0<Boolean> predicate) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        this.snapshotStateObserver.observeReads(predicate, this.checkReporter, new Function0<Unit>() { // from class: androidx.activity.compose.ReportDrawnComposition$observeReporter$1
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
                Ref.BooleanRef.this.element = predicate.invoke().booleanValue();
            }
        });
        if (booleanRef.element) {
            removeReporter();
        }
    }
}
