package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: Select.kt */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0012H\u0002\u001aE\u0010\u0019\u001a\u0002H\u001a\"\u0004\b\u0000\u0010\u001a2\u001f\b\u0004\u0010\u001b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001a0\u001d\u0012\u0004\u0012\u00020\u001e0\u001c¢\u0006\u0002\b\u001fH\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010 \u001a7\u0010!\u001a\u00020\"*\b\u0012\u0004\u0012\u00020\u001e0#2#\u0010$\u001a\u001f\u0012\u0013\u0012\u00110%¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001cH\u0002\"]\u0010\u0000\u001aQ\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\u000b\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r\"\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000*Â\u0001\b\u0007\u0010'\"[\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030(¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b()\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001e0\u001c0\u00012[\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030(¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b()\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u001e0\u001c0\u0001B\u0002\b**¦\u0001\b\u0007\u0010+\"M\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012M\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0002\b**¦\u0001\b\u0007\u0010,\"M\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030(¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u001e0\u00012M\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030(¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u001e0\u0001B\u0002\b*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"DUMMY_PROCESS_RESULT_FUNCTION", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "clauseObject", "param", "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "NO_RESULT", "Lkotlinx/coroutines/internal/Symbol;", "PARAM_CLAUSE_0", "getPARAM_CLAUSE_0", "()Lkotlinx/coroutines/internal/Symbol;", "STATE_CANCELLED", "STATE_COMPLETED", "STATE_REG", "TRY_SELECT_ALREADY_SELECTED", "", "TRY_SELECT_CANCELLED", "TRY_SELECT_REREGISTER", "TRY_SELECT_SUCCESSFUL", "TrySelectDetailedResult", "Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "trySelectInternalResult", "select", "R", "builder", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryResume", "", "Lkotlinx/coroutines/CancellableContinuation;", "onCancellation", "", "cause", "OnCancellationConstructor", "Lkotlinx/coroutines/selects/SelectInstance;", "internalResult", "Lkotlinx/coroutines/InternalCoroutinesApi;", "ProcessResultFunction", "RegistrationFunction", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SelectKt {
    private static final int TRY_SELECT_ALREADY_SELECTED = 3;
    private static final int TRY_SELECT_CANCELLED = 2;
    private static final int TRY_SELECT_REREGISTER = 1;
    private static final int TRY_SELECT_SUCCESSFUL = 0;
    private static final Function3<Object, Object, Object, Object> DUMMY_PROCESS_RESULT_FUNCTION = new Function3() { // from class: kotlinx.coroutines.selects.SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1
        @Override // kotlin.jvm.functions.Function3
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    };
    private static final Symbol STATE_REG = new Symbol("STATE_REG");
    private static final Symbol STATE_COMPLETED = new Symbol("STATE_COMPLETED");
    private static final Symbol STATE_CANCELLED = new Symbol("STATE_CANCELLED");
    private static final Symbol NO_RESULT = new Symbol("NO_RESULT");
    private static final Symbol PARAM_CLAUSE_0 = new Symbol("PARAM_CLAUSE_0");

    public static /* synthetic */ void OnCancellationConstructor$annotations() {
    }

    public static /* synthetic */ void ProcessResultFunction$annotations() {
    }

    public static /* synthetic */ void RegistrationFunction$annotations() {
    }

    public static final Symbol getPARAM_CLAUSE_0() {
        return PARAM_CLAUSE_0;
    }

    public static final <R> Object select(Function1<? super SelectBuilder<? super R>, Unit> function1, Continuation<? super R> continuation) {
        SelectImplementation selectImplementation = new SelectImplementation(continuation.getContext());
        function1.invoke(selectImplementation);
        return selectImplementation.doSelect(continuation);
    }

    private static final <R> Object select$$forInline(Function1<? super SelectBuilder<? super R>, Unit> function1, Continuation<? super R> continuation) {
        InlineMarker.mark(3);
        Continuation continuation2 = null;
        continuation2.getContext();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean tryResume(CancellableContinuation<? super Unit> cancellableContinuation, Function1<? super Throwable, Unit> function1) {
        Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, function1);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TrySelectDetailedResult TrySelectDetailedResult(int i) {
        if (i == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i).toString());
    }
}
