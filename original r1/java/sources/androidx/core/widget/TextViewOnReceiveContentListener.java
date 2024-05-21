package androidx.core.widget;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentListener;

/* loaded from: classes.dex */
public final class TextViewOnReceiveContentListener implements OnReceiveContentListener {
    private static final String LOG_TAG = "ReceiveContent";

    @Override // androidx.core.view.OnReceiveContentListener
    public ContentInfoCompat onReceiveContent(View view, ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(LOG_TAG, 3)) {
            Log.d(LOG_TAG, "onReceive: " + contentInfoCompat);
        }
        if (contentInfoCompat.getSource() == 2) {
            return contentInfoCompat;
        }
        ClipData clip = contentInfoCompat.getClip();
        int flags = contentInfoCompat.getFlags();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z = false;
        for (int i = 0; i < clip.getItemCount(); i++) {
            CharSequence coerceToText = coerceToText(context, clip.getItemAt(i), flags);
            if (coerceToText != null) {
                if (!z) {
                    replaceSelection(editable, coerceToText);
                    z = true;
                } else {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), coerceToText);
                }
            }
        }
        return null;
    }

    private static CharSequence coerceToText(Context context, ClipData.Item item, int i) {
        return Api16Impl.coerce(context, item, i);
    }

    private static void replaceSelection(Editable editable, CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int max = Math.max(0, Math.min(selectionStart, selectionEnd));
        int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, max2);
        editable.replace(max, max2, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Api16Impl {
        private Api16Impl() {
        }

        static CharSequence coerce(Context context, ClipData.Item item, int i) {
            if ((i & 1) != 0) {
                CharSequence coerceToText = item.coerceToText(context);
                return coerceToText instanceof Spanned ? coerceToText.toString() : coerceToText;
            }
            return item.coerceToStyledText(context);
        }
    }

    /* loaded from: classes.dex */
    private static final class ApiImpl {
        private ApiImpl() {
        }

        static CharSequence coerce(Context context, ClipData.Item item, int i) {
            CharSequence coerceToText = item.coerceToText(context);
            return ((i & 1) == 0 || !(coerceToText instanceof Spanned)) ? coerceToText : coerceToText.toString();
        }
    }
}
