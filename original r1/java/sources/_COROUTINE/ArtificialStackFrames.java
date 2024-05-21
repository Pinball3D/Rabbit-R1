package _COROUTINE;

import kotlin.Metadata;

/* compiled from: CoroutineDebugging.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, d2 = {"L_COROUTINE/ArtificialStackFrames;", "", "()V", "coroutineBoundary", "Ljava/lang/StackTraceElement;", "coroutineCreation", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArtificialStackFrames {
    public final StackTraceElement coroutineCreation() {
        StackTraceElement artificialFrame;
        artificialFrame = CoroutineDebuggingKt.artificialFrame(new Exception(), "_CREATION");
        return artificialFrame;
    }

    public final StackTraceElement coroutineBoundary() {
        StackTraceElement artificialFrame;
        artificialFrame = CoroutineDebuggingKt.artificialFrame(new Exception(), "_BOUNDARY");
        return artificialFrame;
    }
}
