package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: SharingStarted.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a+\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\b"}, d2 = {"WhileSubscribed", "Lkotlinx/coroutines/flow/SharingStarted;", "Lkotlinx/coroutines/flow/SharingStarted$Companion;", "stopTimeout", "Lkotlin/time/Duration;", "replayExpiration", "WhileSubscribed-5qebJ5I", "(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJ)Lkotlinx/coroutines/flow/SharingStarted;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SharingStartedKt {
    /* renamed from: WhileSubscribed-5qebJ5I$default, reason: not valid java name */
    public static /* synthetic */ SharingStarted m7245WhileSubscribed5qebJ5I$default(SharingStarted.Companion companion, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = Duration.INSTANCE.m7127getZEROUwyO8pc();
        }
        if ((i & 2) != 0) {
            j2 = Duration.INSTANCE.m7125getINFINITEUwyO8pc();
        }
        return m7244WhileSubscribed5qebJ5I(companion, j, j2);
    }

    /* renamed from: WhileSubscribed-5qebJ5I, reason: not valid java name */
    public static final SharingStarted m7244WhileSubscribed5qebJ5I(SharingStarted.Companion companion, long j, long j2) {
        return new StartedWhileSubscribed(Duration.m7042getInWholeMillisecondsimpl(j), Duration.m7042getInWholeMillisecondsimpl(j2));
    }
}
