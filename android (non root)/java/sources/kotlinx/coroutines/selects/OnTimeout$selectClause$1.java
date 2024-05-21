package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OnTimeout.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public /* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements Function3<OnTimeout, SelectInstance<?>, Object, Unit> {
    public static final OnTimeout$selectClause$1 INSTANCE = new OnTimeout$selectClause$1();

    OnTimeout$selectClause$1() {
        super(3, OnTimeout.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(OnTimeout onTimeout, SelectInstance<?> selectInstance, Object obj) {
        invoke2(onTimeout, selectInstance, obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(OnTimeout onTimeout, SelectInstance<?> selectInstance, Object obj) {
        onTimeout.register(selectInstance, obj);
    }
}
