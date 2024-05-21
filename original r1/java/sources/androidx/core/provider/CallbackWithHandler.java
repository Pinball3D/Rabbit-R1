package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.FontsContractCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CallbackWithHandler {
    private final FontsContractCompat.FontRequestCallback mCallback;
    private final Handler mCallbackHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallbackWithHandler(FontsContractCompat.FontRequestCallback fontRequestCallback, Handler handler) {
        this.mCallback = fontRequestCallback;
        this.mCallbackHandler = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallbackWithHandler(FontsContractCompat.FontRequestCallback fontRequestCallback) {
        this.mCallback = fontRequestCallback;
        this.mCallbackHandler = CalleeHandler.create();
    }

    private void onTypefaceRetrieved(final Typeface typeface) {
        final FontsContractCompat.FontRequestCallback fontRequestCallback = this.mCallback;
        this.mCallbackHandler.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.1
            @Override // java.lang.Runnable
            public void run() {
                fontRequestCallback.onTypefaceRetrieved(typeface);
            }
        });
    }

    private void onTypefaceRequestFailed(final int i) {
        final FontsContractCompat.FontRequestCallback fontRequestCallback = this.mCallback;
        this.mCallbackHandler.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.2
            @Override // java.lang.Runnable
            public void run() {
                fontRequestCallback.onTypefaceRequestFailed(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
        if (typefaceResult.isSuccess()) {
            onTypefaceRetrieved(typefaceResult.mTypeface);
        } else {
            onTypefaceRequestFailed(typefaceResult.mResult);
        }
    }
}
