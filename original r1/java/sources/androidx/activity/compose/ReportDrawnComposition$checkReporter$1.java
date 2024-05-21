package androidx.activity.compose;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReportDrawn.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public /* synthetic */ class ReportDrawnComposition$checkReporter$1 extends FunctionReferenceImpl implements Function1<Function0<? extends Boolean>, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ReportDrawnComposition$checkReporter$1(Object obj) {
        super(1, obj, ReportDrawnComposition.class, "observeReporter", "observeReporter(Lkotlin/jvm/functions/Function0;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Boolean> function0) {
        invoke2((Function0<Boolean>) function0);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Function0<Boolean> function0) {
        ((ReportDrawnComposition) this.receiver).observeReporter(function0);
    }
}
