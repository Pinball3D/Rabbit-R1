package okio.internal;

import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import okio.SegmentedByteString;
import okio.Util;

/* compiled from: SegmentedByteString.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a\u0017\u0010\u0006\u001a\u00020\u0007*\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0080\b\u001a\r\u0010\u000b\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\r\u0010\f\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\u0015\u0010\r\u001a\u00020\u000e*\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0010\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0010\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0015*\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0012*\u00020\bH\u0080\b\u001a%\u0010\u001a\u001a\u00020\u001b*\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a]\u0010\u001e\u001a\u00020\u001b*\u00020\b2K\u0010\u001f\u001aG\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u001b0 H\u0080\bø\u0001\u0000\u001aj\u0010\u001e\u001a\u00020\u001b*\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012K\u0010\u001f\u001aG\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u001b0 H\u0082\b\u001a\u0014\u0010$\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {"binarySearch", "", "", "value", "fromIndex", "toIndex", "commonEquals", "", "Lokio/SegmentedByteString;", "other", "", "commonGetSize", "commonHashCode", "commonInternalGet", "", "pos", "commonRangeEquals", "offset", "", "otherOffset", "byteCount", "Lokio/ByteString;", "commonSubstring", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "commonToByteArray", "commonWrite", "", "buffer", "Lokio/Buffer;", "forEachSegment", "action", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "data", "segment", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class SegmentedByteStringKt {
    public static final int binarySearch(int[] binarySearch, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = binarySearch[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else {
                if (i6 <= i) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    public static final int segment(SegmentedByteString segment, int i) {
        Intrinsics.checkNotNullParameter(segment, "$this$segment");
        int binarySearch = binarySearch(segment.getDirectory(), i + 1, 0, segment.getSegments().length);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    public static final void forEachSegment(SegmentedByteString forEachSegment, Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(forEachSegment, "$this$forEachSegment");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = forEachSegment.getSegments().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = forEachSegment.getDirectory()[length + i];
            int i4 = forEachSegment.getDirectory()[i];
            action.invoke(forEachSegment.getSegments()[i], Integer.valueOf(i3), Integer.valueOf(i4 - i2));
            i++;
            i2 = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forEachSegment(SegmentedByteString segmentedByteString, int i, int i2, Function3<? super byte[], ? super Integer, ? super Integer, Unit> function3) {
        int segment = segment(segmentedByteString, i);
        while (i < i2) {
            int i3 = segment == 0 ? 0 : segmentedByteString.getDirectory()[segment - 1];
            int i4 = segmentedByteString.getDirectory()[segment] - i3;
            int i5 = segmentedByteString.getDirectory()[segmentedByteString.getSegments().length + segment];
            int min = Math.min(i2, i4 + i3) - i;
            function3.invoke(segmentedByteString.getSegments()[segment], Integer.valueOf(i5 + (i - i3)), Integer.valueOf(min));
            i += min;
            segment++;
        }
    }

    public static final ByteString commonSubstring(SegmentedByteString commonSubstring, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonSubstring, "$this$commonSubstring");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(i2 <= commonSubstring.size())) {
            throw new IllegalArgumentException(("endIndex=" + i2 + " > length(" + commonSubstring.size() + ')').toString());
        }
        int i3 = i2 - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + i2 + " < beginIndex=" + i).toString());
        }
        if (i == 0 && i2 == commonSubstring.size()) {
            return commonSubstring;
        }
        if (i == i2) {
            return ByteString.EMPTY;
        }
        int segment = segment(commonSubstring, i);
        int segment2 = segment(commonSubstring, i2 - 1);
        byte[][] bArr = (byte[][]) ArraysKt.copyOfRange(commonSubstring.getSegments(), segment, segment2 + 1);
        byte[][] bArr2 = bArr;
        int[] iArr = new int[bArr2.length * 2];
        if (segment <= segment2) {
            int i4 = 0;
            int i5 = segment;
            while (true) {
                iArr[i4] = Math.min(commonSubstring.getDirectory()[i5] - i, i3);
                int i6 = i4 + 1;
                iArr[i4 + bArr2.length] = commonSubstring.getDirectory()[commonSubstring.getSegments().length + i5];
                if (i5 == segment2) {
                    break;
                }
                i5++;
                i4 = i6;
            }
        }
        int i7 = segment != 0 ? commonSubstring.getDirectory()[segment - 1] : 0;
        int length = bArr2.length;
        iArr[length] = iArr[length] + (i - i7);
        return new SegmentedByteString(bArr, iArr);
    }

    public static final byte commonInternalGet(SegmentedByteString commonInternalGet, int i) {
        Intrinsics.checkNotNullParameter(commonInternalGet, "$this$commonInternalGet");
        Util.checkOffsetAndCount(commonInternalGet.getDirectory()[commonInternalGet.getSegments().length - 1], i, 1L);
        int segment = segment(commonInternalGet, i);
        return commonInternalGet.getSegments()[segment][(i - (segment == 0 ? 0 : commonInternalGet.getDirectory()[segment - 1])) + commonInternalGet.getDirectory()[commonInternalGet.getSegments().length + segment]];
    }

    public static final int commonGetSize(SegmentedByteString commonGetSize) {
        Intrinsics.checkNotNullParameter(commonGetSize, "$this$commonGetSize");
        return commonGetSize.getDirectory()[commonGetSize.getSegments().length - 1];
    }

    public static final byte[] commonToByteArray(SegmentedByteString commonToByteArray) {
        Intrinsics.checkNotNullParameter(commonToByteArray, "$this$commonToByteArray");
        byte[] bArr = new byte[commonToByteArray.size()];
        int length = commonToByteArray.getSegments().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = commonToByteArray.getDirectory()[length + i];
            int i5 = commonToByteArray.getDirectory()[i];
            int i6 = i5 - i2;
            ArraysKt.copyInto(commonToByteArray.getSegments()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final boolean commonRangeEquals(SegmentedByteString commonRangeEquals, int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > commonRangeEquals.size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int segment = segment(commonRangeEquals, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : commonRangeEquals.getDirectory()[segment - 1];
            int i6 = commonRangeEquals.getDirectory()[segment] - i5;
            int i7 = commonRangeEquals.getDirectory()[commonRangeEquals.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            if (!other.rangeEquals(i2, commonRangeEquals.getSegments()[segment], i7 + (i - i5), min)) {
                return false;
            }
            i2 += min;
            i += min;
            segment++;
        }
        return true;
    }

    public static final boolean commonRangeEquals(SegmentedByteString commonRangeEquals, int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > commonRangeEquals.size() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int segment = segment(commonRangeEquals, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : commonRangeEquals.getDirectory()[segment - 1];
            int i6 = commonRangeEquals.getDirectory()[segment] - i5;
            int i7 = commonRangeEquals.getDirectory()[commonRangeEquals.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            if (!Util.arrayRangeEquals(commonRangeEquals.getSegments()[segment], i7 + (i - i5), other, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            segment++;
        }
        return true;
    }

    public static final boolean commonEquals(SegmentedByteString commonEquals, Object obj) {
        Intrinsics.checkNotNullParameter(commonEquals, "$this$commonEquals");
        if (obj == commonEquals) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == commonEquals.size() && commonEquals.rangeEquals(0, byteString, 0, commonEquals.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonHashCode(SegmentedByteString commonHashCode) {
        Intrinsics.checkNotNullParameter(commonHashCode, "$this$commonHashCode");
        int hashCode$okio = commonHashCode.getHashCode();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = commonHashCode.getSegments().length;
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < length) {
            int i4 = commonHashCode.getDirectory()[length + i];
            int i5 = commonHashCode.getDirectory()[i];
            byte[] bArr = commonHashCode.getSegments()[i];
            int i6 = (i5 - i3) + i4;
            while (i4 < i6) {
                i2 = (i2 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i3 = i5;
        }
        commonHashCode.setHashCode$okio(i2);
        return i2;
    }

    public static final void commonWrite(SegmentedByteString commonWrite, Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i3 = i2 + i;
        int segment = segment(commonWrite, i);
        while (i < i3) {
            int i4 = segment == 0 ? 0 : commonWrite.getDirectory()[segment - 1];
            int i5 = commonWrite.getDirectory()[segment] - i4;
            int i6 = commonWrite.getDirectory()[commonWrite.getSegments().length + segment];
            int min = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            Segment segment2 = new Segment(commonWrite.getSegments()[segment], i7, i7 + min, true, false);
            if (buffer.head == null) {
                segment2.prev = segment2;
                segment2.next = segment2.prev;
                buffer.head = segment2.next;
            } else {
                Segment segment3 = buffer.head;
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + commonWrite.size());
    }
}
