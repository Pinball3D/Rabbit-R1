package androidx.emoji2.viewsintegration;

import android.text.Editable;
import androidx.emoji2.text.SpannableBuilder;

/* loaded from: classes2.dex */
final class EmojiEditableFactory extends Editable.Factory {
    private static final Object INSTANCE_LOCK = new Object();
    private static volatile Editable.Factory sInstance;
    private static Class<?> sWatcherClass;

    private EmojiEditableFactory() {
        try {
            sWatcherClass = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, getClass().getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (sInstance == null) {
            synchronized (INSTANCE_LOCK) {
                if (sInstance == null) {
                    sInstance = new EmojiEditableFactory();
                }
            }
        }
        return sInstance;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class<?> cls = sWatcherClass;
        if (cls != null) {
            return SpannableBuilder.create(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
