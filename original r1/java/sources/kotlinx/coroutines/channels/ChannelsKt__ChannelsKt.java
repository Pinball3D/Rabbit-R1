package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: Channels.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0007¢\u0006\u0002\u0010\u0005\u001a,\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002ø\u0001\u0000¢\u0006\u0002\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"sendBlocking", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/SendChannel;", "element", "(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)V", "trySendBlocking", "Lkotlinx/coroutines/channels/ChannelResult;", "(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "kotlinx/coroutines/channels/ChannelsKt")
/* loaded from: classes3.dex */
final /* synthetic */ class ChannelsKt__ChannelsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> Object trySendBlocking(SendChannel<? super E> sendChannel, E e) {
        Object runBlocking$default;
        Object mo7202trySendJP2dKIU = sendChannel.mo7202trySendJP2dKIU(e);
        if (mo7202trySendJP2dKIU instanceof ChannelResult.Failed) {
            runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sendChannel, e, null), 1, null);
            return ((ChannelResult) runBlocking$default).getHolder();
        }
        return ChannelResult.INSTANCE.m7227successJP2dKIU(Unit.INSTANCE);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    public static final /* synthetic */ void sendBlocking(SendChannel sendChannel, Object obj) {
        if (ChannelResult.m7222isSuccessimpl(sendChannel.mo7202trySendJP2dKIU(obj))) {
            return;
        }
        BuildersKt__BuildersKt.runBlocking$default(null, new ChannelsKt__ChannelsKt$sendBlocking$1(sendChannel, obj, null), 1, null);
    }
}
