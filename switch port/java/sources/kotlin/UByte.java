package kotlin;

import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;

/* compiled from: UByte.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 v2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001vB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0016H\u0087\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0005J\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001c\u0010\u000fJ\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u001d\u0010\u0012J\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\n¢\u0006\u0004\b \u0010\u0018J\u001a\u0010!\u001a\u00020\"2\b\u0010\t\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b'\u0010\u000fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b(\u0010\u0012J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b)\u0010\u001fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\b¢\u0006\u0004\b*\u0010\u0018J\u0010\u0010+\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b/\u0010\u0005J\u0013\u00100\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b1\u0010\u0005J\u0018\u00102\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b3\u0010\u000fJ\u0018\u00102\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b4\u0010\u0012J\u0018\u00102\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b5\u0010\u001fJ\u0018\u00102\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\n¢\u0006\u0004\b6\u0010\u0018J\u0018\u00107\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b8\u0010\u000bJ\u0018\u00107\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b9\u0010\u0012J\u0018\u00107\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b:\u0010\u001fJ\u0018\u00107\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\u0016H\u0087\b¢\u0006\u0004\b;\u0010<J\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b>\u0010\u000bJ\u0018\u0010?\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b@\u0010\u000fJ\u0018\u0010?\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\bA\u0010\u0012J\u0018\u0010?\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\bB\u0010\u001fJ\u0018\u0010?\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\n¢\u0006\u0004\bC\u0010\u0018J\u0018\u0010D\u001a\u00020E2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bF\u0010GJ\u0018\u0010H\u001a\u00020E2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bI\u0010GJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bK\u0010\u000fJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\bL\u0010\u0012J\u0018\u0010J\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\bM\u0010\u001fJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\n¢\u0006\u0004\bN\u0010\u0018J\u0018\u0010O\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bP\u0010\u000fJ\u0018\u0010O\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\bQ\u0010\u0012J\u0018\u0010O\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\bR\u0010\u001fJ\u0018\u0010O\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\n¢\u0006\u0004\bS\u0010\u0018J\u0010\u0010T\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bU\u0010\u0005J\u0010\u0010V\u001a\u00020WH\u0087\b¢\u0006\u0004\bX\u0010YJ\u0010\u0010Z\u001a\u00020[H\u0087\b¢\u0006\u0004\b\\\u0010]J\u0010\u0010^\u001a\u00020\rH\u0087\b¢\u0006\u0004\b_\u0010-J\u0010\u0010`\u001a\u00020aH\u0087\b¢\u0006\u0004\bb\u0010cJ\u0010\u0010d\u001a\u00020eH\u0087\b¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020iH\u0016¢\u0006\u0004\bj\u0010kJ\u0013\u0010l\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\bm\u0010\u0005J\u0013\u0010n\u001a\u00020\u0010H\u0087\bø\u0001\u0000¢\u0006\u0004\bo\u0010-J\u0013\u0010p\u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\bq\u0010cJ\u0013\u0010r\u001a\u00020\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\bs\u0010gJ\u0018\u0010t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bu\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0004\n\u0002\b!¨\u0006w"}, d2 = {"Lkotlin/UByte;", "", "data", "", "constructor-impl", "(B)B", "getData$annotations", "()V", "and", "other", "and-7apg3OU", "(BB)B", "compareTo", "", "compareTo-7apg3OU", "(BB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "dec", "dec-w2LRezQ", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(BJ)J", "div-xj2QHRw", "equals", "", "", "equals-impl", "(BLjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "(B)I", "inc", "inc-w2LRezQ", "inv", "inv-w2LRezQ", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "(BS)S", "or", "or-7apg3OU", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-7apg3OU", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "toByte-impl", "toDouble", "", "toDouble-impl", "(B)D", "toFloat", "", "toFloat-impl", "(B)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(B)J", "toShort", "", "toShort-impl", "(B)S", "toString", "", "toString-impl", "(B)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-7apg3OU", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UByte implements Comparable<UByte> {
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    /* renamed from: box-impl */
    public static final /* synthetic */ UByte m5710boximpl(byte b) {
        return new UByte(b);
    }

    /* renamed from: constructor-impl */
    public static byte m5716constructorimpl(byte b) {
        return b;
    }

    /* renamed from: equals-impl */
    public static boolean m5722equalsimpl(byte b, Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m5723equalsimpl0(byte b, byte b2) {
        return b == b2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m5728hashCodeimpl(byte b) {
        return Byte.hashCode(b);
    }

    /* renamed from: toByte-impl */
    private static final byte m5754toByteimpl(byte b) {
        return b;
    }

    /* renamed from: toDouble-impl */
    private static final double m5755toDoubleimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toFloat-impl */
    private static final float m5756toFloatimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toInt-impl */
    private static final int m5757toIntimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toLong-impl */
    private static final long m5758toLongimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toShort-impl */
    private static final short m5759toShortimpl(byte b) {
        return (short) (b & 255);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m5761toUBytew2LRezQ(byte b) {
        return b;
    }

    public boolean equals(Object obj) {
        return m5722equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m5728hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ byte getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.compare(getData() & 255, uByte.getData() & 255);
    }

    private /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    /* renamed from: compareTo-7apg3OU */
    private int m5711compareTo7apg3OU(byte b) {
        return Intrinsics.compare(getData() & 255, b & 255);
    }

    /* renamed from: compareTo-7apg3OU */
    private static int m5712compareTo7apg3OU(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255);
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m5715compareToxj2QHRw(byte b, short s) {
        return Intrinsics.compare(b & 255, s & UShort.MAX_VALUE);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m5714compareToWZ4Q5Ns(byte b, int i) {
        return Integer.compareUnsigned(UInt.m5793constructorimpl(b & 255), i);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m5713compareToVKZWuLQ(byte b, long j) {
        return Long.compareUnsigned(ULong.m5872constructorimpl(b & 255), j);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m5740plus7apg3OU(byte b, byte b2) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) + UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m5743plusxj2QHRw(byte b, short s) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) + UInt.m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m5742plusWZ4Q5Ns(byte b, int i) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) + i);
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m5741plusVKZWuLQ(byte b, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(b & 255) + j);
    }

    /* renamed from: minus-7apg3OU */
    private static final int m5731minus7apg3OU(byte b, byte b2) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) - UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m5734minusxj2QHRw(byte b, short s) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) - UInt.m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m5733minusWZ4Q5Ns(byte b, int i) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) - i);
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m5732minusVKZWuLQ(byte b, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(b & 255) - j);
    }

    /* renamed from: times-7apg3OU */
    private static final int m5750times7apg3OU(byte b, byte b2) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) * UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: times-xj2QHRw */
    private static final int m5753timesxj2QHRw(byte b, short s) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) * UInt.m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m5752timesWZ4Q5Ns(byte b, int i) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(b & 255) * i);
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m5751timesVKZWuLQ(byte b, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(b & 255) * j);
    }

    /* renamed from: div-7apg3OU */
    private static final int m5718div7apg3OU(byte b, byte b2) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: div-xj2QHRw */
    private static final int m5721divxj2QHRw(byte b, short s) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m5720divWZ4Q5Ns(byte b, int i) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(b & 255), i);
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m5719divVKZWuLQ(byte b, long j) {
        return Long.divideUnsigned(ULong.m5872constructorimpl(b & 255), j);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m5746rem7apg3OU(byte b, byte b2) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m5749remxj2QHRw(byte b, short s) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m5748remWZ4Q5Ns(byte b, int i) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(b & 255), i);
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m5747remVKZWuLQ(byte b, long j) {
        return Long.remainderUnsigned(ULong.m5872constructorimpl(b & 255), j);
    }

    /* renamed from: floorDiv-7apg3OU */
    private static final int m5724floorDiv7apg3OU(byte b, byte b2) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: floorDiv-xj2QHRw */
    private static final int m5727floorDivxj2QHRw(byte b, short s) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m5726floorDivWZ4Q5Ns(byte b, int i) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(b & 255), i);
    }

    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m5725floorDivVKZWuLQ(byte b, long j) {
        return Long.divideUnsigned(ULong.m5872constructorimpl(b & 255), j);
    }

    /* renamed from: mod-7apg3OU */
    private static final byte m5735mod7apg3OU(byte b, byte b2) {
        return m5716constructorimpl((byte) Integer.remainderUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(b2 & 255)));
    }

    /* renamed from: mod-xj2QHRw */
    private static final short m5738modxj2QHRw(byte b, short s) {
        return UShort.m5979constructorimpl((short) Integer.remainderUnsigned(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(s & UShort.MAX_VALUE)));
    }

    /* renamed from: mod-WZ4Q5Ns */
    private static final int m5737modWZ4Q5Ns(byte b, int i) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(b & 255), i);
    }

    /* renamed from: mod-VKZWuLQ */
    private static final long m5736modVKZWuLQ(byte b, long j) {
        return Long.remainderUnsigned(ULong.m5872constructorimpl(b & 255), j);
    }

    /* renamed from: inc-w2LRezQ */
    private static final byte m5729incw2LRezQ(byte b) {
        return m5716constructorimpl((byte) (b + 1));
    }

    /* renamed from: dec-w2LRezQ */
    private static final byte m5717decw2LRezQ(byte b) {
        return m5716constructorimpl((byte) (b - 1));
    }

    /* renamed from: rangeTo-7apg3OU */
    private static final UIntRange m5744rangeTo7apg3OU(byte b, byte b2) {
        return new UIntRange(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(b2 & 255), null);
    }

    /* renamed from: rangeUntil-7apg3OU */
    private static final UIntRange m5745rangeUntil7apg3OU(byte b, byte b2) {
        return URangesKt.m6967untilJ1ME1BU(UInt.m5793constructorimpl(b & 255), UInt.m5793constructorimpl(b2 & 255));
    }

    /* renamed from: and-7apg3OU */
    private static final byte m5709and7apg3OU(byte b, byte b2) {
        return m5716constructorimpl((byte) (b & b2));
    }

    /* renamed from: or-7apg3OU */
    private static final byte m5739or7apg3OU(byte b, byte b2) {
        return m5716constructorimpl((byte) (b | b2));
    }

    /* renamed from: xor-7apg3OU */
    private static final byte m5765xor7apg3OU(byte b, byte b2) {
        return m5716constructorimpl((byte) (b ^ b2));
    }

    /* renamed from: inv-w2LRezQ */
    private static final byte m5730invw2LRezQ(byte b) {
        return m5716constructorimpl((byte) (~b));
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m5764toUShortMh2AYeg(byte b) {
        return UShort.m5979constructorimpl((short) (b & 255));
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m5762toUIntpVg5ArA(byte b) {
        return UInt.m5793constructorimpl(b & 255);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m5763toULongsVKNKU(byte b) {
        return ULong.m5872constructorimpl(b & 255);
    }

    /* renamed from: toString-impl */
    public static String m5760toStringimpl(byte b) {
        return String.valueOf(b & 255);
    }

    public String toString() {
        return m5760toStringimpl(this.data);
    }
}
