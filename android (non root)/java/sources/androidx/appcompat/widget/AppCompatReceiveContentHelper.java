package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
final class AppCompatReceiveContentHelper {
    private static final String LOG_TAG = "ReceiveContent";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeHandleDragEventViaPerformReceiveContent(View view, DragEvent dragEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean maybeHandleMenuActionViaPerformReceiveContent(TextView textView, int i) {
        return false;
    }

    private AppCompatReceiveContentHelper() {
    }

    /* loaded from: classes.dex */
    private static final class OnDropApi24Impl {
        private OnDropApi24Impl() {
        }

        static boolean onDropForTextView(DragEvent dragEvent, TextView textView, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
            textView.beginBatchEdit();
            try {
                Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
                ViewCompat.performReceiveContent(textView, new ContentInfoCompat.Builder(dragEvent.getClipData(), 3).build());
                textView.endBatchEdit();
                return true;
            } catch (Throwable th) {
                textView.endBatchEdit();
                throw th;
            }
        }

        static boolean onDropForView(DragEvent dragEvent, View view, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            ViewCompat.performReceiveContent(view, new ContentInfoCompat.Builder(dragEvent.getClipData(), 3).build());
            return true;
        }
    }

    static Activity tryGetActivity(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }
}
