package androidx.core.view.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewStructureCompat;
import androidx.core.view.autofill.AutofillIdCompat;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ContentCaptureSessionCompat {
    private static final String KEY_VIEW_TREE_APPEARED = "TREAT_AS_VIEW_TREE_APPEARED";
    private static final String KEY_VIEW_TREE_APPEARING = "TREAT_AS_VIEW_TREE_APPEARING";
    private final View mView;
    private final Object mWrappedObj;

    public static ContentCaptureSessionCompat toContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        return new ContentCaptureSessionCompat(contentCaptureSession, view);
    }

    public ContentCaptureSession toContentCaptureSession() {
        return (ContentCaptureSession) this.mWrappedObj;
    }

    private ContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        this.mWrappedObj = contentCaptureSession;
        this.mView = view;
    }

    public AutofillId newAutofillId(long j) {
        return Api29Impl.newAutofillId((ContentCaptureSession) this.mWrappedObj, ((AutofillIdCompat) Objects.requireNonNull(ViewCompat.getAutofillId(this.mView))).toAutofillId(), j);
    }

    public ViewStructureCompat newVirtualViewStructure(AutofillId autofillId, long j) {
        return ViewStructureCompat.toViewStructureCompat(Api29Impl.newVirtualViewStructure((ContentCaptureSession) this.mWrappedObj, autofillId, j));
    }

    public void notifyViewsAppeared(List<ViewStructure> list) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.notifyViewsAppeared((ContentCaptureSession) this.mWrappedObj, list);
            return;
        }
        ViewStructure newViewStructure = Api29Impl.newViewStructure((ContentCaptureSession) this.mWrappedObj, this.mView);
        Api23Impl.getExtras(newViewStructure).putBoolean(KEY_VIEW_TREE_APPEARING, true);
        Api29Impl.notifyViewAppeared((ContentCaptureSession) this.mWrappedObj, newViewStructure);
        for (int i = 0; i < list.size(); i++) {
            Api29Impl.notifyViewAppeared((ContentCaptureSession) this.mWrappedObj, list.get(i));
        }
        ViewStructure newViewStructure2 = Api29Impl.newViewStructure((ContentCaptureSession) this.mWrappedObj, this.mView);
        Api23Impl.getExtras(newViewStructure2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
        Api29Impl.notifyViewAppeared((ContentCaptureSession) this.mWrappedObj, newViewStructure2);
    }

    public void notifyViewsDisappeared(long[] jArr) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api29Impl.notifyViewsDisappeared((ContentCaptureSession) this.mWrappedObj, ((AutofillIdCompat) Objects.requireNonNull(ViewCompat.getAutofillId(this.mView))).toAutofillId(), jArr);
            return;
        }
        ViewStructure newViewStructure = Api29Impl.newViewStructure((ContentCaptureSession) this.mWrappedObj, this.mView);
        Api23Impl.getExtras(newViewStructure).putBoolean(KEY_VIEW_TREE_APPEARING, true);
        Api29Impl.notifyViewAppeared((ContentCaptureSession) this.mWrappedObj, newViewStructure);
        Api29Impl.notifyViewsDisappeared((ContentCaptureSession) this.mWrappedObj, ((AutofillIdCompat) Objects.requireNonNull(ViewCompat.getAutofillId(this.mView))).toAutofillId(), jArr);
        ViewStructure newViewStructure2 = Api29Impl.newViewStructure((ContentCaptureSession) this.mWrappedObj, this.mView);
        Api23Impl.getExtras(newViewStructure2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
        Api29Impl.notifyViewAppeared((ContentCaptureSession) this.mWrappedObj, newViewStructure2);
    }

    public void notifyViewTextChanged(AutofillId autofillId, CharSequence charSequence) {
        Api29Impl.notifyViewTextChanged((ContentCaptureSession) this.mWrappedObj, autofillId, charSequence);
    }

    /* loaded from: classes.dex */
    private static class Api34Impl {
        private Api34Impl() {
        }

        static void notifyViewsAppeared(ContentCaptureSession contentCaptureSession, List<ViewStructure> list) {
            contentCaptureSession.notifyViewsAppeared(list);
        }
    }

    /* loaded from: classes.dex */
    private static class Api29Impl {
        private Api29Impl() {
        }

        static void notifyViewsDisappeared(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long[] jArr) {
            contentCaptureSession.notifyViewsDisappeared(autofillId, jArr);
        }

        static void notifyViewAppeared(ContentCaptureSession contentCaptureSession, ViewStructure viewStructure) {
            contentCaptureSession.notifyViewAppeared(viewStructure);
        }

        static ViewStructure newViewStructure(ContentCaptureSession contentCaptureSession, View view) {
            return contentCaptureSession.newViewStructure(view);
        }

        static ViewStructure newVirtualViewStructure(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j) {
            return contentCaptureSession.newVirtualViewStructure(autofillId, j);
        }

        static AutofillId newAutofillId(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j) {
            return contentCaptureSession.newAutofillId(autofillId, j);
        }

        public static void notifyViewTextChanged(ContentCaptureSession contentCaptureSession, AutofillId autofillId, CharSequence charSequence) {
            contentCaptureSession.notifyViewTextChanged(autofillId, charSequence);
        }
    }

    /* loaded from: classes.dex */
    private static class Api23Impl {
        private Api23Impl() {
        }

        static Bundle getExtras(ViewStructure viewStructure) {
            return viewStructure.getExtras();
        }
    }
}
