package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

/* loaded from: classes2.dex */
final class EmojiKeyListener implements KeyListener {
    private final EmojiCompatHandleKeyDownHelper mEmojiCompatHandleKeyDownHelper;
    private final KeyListener mKeyListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiKeyListener(KeyListener keyListener) {
        this(keyListener, new EmojiCompatHandleKeyDownHelper());
    }

    EmojiKeyListener(KeyListener keyListener, EmojiCompatHandleKeyDownHelper emojiCompatHandleKeyDownHelper) {
        this.mKeyListener = keyListener;
        this.mEmojiCompatHandleKeyDownHelper = emojiCompatHandleKeyDownHelper;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.mKeyListener.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.mEmojiCompatHandleKeyDownHelper.handleKeyDown(editable, i, keyEvent) || this.mKeyListener.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.mKeyListener.onKeyUp(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.mKeyListener.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i) {
        this.mKeyListener.clearMetaKeyState(view, editable, i);
    }

    /* loaded from: classes2.dex */
    public static class EmojiCompatHandleKeyDownHelper {
        public boolean handleKeyDown(Editable editable, int i, KeyEvent keyEvent) {
            return EmojiCompat.handleOnKeyDown(editable, i, keyEvent);
        }
    }
}
