package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.selects.SelectInstance;

/* compiled from: Actor.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
/* synthetic */ class LazyActorCoroutine$onSend$1 extends FunctionReferenceImpl implements Function3<LazyActorCoroutine<?>, SelectInstance<?>, Object, Unit> {
    public static final LazyActorCoroutine$onSend$1 INSTANCE = new LazyActorCoroutine$onSend$1();

    LazyActorCoroutine$onSend$1() {
        super(3, LazyActorCoroutine.class, "onSendRegFunction", "onSendRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(LazyActorCoroutine<?> lazyActorCoroutine, SelectInstance<?> selectInstance, Object obj) {
        invoke2(lazyActorCoroutine, selectInstance, obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LazyActorCoroutine<?> lazyActorCoroutine, SelectInstance<?> selectInstance, Object obj) {
        lazyActorCoroutine.onSendRegFunction(selectInstance, obj);
    }
}
