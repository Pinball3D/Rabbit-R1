package androidx.core.view.inputmethod;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public final class InputConnectionCompat {
    private static final String COMMIT_CONTENT_ACTION = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String COMMIT_CONTENT_CONTENT_URI_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String COMMIT_CONTENT_DESCRIPTION_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String COMMIT_CONTENT_FLAGS_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String COMMIT_CONTENT_FLAGS_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String COMMIT_CONTENT_INTEROP_ACTION = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String COMMIT_CONTENT_LINK_URI_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String COMMIT_CONTENT_LINK_URI_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String COMMIT_CONTENT_OPTS_INTEROP_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String COMMIT_CONTENT_OPTS_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    private static final String COMMIT_CONTENT_RESULT_RECEIVER_KEY = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    private static final String EXTRA_INPUT_CONTENT_INFO = "androidx.core.view.extra.INPUT_CONTENT_INFO";
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;
    private static final String LOG_TAG = "InputConnectionCompat";

    /* loaded from: classes.dex */
    public interface OnCommitContentListener {
        boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    static boolean handlePerformPrivateCommand(String str, Bundle bundle, OnCommitContentListener onCommitContentListener) {
        boolean z;
        ResultReceiver resultReceiver;
        ?? r0 = 0;
        r0 = 0;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals(COMMIT_CONTENT_ACTION, str)) {
            z = false;
        } else {
            if (!TextUtils.equals(COMMIT_CONTENT_INTEROP_ACTION, str)) {
                return false;
            }
            z = true;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable(z ? COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY : COMMIT_CONTENT_RESULT_RECEIVER_KEY);
            try {
                Uri uri = (Uri) bundle.getParcelable(z ? COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY : COMMIT_CONTENT_CONTENT_URI_KEY);
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY : COMMIT_CONTENT_DESCRIPTION_KEY);
                Uri uri2 = (Uri) bundle.getParcelable(z ? COMMIT_CONTENT_LINK_URI_INTEROP_KEY : COMMIT_CONTENT_LINK_URI_KEY);
                int i = bundle.getInt(z ? COMMIT_CONTENT_FLAGS_INTEROP_KEY : COMMIT_CONTENT_FLAGS_KEY);
                Bundle bundle2 = (Bundle) bundle.getParcelable(z ? COMMIT_CONTENT_OPTS_INTEROP_KEY : COMMIT_CONTENT_OPTS_KEY);
                if (uri != null && clipDescription != null) {
                    r0 = onCommitContentListener.onCommitContent(new InputContentInfoCompat(uri, clipDescription, uri2), i, bundle2);
                }
                if (resultReceiver != 0) {
                    resultReceiver.send(r0, null);
                }
                return r0;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != 0) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = 0;
        }
    }

    public static boolean commitContent(InputConnection inputConnection, EditorInfo editorInfo, InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        return Api25Impl.commitContent(inputConnection, (InputContentInfo) inputContentInfoCompat.unwrap(), i, bundle);
    }

    @Deprecated
    public static InputConnection createWrapper(InputConnection inputConnection, EditorInfo editorInfo, final OnCommitContentListener onCommitContentListener) {
        ObjectsCompat.requireNonNull(inputConnection, "inputConnection must be non-null");
        ObjectsCompat.requireNonNull(editorInfo, "editorInfo must be non-null");
        ObjectsCompat.requireNonNull(onCommitContentListener, "onCommitContentListener must be non-null");
        return new InputConnectionWrapper(inputConnection, false) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.1
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
                if (onCommitContentListener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i, bundle)) {
                    return true;
                }
                return super.commitContent(inputContentInfo, i, bundle);
            }
        };
    }

    /* renamed from: androidx.core.view.inputmethod.InputConnectionCompat$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends InputConnectionWrapper {
        final /* synthetic */ OnCommitContentListener val$listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(InputConnection inputConnection, boolean z, OnCommitContentListener onCommitContentListener) {
            super(inputConnection, z);
            this.val$listener = onCommitContentListener;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) {
            if (InputConnectionCompat.handlePerformPrivateCommand(str, bundle, this.val$listener)) {
                return true;
            }
            return super.performPrivateCommand(str, bundle);
        }
    }

    public static InputConnection createWrapper(View view, InputConnection inputConnection, EditorInfo editorInfo) {
        return createWrapper(inputConnection, editorInfo, createOnCommitContentListenerUsingPerformReceiveContent(view));
    }

    private static OnCommitContentListener createOnCommitContentListenerUsingPerformReceiveContent(final View view) {
        Preconditions.checkNotNull(view);
        return new OnCommitContentListener() { // from class: androidx.core.view.inputmethod.InputConnectionCompat$$ExternalSyntheticLambda0
            @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
            public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
                return InputConnectionCompat.lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(view, inputContentInfoCompat, i, bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(View view, InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        if ((i & 1) != 0) {
            try {
                inputContentInfoCompat.requestPermission();
                Parcelable parcelable = (Parcelable) inputContentInfoCompat.unwrap();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable(EXTRA_INPUT_CONTENT_INFO, parcelable);
            } catch (Exception e) {
                Log.w(LOG_TAG, "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        return ViewCompat.performReceiveContent(view, new ContentInfoCompat.Builder(new ClipData(inputContentInfoCompat.getDescription(), new ClipData.Item(inputContentInfoCompat.getContentUri())), 2).setLinkUri(inputContentInfoCompat.getLinkUri()).setExtras(bundle).build()) == null;
    }

    @Deprecated
    public InputConnectionCompat() {
    }

    /* loaded from: classes.dex */
    static class Api25Impl {
        private Api25Impl() {
        }

        static boolean commitContent(InputConnection inputConnection, InputContentInfo inputContentInfo, int i, Bundle bundle) {
            return inputConnection.commitContent(inputContentInfo, i, bundle);
        }
    }
}
