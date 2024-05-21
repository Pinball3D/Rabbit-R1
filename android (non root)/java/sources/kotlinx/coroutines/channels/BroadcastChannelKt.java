package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: BroadcastChannel.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"NO_ELEMENT", "Lkotlinx/coroutines/internal/Symbol;", "BroadcastChannel", "Lkotlinx/coroutines/channels/BroadcastChannel;", ExifInterface.LONGITUDE_EAST, "capacity", "", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BroadcastChannelKt {
    private static final Symbol NO_ELEMENT = new Symbol("NO_ELEMENT");

    public static final /* synthetic */ Symbol access$getNO_ELEMENT$p() {
        return NO_ELEMENT;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and StateFlow, and is no longer supported")
    public static final <E> BroadcastChannel<E> BroadcastChannel(int i) {
        if (i == -2) {
            return new BroadcastChannelImpl(Channel.INSTANCE.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core());
        }
        if (i == -1) {
            return new ConflatedBroadcastChannel();
        }
        if (i == 0) {
            throw new IllegalArgumentException("Unsupported 0 capacity for BroadcastChannel");
        }
        if (i == Integer.MAX_VALUE) {
            throw new IllegalArgumentException("Unsupported UNLIMITED capacity for BroadcastChannel");
        }
        return new BroadcastChannelImpl(i);
    }
}
