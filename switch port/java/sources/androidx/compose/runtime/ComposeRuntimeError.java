package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/ComposeRuntimeError;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "message", "", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposeRuntimeError extends IllegalStateException {
    private final String message;

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public ComposeRuntimeError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
    }
}
