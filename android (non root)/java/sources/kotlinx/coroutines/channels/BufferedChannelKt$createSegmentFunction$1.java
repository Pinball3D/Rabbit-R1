package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: BufferedChannel.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public /* synthetic */ class BufferedChannelKt$createSegmentFunction$1<E> extends FunctionReferenceImpl implements Function2<Long, ChannelSegment<E>, ChannelSegment<E>> {
    public static final BufferedChannelKt$createSegmentFunction$1 INSTANCE = new BufferedChannelKt$createSegmentFunction$1();

    BufferedChannelKt$createSegmentFunction$1() {
        super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Long l, Object obj) {
        return invoke(l.longValue(), (ChannelSegment) obj);
    }

    public final ChannelSegment<E> invoke(long j, ChannelSegment<E> channelSegment) {
        ChannelSegment<E> createSegment;
        createSegment = BufferedChannelKt.createSegment(j, channelSegment);
        return createSegment;
    }
}
