package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;

/* loaded from: classes2.dex */
public final class EmojiTextViewHelper {
    private final HelperInternal mHelper;

    public EmojiTextViewHelper(TextView textView) {
        this(textView, true);
    }

    public EmojiTextViewHelper(TextView textView, boolean z) {
        Preconditions.checkNotNull(textView, "textView cannot be null");
        if (!z) {
            this.mHelper = new SkippingHelper19(textView);
        } else {
            this.mHelper = new HelperInternal19(textView);
        }
    }

    public void updateTransformationMethod() {
        this.mHelper.updateTransformationMethod();
    }

    public InputFilter[] getFilters(InputFilter[] inputFilterArr) {
        return this.mHelper.getFilters(inputFilterArr);
    }

    public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
        return this.mHelper.wrapTransformationMethod(transformationMethod);
    }

    public void setEnabled(boolean z) {
        this.mHelper.setEnabled(z);
    }

    public void setAllCaps(boolean z) {
        this.mHelper.setAllCaps(z);
    }

    public boolean isEnabled() {
        return this.mHelper.isEnabled();
    }

    /* loaded from: classes2.dex */
    static class HelperInternal {
        InputFilter[] getFilters(InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        public boolean isEnabled() {
            return false;
        }

        void setAllCaps(boolean z) {
        }

        void setEnabled(boolean z) {
        }

        void updateTransformationMethod() {
        }

        TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
            return transformationMethod;
        }

        HelperInternal() {
        }
    }

    /* loaded from: classes2.dex */
    private static class SkippingHelper19 extends HelperInternal {
        private final HelperInternal19 mHelperDelegate;

        SkippingHelper19(TextView textView) {
            this.mHelperDelegate = new HelperInternal19(textView);
        }

        private boolean skipBecauseEmojiCompatNotInitialized() {
            return !EmojiCompat.isConfigured();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void updateTransformationMethod() {
            if (skipBecauseEmojiCompatNotInitialized()) {
                return;
            }
            this.mHelperDelegate.updateTransformationMethod();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        InputFilter[] getFilters(InputFilter[] inputFilterArr) {
            return skipBecauseEmojiCompatNotInitialized() ? inputFilterArr : this.mHelperDelegate.getFilters(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
            return skipBecauseEmojiCompatNotInitialized() ? transformationMethod : this.mHelperDelegate.wrapTransformationMethod(transformationMethod);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void setAllCaps(boolean z) {
            if (skipBecauseEmojiCompatNotInitialized()) {
                return;
            }
            this.mHelperDelegate.setAllCaps(z);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void setEnabled(boolean z) {
            if (skipBecauseEmojiCompatNotInitialized()) {
                this.mHelperDelegate.setEnabledUnsafe(z);
            } else {
                this.mHelperDelegate.setEnabled(z);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public boolean isEnabled() {
            return this.mHelperDelegate.isEnabled();
        }
    }

    /* loaded from: classes2.dex */
    private static class HelperInternal19 extends HelperInternal {
        private final EmojiInputFilter mEmojiInputFilter;
        private boolean mEnabled = true;
        private final TextView mTextView;

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public boolean isEnabled() {
            return this.mEnabled;
        }

        void setEnabledUnsafe(boolean z) {
            this.mEnabled = z;
        }

        HelperInternal19(TextView textView) {
            this.mTextView = textView;
            this.mEmojiInputFilter = new EmojiInputFilter(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void updateTransformationMethod() {
            this.mTextView.setTransformationMethod(wrapTransformationMethod(this.mTextView.getTransformationMethod()));
        }

        private void updateFilters() {
            this.mTextView.setFilters(getFilters(this.mTextView.getFilters()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        InputFilter[] getFilters(InputFilter[] inputFilterArr) {
            if (!this.mEnabled) {
                return removeEmojiInputFilterIfPresent(inputFilterArr);
            }
            return addEmojiInputFilterIfMissing(inputFilterArr);
        }

        private InputFilter[] addEmojiInputFilterIfMissing(InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.mEmojiInputFilter) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.mEmojiInputFilter;
            return inputFilterArr2;
        }

        private InputFilter[] removeEmojiInputFilterIfPresent(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> emojiInputFilterPositionArray = getEmojiInputFilterPositionArray(inputFilterArr);
            if (emojiInputFilterPositionArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - emojiInputFilterPositionArray.size()];
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (emojiInputFilterPositionArray.indexOfKey(i2) < 0) {
                    inputFilterArr2[i] = inputFilterArr[i2];
                    i++;
                }
            }
            return inputFilterArr2;
        }

        private SparseArray<InputFilter> getEmojiInputFilterPositionArray(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof EmojiInputFilter) {
                    sparseArray.put(i, inputFilter);
                }
            }
            return sparseArray;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
            if (this.mEnabled) {
                return wrapForEnabled(transformationMethod);
            }
            return unwrapForDisabled(transformationMethod);
        }

        private TransformationMethod unwrapForDisabled(TransformationMethod transformationMethod) {
            return transformationMethod instanceof EmojiTransformationMethod ? ((EmojiTransformationMethod) transformationMethod).getOriginalTransformationMethod() : transformationMethod;
        }

        private TransformationMethod wrapForEnabled(TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof EmojiTransformationMethod) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new EmojiTransformationMethod(transformationMethod);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void setAllCaps(boolean z) {
            if (z) {
                updateTransformationMethod();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void setEnabled(boolean z) {
            this.mEnabled = z;
            updateTransformationMethod();
            updateFilters();
        }
    }
}
