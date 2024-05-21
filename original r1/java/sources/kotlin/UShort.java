package kotlin;

import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: UShort.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\n\n\u0002\b\t\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 v2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001vB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0005J\u0018\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u001c\u0010\u0010J\u0018\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u001d\u0010\u0013J\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b \u0010\u0018J\u001a\u0010!\u001a\u00020\"2\b\u0010\t\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b'\u0010\u0010J\u0018\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b(\u0010\u0013J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b)\u0010\u001fJ\u0018\u0010&\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b*\u0010\u0018J\u0010\u0010+\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b/\u0010\u0005J\u0013\u00100\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b1\u0010\u0005J\u0018\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b3\u0010\u0010J\u0018\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b4\u0010\u0013J\u0018\u00102\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b5\u0010\u001fJ\u0018\u00102\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b6\u0010\u0018J\u0018\u00107\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b8\u00109J\u0018\u00107\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b:\u0010\u0013J\u0018\u00107\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b;\u0010\u001fJ\u0018\u00107\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b<\u0010\u000bJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b>\u0010\u000bJ\u0018\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b@\u0010\u0010J\u0018\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bA\u0010\u0013J\u0018\u0010?\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bB\u0010\u001fJ\u0018\u0010?\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bC\u0010\u0018J\u0018\u0010D\u001a\u00020E2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bF\u0010GJ\u0018\u0010H\u001a\u00020E2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bI\u0010GJ\u0018\u0010J\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\bK\u0010\u0010J\u0018\u0010J\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bL\u0010\u0013J\u0018\u0010J\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bM\u0010\u001fJ\u0018\u0010J\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bN\u0010\u0018J\u0018\u0010O\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\bP\u0010\u0010J\u0018\u0010O\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bQ\u0010\u0013J\u0018\u0010O\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bR\u0010\u001fJ\u0018\u0010O\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bS\u0010\u0018J\u0010\u0010T\u001a\u00020UH\u0087\b¢\u0006\u0004\bV\u0010WJ\u0010\u0010X\u001a\u00020YH\u0087\b¢\u0006\u0004\bZ\u0010[J\u0010\u0010\\\u001a\u00020]H\u0087\b¢\u0006\u0004\b^\u0010_J\u0010\u0010`\u001a\u00020\rH\u0087\b¢\u0006\u0004\ba\u0010-J\u0010\u0010b\u001a\u00020cH\u0087\b¢\u0006\u0004\bd\u0010eJ\u0010\u0010f\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bg\u0010\u0005J\u000f\u0010h\u001a\u00020iH\u0016¢\u0006\u0004\bj\u0010kJ\u0013\u0010l\u001a\u00020\u000eH\u0087\bø\u0001\u0000¢\u0006\u0004\bm\u0010WJ\u0013\u0010n\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\bo\u0010-J\u0013\u0010p\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\bq\u0010eJ\u0013\u0010r\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\bs\u0010\u0005J\u0018\u0010t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bu\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0004\n\u0002\b!¨\u0006w"}, d2 = {"Lkotlin/UShort;", "", "data", "", "constructor-impl", "(S)S", "getData$annotations", "()V", "and", "other", "and-xj2QHRw", "(SS)S", "compareTo", "", "Lkotlin/UByte;", "compareTo-7apg3OU", "(SB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "compareTo-xj2QHRw", "(SS)I", "dec", "dec-Mh2AYeg", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(SJ)J", "div-xj2QHRw", "equals", "", "", "equals-impl", "(SLjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "(S)I", "inc", "inc-Mh2AYeg", "inv", "inv-Mh2AYeg", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "(SB)B", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "or", "or-xj2QHRw", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-xj2QHRw", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(S)B", "toDouble", "", "toDouble-impl", "(S)D", "toFloat", "", "toFloat-impl", "(S)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(S)J", "toShort", "toShort-impl", "toString", "", "toString-impl", "(S)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-xj2QHRw", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UShort implements Comparable<UShort> {
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    /* renamed from: box-impl */
    public static final /* synthetic */ UShort m5973boximpl(short s) {
        return new UShort(s);
    }

    /* renamed from: constructor-impl */
    public static short m5979constructorimpl(short s) {
        return s;
    }

    /* renamed from: equals-impl */
    public static boolean m5985equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m5986equalsimpl0(short s, short s2) {
        return s == s2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m5991hashCodeimpl(short s) {
        return Short.hashCode(s);
    }

    /* renamed from: toByte-impl */
    private static final byte m6017toByteimpl(short s) {
        return (byte) s;
    }

    /* renamed from: toDouble-impl */
    private static final double m6018toDoubleimpl(short s) {
        return s & MAX_VALUE;
    }

    /* renamed from: toFloat-impl */
    private static final float m6019toFloatimpl(short s) {
        return s & MAX_VALUE;
    }

    /* renamed from: toInt-impl */
    private static final int m6020toIntimpl(short s) {
        return s & MAX_VALUE;
    }

    /* renamed from: toLong-impl */
    private static final long m6021toLongimpl(short s) {
        return s & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    /* renamed from: toShort-impl */
    private static final short m6022toShortimpl(short s) {
        return s;
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m6027toUShortMh2AYeg(short s) {
        return s;
    }

    public boolean equals(Object obj) {
        return m5985equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m5991hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ short getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(getData() & MAX_VALUE, uShort.getData() & MAX_VALUE);
    }

    private /* synthetic */ UShort(short s) {
        this.data = s;
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m5974compareTo7apg3OU(short s, byte b) {
        return Intrinsics.compare(s & MAX_VALUE, b & 255);
    }

    /* renamed from: compareTo-xj2QHRw */
    private int m5977compareToxj2QHRw(short s) {
        return Intrinsics.compare(getData() & MAX_VALUE, s & MAX_VALUE);
    }

    /* renamed from: compareTo-xj2QHRw */
    private static int m5978compareToxj2QHRw(short s, short s2) {
        return Intrinsics.compare(s & MAX_VALUE, s2 & MAX_VALUE);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m5976compareToWZ4Q5Ns(short s, int i) {
        return Integer.compareUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), i);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m5975compareToVKZWuLQ(short s, long j) {
        return Long.compareUnsigned(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m6003plus7apg3OU(short s, byte b) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) + UInt.m5793constructorimpl(b & 255));
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m6006plusxj2QHRw(short s, short s2) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) + UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m6005plusWZ4Q5Ns(short s, int i) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) + i);
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m6004plusVKZWuLQ(short s, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX) + j);
    }

    /* renamed from: minus-7apg3OU */
    private static final int m5994minus7apg3OU(short s, byte b) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) - UInt.m5793constructorimpl(b & 255));
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m5997minusxj2QHRw(short s, short s2) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) - UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m5996minusWZ4Q5Ns(short s, int i) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) - i);
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m5995minusVKZWuLQ(short s, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX) - j);
    }

    /* renamed from: times-7apg3OU */
    private static final int m6013times7apg3OU(short s, byte b) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) * UInt.m5793constructorimpl(b & 255));
    }

    /* renamed from: times-xj2QHRw */
    private static final int m6016timesxj2QHRw(short s, short s2) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) * UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m6015timesWZ4Q5Ns(short s, int i) {
        return UInt.m5793constructorimpl(UInt.m5793constructorimpl(s & MAX_VALUE) * i);
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m6014timesVKZWuLQ(short s, long j) {
        return ULong.m5872constructorimpl(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX) * j);
    }

    /* renamed from: div-7apg3OU */
    private static final int m5981div7apg3OU(short s, byte b) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(b & 255));
    }

    /* renamed from: div-xj2QHRw */
    private static final int m5984divxj2QHRw(short s, short s2) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m5983divWZ4Q5Ns(short s, int i) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), i);
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m5982divVKZWuLQ(short s, long j) {
        return Long.divideUnsigned(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m6009rem7apg3OU(short s, byte b) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(b & 255));
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m6012remxj2QHRw(short s, short s2) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m6011remWZ4Q5Ns(short s, int i) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), i);
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m6010remVKZWuLQ(short s, long j) {
        return Long.remainderUnsigned(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: floorDiv-7apg3OU */
    private static final int m5987floorDiv7apg3OU(short s, byte b) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(b & 255));
    }

    /* renamed from: floorDiv-xj2QHRw */
    private static final int m5990floorDivxj2QHRw(short s, short s2) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m5989floorDivWZ4Q5Ns(short s, int i) {
        return Integer.divideUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), i);
    }

    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m5988floorDivVKZWuLQ(short s, long j) {
        return Long.divideUnsigned(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: mod-7apg3OU */
    private static final byte m5998mod7apg3OU(short s, byte b) {
        return UByte.m5716constructorimpl((byte) Integer.remainderUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(b & 255)));
    }

    /* renamed from: mod-xj2QHRw */
    private static final short m6001modxj2QHRw(short s, short s2) {
        return m5979constructorimpl((short) Integer.remainderUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(s2 & MAX_VALUE)));
    }

    /* renamed from: mod-WZ4Q5Ns */
    private static final int m6000modWZ4Q5Ns(short s, int i) {
        return Integer.remainderUnsigned(UInt.m5793constructorimpl(s & MAX_VALUE), i);
    }

    /* renamed from: mod-VKZWuLQ */
    private static final long m5999modVKZWuLQ(short s, long j) {
        return Long.remainderUnsigned(ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: inc-Mh2AYeg */
    private static final short m5992incMh2AYeg(short s) {
        return m5979constructorimpl((short) (s + 1));
    }

    /* renamed from: dec-Mh2AYeg */
    private static final short m5980decMh2AYeg(short s) {
        return m5979constructorimpl((short) (s - 1));
    }

    /* renamed from: rangeTo-xj2QHRw */
    private static final UIntRange m6007rangeToxj2QHRw(short s, short s2) {
        return new UIntRange(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(s2 & MAX_VALUE), null);
    }

    /* renamed from: rangeUntil-xj2QHRw */
    private static final UIntRange m6008rangeUntilxj2QHRw(short s, short s2) {
        return URangesKt.m6967untilJ1ME1BU(UInt.m5793constructorimpl(s & MAX_VALUE), UInt.m5793constructorimpl(s2 & MAX_VALUE));
    }

    /* renamed from: and-xj2QHRw */
    private static final short m5972andxj2QHRw(short s, short s2) {
        return m5979constructorimpl((short) (s & s2));
    }

    /* renamed from: or-xj2QHRw */
    private static final short m6002orxj2QHRw(short s, short s2) {
        return m5979constructorimpl((short) (s | s2));
    }

    /* renamed from: xor-xj2QHRw */
    private static final short m6028xorxj2QHRw(short s, short s2) {
        return m5979constructorimpl((short) (s ^ s2));
    }

    /* renamed from: inv-Mh2AYeg */
    private static final short m5993invMh2AYeg(short s) {
        return m5979constructorimpl((short) (~s));
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m6024toUBytew2LRezQ(short s) {
        return UByte.m5716constructorimpl((byte) s);
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m6025toUIntpVg5ArA(short s) {
        return UInt.m5793constructorimpl(s & MAX_VALUE);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m6026toULongsVKNKU(short s) {
        return ULong.m5872constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    /* renamed from: toString-impl */
    public static String m6023toStringimpl(short s) {
        return String.valueOf(s & MAX_VALUE);
    }

    public String toString() {
        return m6023toStringimpl(this.data);
    }
}
