package androidx.window.embedding;

import androidx.window.embedding.EmbeddingInterfaceCompat;
import java.util.List;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EmbeddingTranslatingCallback.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/window/embedding/EmbeddingTranslatingCallback;", "Ljava/util/function/Consumer;", "", "Landroidx/window/extensions/embedding/SplitInfo;", "callback", "Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;", "adapter", "Landroidx/window/embedding/EmbeddingAdapter;", "(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingAdapter;)V", "accept", "", "splitInfoList", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class EmbeddingTranslatingCallback implements Consumer<List<? extends androidx.window.extensions.embedding.SplitInfo>> {
    private final EmbeddingAdapter adapter;
    private final EmbeddingInterfaceCompat.EmbeddingCallbackInterface callback;

    public EmbeddingTranslatingCallback(EmbeddingInterfaceCompat.EmbeddingCallbackInterface callback, EmbeddingAdapter adapter) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.callback = callback;
        this.adapter = adapter;
    }

    @Override // java.util.function.Consumer
    public void accept(List<? extends androidx.window.extensions.embedding.SplitInfo> splitInfoList) {
        Intrinsics.checkNotNullParameter(splitInfoList, "splitInfoList");
        this.callback.onSplitInfoChanged(this.adapter.translate(splitInfoList));
    }
}
