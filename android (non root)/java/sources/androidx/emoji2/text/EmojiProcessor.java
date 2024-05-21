package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;
    private static final int MAX_LOOK_AROUND_CHARACTER = 16;
    private final int[] mEmojiAsDefaultStyleExceptions;
    private EmojiCompat.GlyphChecker mGlyphChecker;
    private final MetadataRepo mMetadataRepo;
    private final EmojiCompat.SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface EmojiProcessCallback<T> {
        T getResult();

        boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    private static boolean hasInvalidSelection(int i, int i2) {
        return i == -1 || i2 == -1 || i != i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.SpanFactory spanFactory, EmojiCompat.GlyphChecker glyphChecker, boolean z, int[] iArr, Set<int[]> set) {
        this.mSpanFactory = spanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        this.mUseEmojiAsDefaultStyle = z;
        this.mEmojiAsDefaultStyleExceptions = iArr;
        initExclusions(set);
    }

    private void initExclusions(Set<int[]> set) {
        if (set.isEmpty()) {
            return;
        }
        for (int[] iArr : set) {
            String str = new String(iArr, 0, iArr.length);
            process(str, 0, str.length(), 1, true, new MarkExclusionCallback(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEmojiMatch(CharSequence charSequence) {
        return getEmojiMatch(charSequence, this.mMetadataRepo.getMetadataVersion());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEmojiMatch(CharSequence charSequence, int i) {
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            int codePointAt = Character.codePointAt(charSequence, i2);
            int check = processorSm.check(codePointAt);
            TypefaceEmojiRasterizer currentMetadata = processorSm.getCurrentMetadata();
            if (check == 1) {
                i2 += Character.charCount(codePointAt);
                i4 = 0;
            } else if (check == 2) {
                i2 += Character.charCount(codePointAt);
            } else if (check == 3) {
                currentMetadata = processorSm.getFlushMetadata();
                if (currentMetadata.getCompatAdded() <= i) {
                    i3++;
                }
            }
            if (currentMetadata != null && currentMetadata.getCompatAdded() <= i) {
                i4++;
            }
        }
        if (i3 != 0) {
            return 2;
        }
        if (!processorSm.isInFlushableState() || processorSm.getCurrentMetadata().getCompatAdded() > i) {
            return i4 == 0 ? 0 : 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEmojiStart(CharSequence charSequence, int i) {
        if (i < 0 || i >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i, i + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanStart(emojiSpanArr[0]);
            }
        }
        return ((EmojiProcessLookupCallback) process(charSequence, Math.max(0, i - 16), Math.min(charSequence.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessLookupCallback(i))).start;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEmojiEnd(CharSequence charSequence, int i) {
        if (i < 0 || i >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) spanned.getSpans(i, i + 1, EmojiSpan.class);
            if (emojiSpanArr.length > 0) {
                return spanned.getSpanEnd(emojiSpanArr[0]);
            }
        }
        return ((EmojiProcessLookupCallback) process(charSequence, Math.max(0, i - 16), Math.min(charSequence.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessLookupCallback(i))).end;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        ((androidx.emoji2.text.SpannableBuilder) r10).endBatchEdit();
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:49:0x000c, B:52:0x0011, B:54:0x0015, B:56:0x0024, B:8:0x0037, B:10:0x0041, B:12:0x0044, B:14:0x0048, B:16:0x0054, B:18:0x0057, B:23:0x0066, B:29:0x0074, B:30:0x0082, B:32:0x0095, B:5:0x002c), top: B:48:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0095 A[Catch: all -> 0x00b3, TRY_LEAVE, TryCatch #0 {all -> 0x00b3, blocks: (B:49:0x000c, B:52:0x0011, B:54:0x0015, B:56:0x0024, B:8:0x0037, B:10:0x0041, B:12:0x0044, B:14:0x0048, B:16:0x0054, B:18:0x0057, B:23:0x0066, B:29:0x0074, B:30:0x0082, B:32:0x0095, B:5:0x002c), top: B:48:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence process(java.lang.CharSequence r10, int r11, int r12, int r13, boolean r14) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof androidx.emoji2.text.SpannableBuilder
            if (r0 == 0) goto La
            r1 = r10
            androidx.emoji2.text.SpannableBuilder r1 = (androidx.emoji2.text.SpannableBuilder) r1
            r1.beginBatchEdit()
        La:
            if (r0 != 0) goto L2c
            boolean r1 = r10 instanceof android.text.Spannable     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto L11
            goto L2c
        L11:
            boolean r1 = r10 instanceof android.text.Spanned     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto L2a
            r1 = r10
            android.text.Spanned r1 = (android.text.Spanned) r1     // Catch: java.lang.Throwable -> Lb3
            int r2 = r11 + (-1)
            int r3 = r12 + 1
            java.lang.Class<androidx.emoji2.text.EmojiSpan> r4 = androidx.emoji2.text.EmojiSpan.class
            int r1 = r1.nextSpanTransition(r2, r3, r4)     // Catch: java.lang.Throwable -> Lb3
            if (r1 > r12) goto L2a
            androidx.emoji2.text.UnprecomputeTextOnModificationSpannable r1 = new androidx.emoji2.text.UnprecomputeTextOnModificationSpannable     // Catch: java.lang.Throwable -> Lb3
            r1.<init>(r10)     // Catch: java.lang.Throwable -> Lb3
            goto L34
        L2a:
            r1 = 0
            goto L34
        L2c:
            androidx.emoji2.text.UnprecomputeTextOnModificationSpannable r1 = new androidx.emoji2.text.UnprecomputeTextOnModificationSpannable     // Catch: java.lang.Throwable -> Lb3
            r2 = r10
            android.text.Spannable r2 = (android.text.Spannable) r2     // Catch: java.lang.Throwable -> Lb3
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb3
        L34:
            r2 = 0
            if (r1 == 0) goto L62
            java.lang.Class<androidx.emoji2.text.EmojiSpan> r3 = androidx.emoji2.text.EmojiSpan.class
            java.lang.Object[] r3 = r1.getSpans(r11, r12, r3)     // Catch: java.lang.Throwable -> Lb3
            androidx.emoji2.text.EmojiSpan[] r3 = (androidx.emoji2.text.EmojiSpan[]) r3     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L62
            int r4 = r3.length     // Catch: java.lang.Throwable -> Lb3
            if (r4 <= 0) goto L62
            int r4 = r3.length     // Catch: java.lang.Throwable -> Lb3
            r5 = r2
        L46:
            if (r5 >= r4) goto L62
            r6 = r3[r5]     // Catch: java.lang.Throwable -> Lb3
            int r7 = r1.getSpanStart(r6)     // Catch: java.lang.Throwable -> Lb3
            int r8 = r1.getSpanEnd(r6)     // Catch: java.lang.Throwable -> Lb3
            if (r7 == r12) goto L57
            r1.removeSpan(r6)     // Catch: java.lang.Throwable -> Lb3
        L57:
            int r11 = java.lang.Math.min(r7, r11)     // Catch: java.lang.Throwable -> Lb3
            int r12 = java.lang.Math.max(r8, r12)     // Catch: java.lang.Throwable -> Lb3
            int r5 = r5 + 1
            goto L46
        L62:
            r3 = r11
            r4 = r12
            if (r3 == r4) goto Laa
            int r11 = r10.length()     // Catch: java.lang.Throwable -> Lb3
            if (r3 < r11) goto L6d
            goto Laa
        L6d:
            r11 = 2147483647(0x7fffffff, float:NaN)
            if (r13 == r11) goto L82
            if (r1 == 0) goto L82
            int r11 = r1.length()     // Catch: java.lang.Throwable -> Lb3
            java.lang.Class<androidx.emoji2.text.EmojiSpan> r12 = androidx.emoji2.text.EmojiSpan.class
            java.lang.Object[] r11 = r1.getSpans(r2, r11, r12)     // Catch: java.lang.Throwable -> Lb3
            androidx.emoji2.text.EmojiSpan[] r11 = (androidx.emoji2.text.EmojiSpan[]) r11     // Catch: java.lang.Throwable -> Lb3
            int r11 = r11.length     // Catch: java.lang.Throwable -> Lb3
            int r13 = r13 - r11
        L82:
            r5 = r13
            androidx.emoji2.text.EmojiProcessor$EmojiProcessAddSpanCallback r7 = new androidx.emoji2.text.EmojiProcessor$EmojiProcessAddSpanCallback     // Catch: java.lang.Throwable -> Lb3
            androidx.emoji2.text.EmojiCompat$SpanFactory r11 = r9.mSpanFactory     // Catch: java.lang.Throwable -> Lb3
            r7.<init>(r1, r11)     // Catch: java.lang.Throwable -> Lb3
            r1 = r9
            r2 = r10
            r6 = r14
            java.lang.Object r9 = r1.process(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> Lb3
            androidx.emoji2.text.UnprecomputeTextOnModificationSpannable r9 = (androidx.emoji2.text.UnprecomputeTextOnModificationSpannable) r9     // Catch: java.lang.Throwable -> Lb3
            if (r9 == 0) goto La1
            android.text.Spannable r9 = r9.getUnwrappedSpannable()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto La0
            androidx.emoji2.text.SpannableBuilder r10 = (androidx.emoji2.text.SpannableBuilder) r10
            r10.endBatchEdit()
        La0:
            return r9
        La1:
            if (r0 == 0) goto La9
            r9 = r10
            androidx.emoji2.text.SpannableBuilder r9 = (androidx.emoji2.text.SpannableBuilder) r9
            r9.endBatchEdit()
        La9:
            return r10
        Laa:
            if (r0 == 0) goto Lb2
            r9 = r10
            androidx.emoji2.text.SpannableBuilder r9 = (androidx.emoji2.text.SpannableBuilder) r9
            r9.endBatchEdit()
        Lb2:
            return r10
        Lb3:
            r9 = move-exception
            if (r0 == 0) goto Lbb
            androidx.emoji2.text.SpannableBuilder r10 = (androidx.emoji2.text.SpannableBuilder) r10
            r10.endBatchEdit()
        Lbb:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.process(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
    }

    private <T> T process(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessCallback<T> emojiProcessCallback) {
        int i4;
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int i5 = 0;
        boolean z2 = true;
        int codePointAt = Character.codePointAt(charSequence, i);
        loop0: while (true) {
            i4 = i;
            while (i < i2 && i5 < i3 && z2) {
                int check = processorSm.check(codePointAt);
                if (check == 1) {
                    i4 += Character.charCount(Character.codePointAt(charSequence, i4));
                    if (i4 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i4);
                    }
                    i = i4;
                } else if (check == 2) {
                    i += Character.charCount(codePointAt);
                    if (i < i2) {
                        codePointAt = Character.codePointAt(charSequence, i);
                    }
                } else if (check == 3) {
                    if (z || !hasGlyph(charSequence, i4, i, processorSm.getFlushMetadata())) {
                        i5++;
                        z2 = emojiProcessCallback.handleEmoji(charSequence, i4, i, processorSm.getFlushMetadata());
                    }
                }
            }
        }
        if (processorSm.isInFlushableState() && i5 < i3 && z2 && (z || !hasGlyph(charSequence, i4, i, processorSm.getCurrentMetadata()))) {
            emojiProcessCallback.handleEmoji(charSequence, i4, i, processorSm.getCurrentMetadata());
        }
        return emojiProcessCallback.getResult();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handleOnKeyDown(Editable editable, int i, KeyEvent keyEvent) {
        boolean delete;
        if (i != 67) {
            if (i == 112) {
                delete = delete(editable, keyEvent, true);
            }
            return false;
        }
        delete = delete(editable, keyEvent, false);
        if (delete) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        }
        return false;
    }

    private static boolean delete(Editable editable, KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (hasModifiers(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!hasInvalidSelection(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handleDeleteSurroundingText(InputConnection inputConnection, Editable editable, int i, int i2, boolean z) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i >= 0 && i2 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (hasInvalidSelection(selectionStart, selectionEnd)) {
                return false;
            }
            if (z) {
                max = CodepointIndexFinder.findIndexBackward(editable, selectionStart, Math.max(i, 0));
                min = CodepointIndexFinder.findIndexForward(editable, selectionEnd, Math.max(i2, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i, 0);
                min = Math.min(selectionEnd + i2, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(max, min, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    private static boolean hasModifiers(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    private boolean hasGlyph(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (typefaceEmojiRasterizer.getHasGlyph() == 0) {
            typefaceEmojiRasterizer.setHasGlyph(this.mGlyphChecker.hasGlyph(charSequence, i, i2, typefaceEmojiRasterizer.getSdkAdded()));
        }
        return typefaceEmojiRasterizer.getHasGlyph() == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ProcessorSm {
        private static final int STATE_DEFAULT = 1;
        private static final int STATE_WALKING = 2;
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        private static boolean isEmojiStyle(int i) {
            return i == 65039;
        }

        private static boolean isTextStyle(int i) {
            return i == 65038;
        }

        private int reset() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
            return 1;
        }

        ProcessorSm(MetadataRepo.Node node, boolean z, int[] iArr) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z;
            this.mEmojiAsDefaultStyleExceptions = iArr;
        }

        int check(int i) {
            MetadataRepo.Node node = this.mCurrentNode.get(i);
            int i2 = 2;
            if (this.mState != 2) {
                if (node == null) {
                    i2 = reset();
                } else {
                    this.mState = 2;
                    this.mCurrentNode = node;
                    this.mCurrentDepth = 1;
                }
            } else if (node != null) {
                this.mCurrentNode = node;
                this.mCurrentDepth++;
            } else if (isTextStyle(i)) {
                i2 = reset();
            } else if (!isEmojiStyle(i)) {
                if (this.mCurrentNode.getData() != null) {
                    i2 = 3;
                    if (this.mCurrentDepth == 1) {
                        if (shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                            this.mFlushNode = this.mCurrentNode;
                            reset();
                        } else {
                            i2 = reset();
                        }
                    } else {
                        this.mFlushNode = this.mCurrentNode;
                        reset();
                    }
                } else {
                    i2 = reset();
                }
            }
            this.mLastCodepoint = i;
            return i2;
        }

        TypefaceEmojiRasterizer getFlushMetadata() {
            return this.mFlushNode.getData();
        }

        TypefaceEmojiRasterizer getCurrentMetadata() {
            return this.mCurrentNode.getData();
        }

        boolean isInFlushableState() {
            return this.mState == 2 && this.mCurrentNode.getData() != null && (this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint());
        }

        private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
            if (this.mCurrentNode.getData().isDefaultEmoji() || isEmojiStyle(this.mLastCodepoint)) {
                return true;
            }
            if (this.mUseEmojiAsDefaultStyle) {
                if (this.mEmojiAsDefaultStyleExceptions == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.getData().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class CodepointIndexFinder {
        private static final int INVALID_INDEX = -1;

        private CodepointIndexFinder() {
        }

        static int findIndexBackward(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            while (true) {
                boolean z = false;
                while (i2 != 0) {
                    i--;
                    if (i < 0) {
                        return z ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i);
                    if (z) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i2--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i2--;
                    } else {
                        if (Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        z = true;
                    }
                }
                return i;
            }
        }

        static int findIndexForward(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            while (true) {
                boolean z = false;
                while (i2 != 0) {
                    if (i >= length) {
                        if (z) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i);
                    if (z) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i2--;
                        i++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i2--;
                        i++;
                    } else {
                        if (Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i++;
                        z = true;
                    }
                }
                return i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class EmojiProcessAddSpanCallback implements EmojiProcessCallback<UnprecomputeTextOnModificationSpannable> {
        private final EmojiCompat.SpanFactory mSpanFactory;
        public UnprecomputeTextOnModificationSpannable spannable;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public UnprecomputeTextOnModificationSpannable getResult() {
            return this.spannable;
        }

        EmojiProcessAddSpanCallback(UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable, EmojiCompat.SpanFactory spanFactory) {
            this.spannable = unprecomputeTextOnModificationSpannable;
            this.mSpanFactory = spanFactory;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            Spannable spannableString;
            if (typefaceEmojiRasterizer.isPreferredSystemRender()) {
                return true;
            }
            if (this.spannable == null) {
                if (charSequence instanceof Spannable) {
                    spannableString = (Spannable) charSequence;
                } else {
                    spannableString = new SpannableString(charSequence);
                }
                this.spannable = new UnprecomputeTextOnModificationSpannable(spannableString);
            }
            this.spannable.setSpan(this.mSpanFactory.createSpan(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class EmojiProcessLookupCallback implements EmojiProcessCallback<EmojiProcessLookupCallback> {
        private final int mOffset;
        public int start = -1;
        public int end = -1;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public EmojiProcessLookupCallback getResult() {
            return this;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            int i3 = this.mOffset;
            if (i > i3 || i3 >= i2) {
                return i2 <= i3;
            }
            this.start = i;
            this.end = i2;
            return false;
        }

        EmojiProcessLookupCallback(int i) {
            this.mOffset = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MarkExclusionCallback implements EmojiProcessCallback<MarkExclusionCallback> {
        private final String mExclusion;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public MarkExclusionCallback getResult() {
            return this;
        }

        MarkExclusionCallback(String str) {
            this.mExclusion = str;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (!TextUtils.equals(charSequence.subSequence(i, i2), this.mExclusion)) {
                return true;
            }
            typefaceEmojiRasterizer.setExclusion(true);
            return false;
        }
    }
}
