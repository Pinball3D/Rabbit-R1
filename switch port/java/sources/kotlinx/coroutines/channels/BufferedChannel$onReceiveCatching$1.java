package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.selects.SelectInstance;

/* compiled from: BufferedChannel.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
/* synthetic */ class BufferedChannel$onReceiveCatching$1 extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, Unit> {
    public static final BufferedChannel$onReceiveCatching$1 INSTANCE = new BufferedChannel$onReceiveCatching$1();

    BufferedChannel$onReceiveCatching$1() {
        super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
        invoke2(bufferedChannel, selectInstance, obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
        bufferedChannel.registerSelectForReceive(selectInstance, obj);
    }
}
