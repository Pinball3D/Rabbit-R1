package androidx.compose.ui.platform.coreshims;

import android.view.View;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;

/* loaded from: classes.dex */
public class ViewCompatShims {
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_AUTO = 0;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_NO = 2;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_NO_EXCLUDE_DESCENDANTS = 8;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_YES = 1;
    public static final int IMPORTANT_FOR_CONTENT_CAPTURE_YES_EXCLUDE_DESCENDANTS = 4;

    private ViewCompatShims() {
    }

    public static void setImportantForContentCapture(View view, int i) {
        Api30Impl.setImportantForContentCapture(view, i);
    }

    public static ContentCaptureSessionCompat getContentCaptureSession(View view) {
        ContentCaptureSession contentCaptureSession = Api29Impl.getContentCaptureSession(view);
        if (contentCaptureSession == null) {
            return null;
        }
        return ContentCaptureSessionCompat.toContentCaptureSessionCompat(contentCaptureSession, view);
    }

    public static AutofillIdCompat getAutofillId(View view) {
        return AutofillIdCompat.toAutofillIdCompat(Api26Impl.getAutofillId(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        public static AutofillId getAutofillId(View view) {
            return view.getAutofillId();
        }
    }

    /* loaded from: classes.dex */
    private static class Api29Impl {
        private Api29Impl() {
        }

        static ContentCaptureSession getContentCaptureSession(View view) {
            return view.getContentCaptureSession();
        }
    }

    /* loaded from: classes.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        static void setImportantForContentCapture(View view, int i) {
            view.setImportantForContentCapture(i);
        }
    }
}
