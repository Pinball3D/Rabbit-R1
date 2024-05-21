package com.google.common.primitives;

import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.ShortCompanionObject;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Shorts extends ShortsMethodsForWeb {
    public static final int BYTES = 2;
    public static final short MAX_POWER_OF_TWO = 16384;

    public static int compare(short s, short s2) {
        return s - s2;
    }

    public static short fromBytes(byte b, byte b2) {
        return (short) ((b << 8) | (b2 & 255));
    }

    public static int hashCode(short s) {
        return s;
    }

    public static short saturatedCast(long j) {
        return j > 32767 ? ShortCompanionObject.MAX_VALUE : j < -32768 ? ShortCompanionObject.MIN_VALUE : (short) j;
    }

    public static byte[] toByteArray(short s) {
        return new byte[]{(byte) (s >> 8), (byte) s};
    }

    private Shorts() {
    }

    public static short checkedCast(long j) {
        short s = (short) j;
        Preconditions.checkArgument(((long) s) == j, "Out of range: %s", j);
        return s;
    }

    public static boolean contains(short[] sArr, short s) {
        for (short s2 : sArr) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(short[] sArr, short s) {
        return indexOf(sArr, s, 0, sArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(short[] sArr, short s, int i, int i2) {
        while (i < i2) {
            if (sArr[i] == s) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOf(short[] r5, short[] r6) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r5, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r6, r0)
            int r0 = r6.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = r1
        L10:
            int r2 = r5.length
            int r3 = r6.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2a
            r2 = r1
        L18:
            int r3 = r6.length
            if (r2 >= r3) goto L29
            int r3 = r0 + r2
            short r3 = r5[r3]
            short r4 = r6[r2]
            if (r3 == r4) goto L26
            int r0 = r0 + 1
            goto L10
        L26:
            int r2 = r2 + 1
            goto L18
        L29:
            return r0
        L2a:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Shorts.indexOf(short[], short[]):int");
    }

    public static int lastIndexOf(short[] sArr, short s) {
        return lastIndexOf(sArr, s, 0, sArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(short[] sArr, short s, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (sArr[i3] == s) {
                return i3;
            }
        }
        return -1;
    }

    public static short min(short... sArr) {
        Preconditions.checkArgument(sArr.length > 0);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            short s2 = sArr[i];
            if (s2 < s) {
                s = s2;
            }
        }
        return s;
    }

    public static short max(short... sArr) {
        Preconditions.checkArgument(sArr.length > 0);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            short s2 = sArr[i];
            if (s2 > s) {
                s = s2;
            }
        }
        return s;
    }

    public static short constrainToRange(short s, short s2, short s3) {
        Preconditions.checkArgument(s2 <= s3, "min (%s) must be less than or equal to max (%s)", (int) s2, (int) s3);
        return s < s2 ? s2 : s < s3 ? s : s3;
    }

    public static short[] concat(short[]... sArr) {
        int i = 0;
        for (short[] sArr2 : sArr) {
            i += sArr2.length;
        }
        short[] sArr3 = new short[i];
        int i2 = 0;
        for (short[] sArr4 : sArr) {
            System.arraycopy(sArr4, 0, sArr3, i2, sArr4.length);
            i2 += sArr4.length;
        }
        return sArr3;
    }

    public static short fromByteArray(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return fromBytes(bArr[0], bArr[1]);
    }

    /* loaded from: classes3.dex */
    private static final class ShortConverter extends Converter<String, Short> implements Serializable {
        static final ShortConverter INSTANCE = new ShortConverter();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Shorts.stringConverter()";
        }

        private ShortConverter() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public Short doForward(String str) {
            return Short.decode(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public String doBackward(Short sh) {
            return sh.toString();
        }
    }

    public static Converter<String, Short> stringConverter() {
        return ShortConverter.INSTANCE;
    }

    public static short[] ensureCapacity(short[] sArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", i);
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", i2);
        return sArr.length < i ? Arrays.copyOf(sArr, i + i2) : sArr;
    }

    public static String join(String str, short... sArr) {
        Preconditions.checkNotNull(str);
        if (sArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(sArr.length * 6);
        sb.append((int) sArr[0]);
        for (int i = 1; i < sArr.length; i++) {
            sb.append(str).append((int) sArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<short[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    /* loaded from: classes3.dex */
    private enum LexicographicalComparator implements Comparator<short[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Shorts.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(short[] sArr, short[] sArr2) {
            int min = Math.min(sArr.length, sArr2.length);
            for (int i = 0; i < min; i++) {
                int compare = Shorts.compare(sArr[i], sArr2[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return sArr.length - sArr2.length;
        }
    }

    public static void sortDescending(short[] sArr) {
        Preconditions.checkNotNull(sArr);
        sortDescending(sArr, 0, sArr.length);
    }

    public static void sortDescending(short[] sArr, int i, int i2) {
        Preconditions.checkNotNull(sArr);
        Preconditions.checkPositionIndexes(i, i2, sArr.length);
        Arrays.sort(sArr, i, i2);
        reverse(sArr, i, i2);
    }

    public static void reverse(short[] sArr) {
        Preconditions.checkNotNull(sArr);
        reverse(sArr, 0, sArr.length);
    }

    public static void reverse(short[] sArr, int i, int i2) {
        Preconditions.checkNotNull(sArr);
        Preconditions.checkPositionIndexes(i, i2, sArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            short s = sArr[i];
            sArr[i] = sArr[i3];
            sArr[i3] = s;
            i++;
        }
    }

    public static short[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof ShortArrayAsList) {
            return ((ShortArrayAsList) collection).toShortArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = ((Number) Preconditions.checkNotNull(array[i])).shortValue();
        }
        return sArr;
    }

    public static List<Short> asList(short... sArr) {
        if (sArr.length == 0) {
            return Collections.emptyList();
        }
        return new ShortArrayAsList(sArr);
    }

    /* loaded from: classes3.dex */
    private static class ShortArrayAsList extends AbstractList<Short> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final short[] array;
        final int end;
        final int start;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        ShortArrayAsList(short[] sArr) {
            this(sArr, 0, sArr.length);
        }

        ShortArrayAsList(short[] sArr, int i, int i2) {
            this.array = sArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Short get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Short.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Short) && Shorts.indexOf(this.array, ((Short) obj).shortValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@CheckForNull Object obj) {
            int indexOf;
            if (!(obj instanceof Short) || (indexOf = Shorts.indexOf(this.array, ((Short) obj).shortValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return indexOf - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(@CheckForNull Object obj) {
            int lastIndexOf;
            if (!(obj instanceof Short) || (lastIndexOf = Shorts.lastIndexOf(this.array, ((Short) obj).shortValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return lastIndexOf - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public Short set(int i, Short sh) {
            Preconditions.checkElementIndex(i, size());
            short[] sArr = this.array;
            int i2 = this.start;
            short s = sArr[i2 + i];
            sArr[i2 + i] = ((Short) Preconditions.checkNotNull(sh)).shortValue();
            return Short.valueOf(s);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Short> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            short[] sArr = this.array;
            int i3 = this.start;
            return new ShortArrayAsList(sArr, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof ShortArrayAsList) {
                ShortArrayAsList shortArrayAsList = (ShortArrayAsList) obj;
                int size = size();
                if (shortArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.array[this.start + i] != shortArrayAsList.array[shortArrayAsList.start + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                i = (i * 31) + Shorts.hashCode(this.array[i2]);
            }
            return i;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 6);
            sb.append('[').append((int) this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i < this.end) {
                    sb.append(", ").append((int) this.array[i]);
                } else {
                    return sb.append(']').toString();
                }
            }
        }

        short[] toShortArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }
    }
}
