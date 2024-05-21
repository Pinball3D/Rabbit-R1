package kotlin;

/* compiled from: ULong.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b¢\u0006\u0002\u0010\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\b¢\u0006\u0002\u0010\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\bH\u0087\b¢\u0006\u0002\u0010\t\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\b¢\u0006\u0002\u0010\u000b\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\fH\u0087\b¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"toULong", "Lkotlin/ULong;", "", "(B)J", "", "(D)J", "", "(F)J", "", "(I)J", "", "(J)J", "", "(S)J", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ULongKt {
    private static final long toULong(byte b) {
        return ULong.m5872constructorimpl(b);
    }

    private static final long toULong(short s) {
        return ULong.m5872constructorimpl(s);
    }

    private static final long toULong(int i) {
        return ULong.m5872constructorimpl(i);
    }

    private static final long toULong(long j) {
        return ULong.m5872constructorimpl(j);
    }

    private static final long toULong(float f) {
        return UnsignedKt.doubleToULong(f);
    }

    private static final long toULong(double d) {
        return UnsignedKt.doubleToULong(d);
    }
}
