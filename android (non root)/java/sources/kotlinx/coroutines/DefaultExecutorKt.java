package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.SystemPropsKt;

/* compiled from: DefaultExecutor.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\b\u0010\u0006\u001a\u00020\u0001H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"DefaultDelay", "Lkotlinx/coroutines/Delay;", "getDefaultDelay", "()Lkotlinx/coroutines/Delay;", "defaultMainDelayOptIn", "", "initializeDefaultDelay", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DefaultExecutorKt {
    private static final boolean defaultMainDelayOptIn = SystemPropsKt.systemProp("kotlinx.coroutines.main.delay", false);
    private static final Delay DefaultDelay = initializeDefaultDelay();

    public static final Delay getDefaultDelay() {
        return DefaultDelay;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
    
        if (r1 == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final kotlinx.coroutines.Delay initializeDefaultDelay() {
        /*
            boolean r0 = kotlinx.coroutines.DefaultExecutorKt.defaultMainDelayOptIn
            if (r0 != 0) goto L9
            kotlinx.coroutines.DefaultExecutor r0 = kotlinx.coroutines.DefaultExecutor.INSTANCE
            kotlinx.coroutines.Delay r0 = (kotlinx.coroutines.Delay) r0
            return r0
        L9:
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getMain()
            boolean r1 = kotlinx.coroutines.internal.MainDispatchersKt.isMissing(r0)
            if (r1 != 0) goto L17
            boolean r1 = r0 instanceof kotlinx.coroutines.Delay
            if (r1 != 0) goto L19
        L17:
            kotlinx.coroutines.DefaultExecutor r0 = kotlinx.coroutines.DefaultExecutor.INSTANCE
        L19:
            kotlinx.coroutines.Delay r0 = (kotlinx.coroutines.Delay) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DefaultExecutorKt.initializeDefaultDelay():kotlinx.coroutines.Delay");
    }
}
