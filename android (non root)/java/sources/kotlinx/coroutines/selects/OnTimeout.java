package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DelayKt;

/* compiled from: OnTimeout.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0002R\u0017\u0010\u0005\u001a\u00020\u00068F¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/selects/OnTimeout;", "", "timeMillis", "", "(J)V", "selectClause", "Lkotlinx/coroutines/selects/SelectClause0;", "getSelectClause$annotations", "()V", "getSelectClause", "()Lkotlinx/coroutines/selects/SelectClause0;", "register", "", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "ignoredParam", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
final class OnTimeout {
    private final long timeMillis;

    public static /* synthetic */ void getSelectClause$annotations() {
    }

    public OnTimeout(long j) {
        this.timeMillis = j;
    }

    public final SelectClause0 getSelectClause() {
        OnTimeout$selectClause$1 onTimeout$selectClause$1 = OnTimeout$selectClause$1.INSTANCE;
        Intrinsics.checkNotNull(onTimeout$selectClause$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new SelectClause0Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(onTimeout$selectClause$1, 3), null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void register(final SelectInstance<?> select, Object ignoredParam) {
        if (this.timeMillis <= 0) {
            select.selectInRegistrationPhase(Unit.INSTANCE);
            return;
        }
        Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.selects.OnTimeout$register$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                SelectInstance.this.trySelect(this, Unit.INSTANCE);
            }
        };
        Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        CoroutineContext context = select.getContext();
        select.disposeOnCompletion(DelayKt.getDelay(context).invokeOnTimeout(this.timeMillis, runnable, context));
    }
}
