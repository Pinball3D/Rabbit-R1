package androidx.room;

import androidx.room.IMultiInstanceInvalidationCallback;
import java.util.Arrays;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MultiInstanceInvalidationClient.kt */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005H\u0016¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"androidx/room/MultiInstanceInvalidationClient$callback$1", "Landroidx/room/IMultiInstanceInvalidationCallback$Stub;", "onInvalidation", "", "tables", "", "", "([Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MultiInstanceInvalidationClient$callback$1 extends IMultiInstanceInvalidationCallback.Stub {
    final /* synthetic */ MultiInstanceInvalidationClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultiInstanceInvalidationClient$callback$1(MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        this.this$0 = multiInstanceInvalidationClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInvalidation$lambda$0(MultiInstanceInvalidationClient this$0, String[] tables) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tables, "$tables");
        this$0.getInvalidationTracker().notifyObserversByTableNames((String[]) Arrays.copyOf(tables, tables.length));
    }

    @Override // androidx.room.IMultiInstanceInvalidationCallback
    public void onInvalidation(final String[] tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        Executor executor = this.this$0.getExecutor();
        final MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.this$0;
        executor.execute(new Runnable() { // from class: androidx.room.MultiInstanceInvalidationClient$callback$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MultiInstanceInvalidationClient$callback$1.onInvalidation$lambda$0(MultiInstanceInvalidationClient.this, tables);
            }
        });
    }
}
