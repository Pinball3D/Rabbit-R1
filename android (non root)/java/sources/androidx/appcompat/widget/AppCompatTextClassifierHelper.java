package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.util.Preconditions;

/* loaded from: classes.dex */
final class AppCompatTextClassifierHelper {
    private TextClassifier mTextClassifier;
    private TextView mTextView;

    public void setTextClassifier(TextClassifier textClassifier) {
        this.mTextClassifier = textClassifier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextClassifierHelper(TextView textView) {
        this.mTextView = (TextView) Preconditions.checkNotNull(textView);
    }

    public TextClassifier getTextClassifier() {
        TextClassifier textClassifier = this.mTextClassifier;
        return textClassifier == null ? Api26Impl.getTextClassifier(this.mTextView) : textClassifier;
    }

    /* loaded from: classes.dex */
    private static final class Api26Impl {
        private Api26Impl() {
        }

        static TextClassifier getTextClassifier(TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            return TextClassifier.NO_OP;
        }
    }
}
