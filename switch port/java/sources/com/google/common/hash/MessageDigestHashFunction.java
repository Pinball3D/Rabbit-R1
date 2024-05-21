package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class MessageDigestHashFunction extends AbstractHashFunction implements Serializable {
    private final int bytes;
    private final MessageDigest prototype;
    private final boolean supportsClone;
    private final String toString;

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bytes * 8;
    }

    public String toString() {
        return this.toString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageDigestHashFunction(String str, String str2) {
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        this.bytes = messageDigest.getDigestLength();
        this.toString = (String) Preconditions.checkNotNull(str2);
        this.supportsClone = supportsClone(messageDigest);
    }

    MessageDigestHashFunction(String str, int i, String str2) {
        this.toString = (String) Preconditions.checkNotNull(str2);
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        int digestLength = messageDigest.getDigestLength();
        Preconditions.checkArgument(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", i, digestLength);
        this.bytes = i;
        this.supportsClone = supportsClone(messageDigest);
    }

    private static boolean supportsClone(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    private static MessageDigest getMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.supportsClone) {
            try {
                return new MessageDigestHasher((MessageDigest) this.prototype.clone(), this.bytes);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new MessageDigestHasher(getMessageDigest(this.prototype.getAlgorithm()), this.bytes);
    }

    /* loaded from: classes3.dex */
    private static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final String algorithmName;
        private final int bytes;
        private final String toString;

        private SerializedForm(String str, int i, String str2) {
            this.algorithmName = str;
            this.bytes = i;
            this.toString = str2;
        }

        private Object readResolve() {
            return new MessageDigestHashFunction(this.algorithmName, this.bytes, this.toString);
        }
    }

    Object writeReplace() {
        return new SerializedForm(this.prototype.getAlgorithm(), this.bytes, this.toString);
    }

    /* loaded from: classes3.dex */
    private static final class MessageDigestHasher extends AbstractByteHasher {
        private final int bytes;
        private final MessageDigest digest;
        private boolean done;

        private MessageDigestHasher(MessageDigest messageDigest, int i) {
            this.digest = messageDigest;
            this.bytes = i;
        }

        @Override // com.google.common.hash.AbstractByteHasher
        protected void update(byte b) {
            checkNotDone();
            this.digest.update(b);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        protected void update(byte[] bArr, int i, int i2) {
            checkNotDone();
            this.digest.update(bArr, i, i2);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        protected void update(ByteBuffer byteBuffer) {
            checkNotDone();
            this.digest.update(byteBuffer);
        }

        private void checkNotDone() {
            Preconditions.checkState(!this.done, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            checkNotDone();
            this.done = true;
            if (this.bytes == this.digest.getDigestLength()) {
                return HashCode.fromBytesNoCopy(this.digest.digest());
            }
            return HashCode.fromBytesNoCopy(Arrays.copyOf(this.digest.digest(), this.bytes));
        }
    }
}
