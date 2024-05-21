package androidx.profileinstaller;

/* loaded from: classes2.dex */
class WritableFileSection {
    final byte[] mContents;
    final int mExpectedInflateSize;
    final boolean mNeedsCompression;
    final FileSectionType mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WritableFileSection(FileSectionType fileSectionType, int i, byte[] bArr, boolean z) {
        this.mType = fileSectionType;
        this.mExpectedInflateSize = i;
        this.mContents = bArr;
        this.mNeedsCompression = z;
    }
}
