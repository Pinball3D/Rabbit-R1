package androidx.compose.ui.text.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.emoji2.text.EmojiCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EmojiCompatStatus.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/platform/DefaultImpl;", "Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;", "()V", "fontLoaded", "Landroidx/compose/runtime/State;", "", "getFontLoaded", "()Landroidx/compose/runtime/State;", "loadState", "getFontLoadState", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class DefaultImpl implements EmojiCompatStatusDelegate {
    private State<Boolean> loadState;

    public DefaultImpl() {
        this.loadState = EmojiCompat.isConfigured() ? getFontLoadState() : null;
    }

    @Override // androidx.compose.ui.text.platform.EmojiCompatStatusDelegate
    public State<Boolean> getFontLoaded() {
        ImmutableBool immutableBool;
        State<Boolean> state = this.loadState;
        if (state != null) {
            Intrinsics.checkNotNull(state);
            return state;
        }
        if (EmojiCompat.isConfigured()) {
            State<Boolean> fontLoadState = getFontLoadState();
            this.loadState = fontLoadState;
            Intrinsics.checkNotNull(fontLoadState);
            return fontLoadState;
        }
        immutableBool = EmojiCompatStatusKt.Falsey;
        return immutableBool;
    }

    private final State<Boolean> getFontLoadState() {
        final MutableState mutableStateOf$default;
        EmojiCompat emojiCompat = EmojiCompat.get();
        Intrinsics.checkNotNullExpressionValue(emojiCompat, "get()");
        if (emojiCompat.getLoadState() != 1) {
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
            emojiCompat.registerInitCallback(new EmojiCompat.InitCallback() { // from class: androidx.compose.ui.text.platform.DefaultImpl$getFontLoadState$initCallback$1
                @Override // androidx.emoji2.text.EmojiCompat.InitCallback
                public void onInitialized() {
                    mutableStateOf$default.setValue(true);
                    this.loadState = new ImmutableBool(true);
                }

                @Override // androidx.emoji2.text.EmojiCompat.InitCallback
                public void onFailed(Throwable throwable) {
                    ImmutableBool immutableBool;
                    DefaultImpl defaultImpl = this;
                    immutableBool = EmojiCompatStatusKt.Falsey;
                    defaultImpl.loadState = immutableBool;
                }
            });
            return mutableStateOf$default;
        }
        return new ImmutableBool(true);
    }
}
