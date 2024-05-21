package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;

/* compiled from: PublicSuffixDatabase.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\fJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "()V", "listRead", "Ljava/util/concurrent/atomic/AtomicBoolean;", "publicSuffixExceptionListBytes", "", "publicSuffixListBytes", "readCompleteLatch", "Ljava/util/concurrent/CountDownLatch;", "findMatchingRule", "", "", "domainLabels", "getEffectiveTldPlusOne", "domain", "readTheList", "", "readTheListUninterruptibly", "setListBytes", "splitDomain", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {(byte) 42};
    private static final List<String> PREVAILING_RULE = CollectionsKt.listOf("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static final /* synthetic */ byte[] access$getPublicSuffixListBytes$p(PublicSuffixDatabase publicSuffixDatabase) {
        byte[] bArr = publicSuffixDatabase.publicSuffixListBytes;
        if (bArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
        }
        return bArr;
    }

    public final String getEffectiveTldPlusOne(String domain) {
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        Intrinsics.checkNotNullExpressionValue(unicodeDomain, "unicodeDomain");
        List<String> splitDomain = splitDomain(unicodeDomain);
        List<String> findMatchingRule = findMatchingRule(splitDomain);
        if (splitDomain.size() == findMatchingRule.size() && findMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (findMatchingRule.get(0).charAt(0) == '!') {
            size = splitDomain.size();
            size2 = findMatchingRule.size();
        } else {
            size = splitDomain.size();
            size2 = findMatchingRule.size() + 1;
        }
        return SequencesKt.joinToString$default(SequencesKt.drop(CollectionsKt.asSequence(splitDomain(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
    }

    private final List<String> splitDomain(String domain) {
        List<String> split$default = StringsKt.split$default((CharSequence) domain, new char[]{'.'}, false, 0, 6, (Object) null);
        return Intrinsics.areEqual((String) CollectionsKt.last((List) split$default), "") ? CollectionsKt.dropLast(split$default, 1) : split$default;
    }

    private final List<String> findMatchingRule(List<String> domainLabels) {
        String str;
        String str2;
        List<String> emptyList;
        List<String> emptyList2;
        if (!this.listRead.get() && this.listRead.compareAndSet(false, true)) {
            readTheListUninterruptibly();
        } else {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (!(this.publicSuffixListBytes != null)) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.".toString());
        }
        int size = domainLabels.size();
        byte[][] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            String str3 = domainLabels.get(i);
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            if (str3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = str3.getBytes(UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            bArr[i] = bytes;
        }
        byte[][] bArr2 = bArr;
        String str4 = null;
        int length = bArr2.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                str = null;
                break;
            }
            Companion companion = INSTANCE;
            byte[] bArr3 = this.publicSuffixListBytes;
            if (bArr3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
            }
            str = companion.binarySearch(bArr3, bArr2, i2);
            if (str != null) {
                break;
            }
            i2++;
        }
        byte[][] bArr4 = bArr2;
        if (bArr4.length > 1) {
            byte[][] bArr5 = (byte[][]) bArr4.clone();
            int length2 = bArr5.length - 1;
            for (int i3 = 0; i3 < length2; i3++) {
                bArr5[i3] = WILDCARD_LABEL;
                Companion companion2 = INSTANCE;
                byte[] bArr6 = this.publicSuffixListBytes;
                if (bArr6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                }
                str2 = companion2.binarySearch(bArr6, bArr5, i3);
                if (str2 != null) {
                    break;
                }
            }
        }
        str2 = null;
        if (str2 != null) {
            int length3 = bArr4.length - 1;
            int i4 = 0;
            while (true) {
                if (i4 >= length3) {
                    break;
                }
                Companion companion3 = INSTANCE;
                byte[] bArr7 = this.publicSuffixExceptionListBytes;
                if (bArr7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("publicSuffixExceptionListBytes");
                }
                String binarySearch = companion3.binarySearch(bArr7, bArr2, i4);
                if (binarySearch != null) {
                    str4 = binarySearch;
                    break;
                }
                i4++;
            }
        }
        if (str4 != null) {
            return StringsKt.split$default((CharSequence) ("!" + str4), new char[]{'.'}, false, 0, 6, (Object) null);
        }
        if (str == null && str2 == null) {
            return PREVAILING_RULE;
        }
        if (str == null || (emptyList = StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null)) == null) {
            emptyList = CollectionsKt.emptyList();
        }
        if (str2 == null || (emptyList2 = StringsKt.split$default((CharSequence) str2, new char[]{'.'}, false, 0, 6, (Object) null)) == null) {
            emptyList2 = CollectionsKt.emptyList();
        }
        return emptyList.size() > emptyList2.size() ? emptyList : emptyList2;
    }

    private final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    Platform.INSTANCE.get().log("Failed to read public suffix list", 5, e);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        BufferedSource buffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
        try {
            BufferedSource bufferedSource = buffer;
            byte[] readByteArray = bufferedSource.readByteArray(bufferedSource.readInt());
            byte[] readByteArray2 = bufferedSource.readByteArray(bufferedSource.readInt());
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(buffer, null);
            synchronized (this) {
                Intrinsics.checkNotNull(readByteArray);
                this.publicSuffixListBytes = readByteArray;
                Intrinsics.checkNotNull(readByteArray2);
                this.publicSuffixExceptionListBytes = readByteArray2;
                Unit unit2 = Unit.INSTANCE;
            }
            this.readCompleteLatch.countDown();
        } finally {
        }
    }

    public final void setListBytes(byte[] publicSuffixListBytes, byte[] publicSuffixExceptionListBytes) {
        Intrinsics.checkNotNullParameter(publicSuffixListBytes, "publicSuffixListBytes");
        Intrinsics.checkNotNullParameter(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }

    /* compiled from: PublicSuffixDatabase.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\fJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "", "()V", "EXCEPTION_MARKER", "", "PREVAILING_RULE", "", "", "PUBLIC_SUFFIX_RESOURCE", "WILDCARD_LABEL", "", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "get", "binarySearch", "labels", "", "labelIndex", "", "([B[[BI)Ljava/lang/String;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            int and;
            boolean z;
            int and2;
            int length = bArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = (i3 + length) / 2;
                while (i4 > -1 && bArr[i4] != ((byte) 10)) {
                    i4--;
                }
                int i5 = i4 + 1;
                int i6 = 1;
                while (true) {
                    i2 = i5 + i6;
                    if (bArr[i2] == ((byte) 10)) {
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - i5;
                int i8 = i;
                boolean z2 = false;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (z2) {
                        and = 46;
                        z = false;
                    } else {
                        boolean z3 = z2;
                        and = Util.and(bArr2[i8][i9], 255);
                        z = z3;
                    }
                    and2 = and - Util.and(bArr[i5 + i10], 255);
                    if (and2 != 0) {
                        break;
                    }
                    i10++;
                    i9++;
                    if (i10 == i7) {
                        break;
                    }
                    if (bArr2[i8].length != i9) {
                        z2 = z;
                    } else {
                        if (i8 == bArr2.length - 1) {
                            break;
                        }
                        i8++;
                        i9 = -1;
                        z2 = true;
                    }
                }
                if (and2 >= 0) {
                    if (and2 <= 0) {
                        int i11 = i7 - i10;
                        int length2 = bArr2[i8].length - i9;
                        int length3 = bArr2.length;
                        for (int i12 = i8 + 1; i12 < length3; i12++) {
                            length2 += bArr2[i12].length;
                        }
                        if (length2 >= i11) {
                            if (length2 <= i11) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                                return new String(bArr, i5, i7, UTF_8);
                            }
                        }
                    }
                    i3 = i2 + 1;
                }
                length = i4;
            }
            return null;
        }
    }
}
