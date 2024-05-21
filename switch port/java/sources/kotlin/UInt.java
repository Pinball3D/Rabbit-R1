package kotlin;

import io.flutter.embedding.android.KeyboardMap;
import kotlin.jvm.JvmInline;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;

/* compiled from: UInt.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 {2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0010\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0005J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u001a\u0010\u000fJ\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001b\u0010\u000bJ\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b\u001e\u0010\u0016J\u001a\u0010\u001f\u001a\u00020 2\b\u0010\t\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\b¢\u0006\u0004\b%\u0010\u000fJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b&\u0010\u000bJ\u0018\u0010$\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b'\u0010\u001dJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b(\u0010\u0016J\u0010\u0010)\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b*\u0010\u0005J\u0013\u0010+\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b,\u0010\u0005J\u0013\u0010-\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b.\u0010\u0005J\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b0\u0010\u000fJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b1\u0010\u000bJ\u0018\u0010/\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b2\u0010\u001dJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b3\u0010\u0016J\u0018\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\b¢\u0006\u0004\b5\u00106J\u0018\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b7\u0010\u000bJ\u0018\u00104\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b8\u0010\u001dJ\u0018\u00104\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b9\u0010:J\u0018\u0010;\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b<\u0010\u000bJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b>\u0010\u000fJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b?\u0010\u000bJ\u0018\u0010=\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b@\u0010\u001dJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bA\u0010\u0016J\u0018\u0010B\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bD\u0010EJ\u0018\u0010F\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bG\u0010EJ\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\bI\u0010\u000fJ\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bJ\u0010\u000bJ\u0018\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bK\u0010\u001dJ\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bL\u0010\u0016J\u001b\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0003H\u0087\fø\u0001\u0000¢\u0006\u0004\bO\u0010\u000bJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0003H\u0087\fø\u0001\u0000¢\u0006\u0004\bQ\u0010\u000bJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\bS\u0010\u000fJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bT\u0010\u000bJ\u0018\u0010R\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bU\u0010\u001dJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bV\u0010\u0016J\u0010\u0010W\u001a\u00020XH\u0087\b¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\\H\u0087\b¢\u0006\u0004\b]\u0010^J\u0010\u0010_\u001a\u00020`H\u0087\b¢\u0006\u0004\ba\u0010bJ\u0010\u0010c\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bd\u0010\u0005J\u0010\u0010e\u001a\u00020fH\u0087\b¢\u0006\u0004\bg\u0010hJ\u0010\u0010i\u001a\u00020jH\u0087\b¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020nH\u0016¢\u0006\u0004\bo\u0010pJ\u0013\u0010q\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\br\u0010ZJ\u0013\u0010s\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\bt\u0010\u0005J\u0013\u0010u\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\bv\u0010hJ\u0013\u0010w\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\bx\u0010lJ\u0018\u0010y\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bz\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0004\n\u0002\b!¨\u0006|"}, d2 = {"Lkotlin/UInt;", "", "data", "", "constructor-impl", "(I)I", "getData$annotations", "()V", "and", "other", "and-WZ4Q5Ns", "(II)I", "compareTo", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec", "dec-pVg5ArA", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "equals", "", "", "equals-impl", "(ILjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "inc", "inc-pVg5ArA", "inv", "inv-pVg5ArA", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "(IB)B", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "(IS)S", "or", "or-WZ4Q5Ns", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-WZ4Q5Ns", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(I)B", "toDouble", "", "toDouble-impl", "(I)D", "toFloat", "", "toFloat-impl", "(I)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(I)J", "toShort", "", "toShort-impl", "(I)S", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-WZ4Q5Ns", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UInt implements Comparable<UInt> {
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    /* renamed from: box-impl */
    public static final /* synthetic */ UInt m5787boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl */
    public static int m5793constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl */
    public static boolean m5799equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m5800equalsimpl0(int i, int i2) {
        return i == i2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m5805hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* renamed from: toByte-impl */
    private static final byte m5833toByteimpl(int i) {
        return (byte) i;
    }

    /* renamed from: toInt-impl */
    private static final int m5836toIntimpl(int i) {
        return i;
    }

    /* renamed from: toLong-impl */
    private static final long m5837toLongimpl(int i) {
        return i & KeyboardMap.kValueMask;
    }

    /* renamed from: toShort-impl */
    private static final short m5838toShortimpl(int i) {
        return (short) i;
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m5841toUIntpVg5ArA(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m5799equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m5805hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ int getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(getData(), uInt.getData());
    }

    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m5788compareTo7apg3OU(int i, byte b) {
        return Integer.compareUnsigned(i, m5793constructorimpl(b & 255));
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m5792compareToxj2QHRw(int i, short s) {
        return Integer.compareUnsigned(i, m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private int m5790compareToWZ4Q5Ns(int i) {
        return UnsignedKt.uintCompare(getData(), i);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static int m5791compareToWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.uintCompare(i, i2);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m5789compareToVKZWuLQ(int i, long j) {
        return Long.compareUnsigned(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask), j);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m5817plus7apg3OU(int i, byte b) {
        return m5793constructorimpl(i + m5793constructorimpl(b & 255));
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m5820plusxj2QHRw(int i, short s) {
        return m5793constructorimpl(i + m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m5819plusWZ4Q5Ns(int i, int i2) {
        return m5793constructorimpl(i + i2);
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m5818plusVKZWuLQ(int i, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask) + j);
    }

    /* renamed from: minus-7apg3OU */
    private static final int m5808minus7apg3OU(int i, byte b) {
        return m5793constructorimpl(i - m5793constructorimpl(b & 255));
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m5811minusxj2QHRw(int i, short s) {
        return m5793constructorimpl(i - m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m5810minusWZ4Q5Ns(int i, int i2) {
        return m5793constructorimpl(i - i2);
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m5809minusVKZWuLQ(int i, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask) - j);
    }

    /* renamed from: times-7apg3OU */
    private static final int m5829times7apg3OU(int i, byte b) {
        return m5793constructorimpl(i * m5793constructorimpl(b & 255));
    }

    /* renamed from: times-xj2QHRw */
    private static final int m5832timesxj2QHRw(int i, short s) {
        return m5793constructorimpl(i * m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m5831timesWZ4Q5Ns(int i, int i2) {
        return m5793constructorimpl(i * i2);
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m5830timesVKZWuLQ(int i, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask) * j);
    }

    /* renamed from: div-7apg3OU */
    private static final int m5795div7apg3OU(int i, byte b) {
        return Integer.divideUnsigned(i, m5793constructorimpl(b & 255));
    }

    /* renamed from: div-xj2QHRw */
    private static final int m5798divxj2QHRw(int i, short s) {
        return Integer.divideUnsigned(i, m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m5797divWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m6049uintDivideJ1ME1BU(i, i2);
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m5796divVKZWuLQ(int i, long j) {
        return Long.divideUnsigned(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask), j);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m5823rem7apg3OU(int i, byte b) {
        return Integer.remainderUnsigned(i, m5793constructorimpl(b & 255));
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m5826remxj2QHRw(int i, short s) {
        return Integer.remainderUnsigned(i, m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m5825remWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m6050uintRemainderJ1ME1BU(i, i2);
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m5824remVKZWuLQ(int i, long j) {
        return Long.remainderUnsigned(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask), j);
    }

    /* renamed from: floorDiv-7apg3OU */
    private static final int m5801floorDiv7apg3OU(int i, byte b) {
        return Integer.divideUnsigned(i, m5793constructorimpl(b & 255));
    }

    /* renamed from: floorDiv-xj2QHRw */
    private static final int m5804floorDivxj2QHRw(int i, short s) {
        return Integer.divideUnsigned(i, m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m5803floorDivWZ4Q5Ns(int i, int i2) {
        return Integer.divideUnsigned(i, i2);
    }

    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m5802floorDivVKZWuLQ(int i, long j) {
        return Long.divideUnsigned(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask), j);
    }

    /* renamed from: mod-7apg3OU */
    private static final byte m5812mod7apg3OU(int i, byte b) {
        return UByte.m5716constructorimpl((byte) Integer.remainderUnsigned(i, m5793constructorimpl(b & 255)));
    }

    /* renamed from: mod-xj2QHRw */
    private static final short m5815modxj2QHRw(int i, short s) {
        return UShort.m5979constructorimpl((short) Integer.remainderUnsigned(i, m5793constructorimpl(s & UShort.MAX_VALUE)));
    }

    /* renamed from: mod-WZ4Q5Ns */
    private static final int m5814modWZ4Q5Ns(int i, int i2) {
        return Integer.remainderUnsigned(i, i2);
    }

    /* renamed from: mod-VKZWuLQ */
    private static final long m5813modVKZWuLQ(int i, long j) {
        return Long.remainderUnsigned(ULong.m5872constructorimpl(i & KeyboardMap.kValueMask), j);
    }

    /* renamed from: inc-pVg5ArA */
    private static final int m5806incpVg5ArA(int i) {
        return m5793constructorimpl(i + 1);
    }

    /* renamed from: dec-pVg5ArA */
    private static final int m5794decpVg5ArA(int i) {
        return m5793constructorimpl(i - 1);
    }

    /* renamed from: rangeTo-WZ4Q5Ns */
    private static final UIntRange m5821rangeToWZ4Q5Ns(int i, int i2) {
        return new UIntRange(i, i2, null);
    }

    /* renamed from: rangeUntil-WZ4Q5Ns */
    private static final UIntRange m5822rangeUntilWZ4Q5Ns(int i, int i2) {
        return URangesKt.m6967untilJ1ME1BU(i, i2);
    }

    /* renamed from: shl-pVg5ArA */
    private static final int m5827shlpVg5ArA(int i, int i2) {
        return m5793constructorimpl(i << i2);
    }

    /* renamed from: shr-pVg5ArA */
    private static final int m5828shrpVg5ArA(int i, int i2) {
        return m5793constructorimpl(i >>> i2);
    }

    /* renamed from: and-WZ4Q5Ns */
    private static final int m5786andWZ4Q5Ns(int i, int i2) {
        return m5793constructorimpl(i & i2);
    }

    /* renamed from: or-WZ4Q5Ns */
    private static final int m5816orWZ4Q5Ns(int i, int i2) {
        return m5793constructorimpl(i | i2);
    }

    /* renamed from: xor-WZ4Q5Ns */
    private static final int m5844xorWZ4Q5Ns(int i, int i2) {
        return m5793constructorimpl(i ^ i2);
    }

    /* renamed from: inv-pVg5ArA */
    private static final int m5807invpVg5ArA(int i) {
        return m5793constructorimpl(~i);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m5840toUBytew2LRezQ(int i) {
        return UByte.m5716constructorimpl((byte) i);
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m5843toUShortMh2AYeg(int i) {
        return UShort.m5979constructorimpl((short) i);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m5842toULongsVKNKU(int i) {
        return ULong.m5872constructorimpl(i & KeyboardMap.kValueMask);
    }

    /* renamed from: toFloat-impl */
    private static final float m5835toFloatimpl(int i) {
        return (float) UnsignedKt.uintToDouble(i);
    }

    /* renamed from: toDouble-impl */
    private static final double m5834toDoubleimpl(int i) {
        return UnsignedKt.uintToDouble(i);
    }

    /* renamed from: toString-impl */
    public static String m5839toStringimpl(int i) {
        return String.valueOf(i & KeyboardMap.kValueMask);
    }

    public String toString() {
        return m5839toStringimpl(this.data);
    }
}
