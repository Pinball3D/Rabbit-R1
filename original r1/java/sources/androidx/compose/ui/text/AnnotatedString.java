package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.net.HttpHeaders;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnnotatedString.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u000256B;\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00060\u0005¢\u0006\u0002\u0010\nBY\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u0005\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0006\u0018\u00010\u0005\u0012\u0018\b\u0002\u0010\r\u001a\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0011\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0013H\u0096\u0002J\"\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00060\u00052\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013J*\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00060\u00052\u0006\u0010%\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013J\"\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u00060\u00052\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013J$\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0\u00060\u00052\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013H\u0007J\u001e\u0010*\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u0013J\b\u0010+\u001a\u00020\u0013H\u0016J\u0011\u0010,\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0087\u0002J\u001b\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101J\u0018\u0010-\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u0013H\u0016J\b\u00104\u001a\u00020\u0003H\u0016R$\u0010\r\u001a\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0006\u0018\u00010\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00060\u00058F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011R\"\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0006\u0018\u00010\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u001d\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00058F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0011R\"\u0010\u000b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00067"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString;", "", "text", "", "spanStyles", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/SpanStyle;", "paragraphStyles", "Landroidx/compose/ui/text/ParagraphStyle;", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "spanStylesOrNull", "paragraphStylesOrNull", "annotations", "", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getAnnotations$ui_text_release", "()Ljava/util/List;", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "", "getLength", "()I", "getParagraphStyles", "getParagraphStylesOrNull$ui_text_release", "getSpanStyles", "getSpanStylesOrNull$ui_text_release", "getText", "()Ljava/lang/String;", "equals", "", "other", "get", "", "index", "getStringAnnotations", "start", "end", ViewHierarchyNode.JsonKeys.TAG, "getTtsAnnotations", "Landroidx/compose/ui/text/TtsAnnotation;", "getUrlAnnotations", "Landroidx/compose/ui/text/UrlAnnotation;", "hasStringAnnotations", "hashCode", "plus", "subSequence", "range", "Landroidx/compose/ui/text/TextRange;", "subSequence-5zc-tL8", "(J)Landroidx/compose/ui/text/AnnotatedString;", SpellCheckPlugin.START_INDEX_KEY, SpellCheckPlugin.END_INDEX_KEY, "toString", "Builder", HttpHeaders.RANGE, "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AnnotatedString implements CharSequence {
    public static final int $stable = 0;
    private final List<Range<? extends Object>> annotations;
    private final List<Range<ParagraphStyle>> paragraphStylesOrNull;
    private final List<Range<SpanStyle>> spanStylesOrNull;
    private final String text;

    public final List<Range<? extends Object>> getAnnotations$ui_text_release() {
        return this.annotations;
    }

    public final List<Range<ParagraphStyle>> getParagraphStylesOrNull$ui_text_release() {
        return this.paragraphStylesOrNull;
    }

    public final List<Range<SpanStyle>> getSpanStylesOrNull$ui_text_release() {
        return this.spanStylesOrNull;
    }

    public final String getText() {
        return this.text;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.text;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnnotatedString(String text, List<Range<SpanStyle>> list, List<Range<ParagraphStyle>> list2, List<? extends Range<? extends Object>> list3) {
        List sortedWith;
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
        this.spanStylesOrNull = list;
        this.paragraphStylesOrNull = list2;
        this.annotations = list3;
        if (list2 == null || (sortedWith = CollectionsKt.sortedWith(list2, new Comparator() { // from class: androidx.compose.ui.text.AnnotatedString$special$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((AnnotatedString.Range) t).getStart()), Integer.valueOf(((AnnotatedString.Range) t2).getStart()));
            }
        })) == null) {
            return;
        }
        int size = sortedWith.size();
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            Range range = (Range) sortedWith.get(i2);
            if (range.getStart() < i) {
                throw new IllegalArgumentException("ParagraphStyle should not overlap".toString());
            }
            if (range.getEnd() > this.text.length()) {
                throw new IllegalArgumentException(("ParagraphStyle range [" + range.getStart() + ", " + range.getEnd() + ") is out of boundary").toString());
            }
            i = range.getEnd();
        }
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ char charAt(int i) {
        return get(i);
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ int length() {
        return getLength();
    }

    public /* synthetic */ AnnotatedString(String str, List list, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : list2, (i & 8) != 0 ? null : list3);
    }

    public final List<Range<SpanStyle>> getSpanStyles() {
        List<Range<SpanStyle>> list = this.spanStylesOrNull;
        return list == null ? CollectionsKt.emptyList() : list;
    }

    public final List<Range<ParagraphStyle>> getParagraphStyles() {
        List<Range<ParagraphStyle>> list = this.paragraphStylesOrNull;
        return list == null ? CollectionsKt.emptyList() : list;
    }

    public /* synthetic */ AnnotatedString(String str, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? CollectionsKt.emptyList() : list2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AnnotatedString(java.lang.String r3, java.util.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.SpanStyle>> r4, java.util.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.ParagraphStyle>> r5) {
        /*
            r2 = this;
            java.lang.String r0 = "text"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "spanStyles"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "paragraphStyles"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.Collection r4 = (java.util.Collection) r4
            boolean r0 = r4.isEmpty()
            r1 = 0
            if (r0 == 0) goto L1b
            r4 = r1
        L1b:
            java.util.List r4 = (java.util.List) r4
            java.util.Collection r5 = (java.util.Collection) r5
            boolean r0 = r5.isEmpty()
            if (r0 == 0) goto L26
            r5 = r1
        L26:
            java.util.List r5 = (java.util.List) r5
            r2.<init>(r3, r4, r5, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.AnnotatedString.<init>(java.lang.String, java.util.List, java.util.List):void");
    }

    public int getLength() {
        return this.text.length();
    }

    public char get(int index) {
        return this.text.charAt(index);
    }

    @Override // java.lang.CharSequence
    public AnnotatedString subSequence(int startIndex, int endIndex) {
        if (startIndex > endIndex) {
            throw new IllegalArgumentException(("start (" + startIndex + ") should be less or equal to end (" + endIndex + ')').toString());
        }
        if (startIndex == 0 && endIndex == this.text.length()) {
            return this;
        }
        String substring = this.text.substring(startIndex, endIndex);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return new AnnotatedString(substring, AnnotatedStringKt.access$filterRanges(this.spanStylesOrNull, startIndex, endIndex), AnnotatedStringKt.access$filterRanges(this.paragraphStylesOrNull, startIndex, endIndex), AnnotatedStringKt.access$filterRanges(this.annotations, startIndex, endIndex));
    }

    /* renamed from: subSequence-5zc-tL8, reason: not valid java name */
    public final AnnotatedString m4289subSequence5zctL8(long range) {
        return subSequence(TextRange.m4412getMinimpl(range), TextRange.m4411getMaximpl(range));
    }

    public final AnnotatedString plus(AnnotatedString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Builder builder = new Builder(this);
        builder.append(other);
        return builder.toAnnotatedString();
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) other;
        return Intrinsics.areEqual(this.text, annotatedString.text) && Intrinsics.areEqual(this.spanStylesOrNull, annotatedString.spanStylesOrNull) && Intrinsics.areEqual(this.paragraphStylesOrNull, annotatedString.paragraphStylesOrNull) && Intrinsics.areEqual(this.annotations, annotatedString.annotations);
    }

    public int hashCode() {
        int hashCode = this.text.hashCode() * 31;
        List<Range<SpanStyle>> list = this.spanStylesOrNull;
        int hashCode2 = (hashCode + (list != null ? list.hashCode() : 0)) * 31;
        List<Range<ParagraphStyle>> list2 = this.paragraphStylesOrNull;
        int hashCode3 = (hashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<Range<? extends Object>> list3 = this.annotations;
        return hashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    /* compiled from: AnnotatedString.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007B%\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0013\u001a\u00028\u0000HÆ\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J<\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0003\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Range;", ExifInterface.GPS_DIRECTION_TRUE, "", "item", "start", "", "end", "(Ljava/lang/Object;II)V", ViewHierarchyNode.JsonKeys.TAG, "", "(Ljava/lang/Object;IILjava/lang/String;)V", "getEnd", "()I", "getItem", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getStart", "getTag", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Object;IILjava/lang/String;)Landroidx/compose/ui/text/AnnotatedString$Range;", "equals", "", "other", "hashCode", "toString", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class Range<T> {
        public static final int $stable = 0;
        private final int end;
        private final T item;
        private final int start;
        private final String tag;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Range copy$default(Range range, Object obj, int i, int i2, String str, int i3, Object obj2) {
            if ((i3 & 1) != 0) {
                obj = range.item;
            }
            if ((i3 & 2) != 0) {
                i = range.start;
            }
            if ((i3 & 4) != 0) {
                i2 = range.end;
            }
            if ((i3 & 8) != 0) {
                str = range.tag;
            }
            return range.copy(obj, i, i2, str);
        }

        public final T component1() {
            return this.item;
        }

        /* renamed from: component2, reason: from getter */
        public final int getStart() {
            return this.start;
        }

        /* renamed from: component3, reason: from getter */
        public final int getEnd() {
            return this.end;
        }

        /* renamed from: component4, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        public final Range<T> copy(T item, int start, int end, String tag) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            return new Range<>(item, start, end, tag);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Range)) {
                return false;
            }
            Range range = (Range) other;
            return Intrinsics.areEqual(this.item, range.item) && this.start == range.start && this.end == range.end && Intrinsics.areEqual(this.tag, range.tag);
        }

        public final int getEnd() {
            return this.end;
        }

        public final T getItem() {
            return this.item;
        }

        public final int getStart() {
            return this.start;
        }

        public final String getTag() {
            return this.tag;
        }

        public int hashCode() {
            T t = this.item;
            return ((((((t == null ? 0 : t.hashCode()) * 31) + Integer.hashCode(this.start)) * 31) + Integer.hashCode(this.end)) * 31) + this.tag.hashCode();
        }

        public String toString() {
            return "Range(item=" + this.item + ", start=" + this.start + ", end=" + this.end + ", tag=" + this.tag + ')';
        }

        public Range(T t, int i, int i2, String tag) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            this.item = t;
            this.start = i;
            this.end = i2;
            this.tag = tag;
            if (i > i2) {
                throw new IllegalArgumentException("Reversed range is not supported".toString());
            }
        }

        public Range(T t, int i, int i2) {
            this(t, i, i2, "");
        }
    }

    /* compiled from: AnnotatedString.kt */
    @Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\u0010\r\n\u0002\b\n\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002:\u00013B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u000f\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ&\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tJ\u001e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tJ\u001e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tJ \u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J \u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u000e\u0010'\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u0006J\u001e\u0010'\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tJ\u0010\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010'\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010*H\u0016J\"\u0010'\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010*2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u000e\u0010'\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u0004J\u0015\u0010+\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020)H\u0007¢\u0006\u0002\b'J\u0006\u0010,\u001a\u00020\u001aJ\u000e\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\tJ\u0016\u0010.\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010/\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0013J\u000e\u0010/\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0015J\u000e\u00100\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#J\u0010\u00101\u001a\u00020\t2\u0006\u0010%\u001a\u00020&H\u0007J\u0006\u00102\u001a\u00020\u0006R\u001c\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u00060\u0017j\u0002`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Builder;", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "text", "", "(Ljava/lang/String;)V", "Landroidx/compose/ui/text/AnnotatedString;", "(Landroidx/compose/ui/text/AnnotatedString;)V", "capacity", "", "(I)V", "annotations", "", "Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;", "", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "getLength", "()I", "paragraphStyles", "Landroidx/compose/ui/text/ParagraphStyle;", "spanStyles", "Landroidx/compose/ui/text/SpanStyle;", "styleStack", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "addStringAnnotation", "", ViewHierarchyNode.JsonKeys.TAG, "annotation", "start", "end", "addStyle", "style", "addTtsAnnotation", "ttsAnnotation", "Landroidx/compose/ui/text/TtsAnnotation;", "addUrlAnnotation", "urlAnnotation", "Landroidx/compose/ui/text/UrlAnnotation;", "append", "char", "", "", "deprecated_append_returning_void", "pop", "index", "pushStringAnnotation", "pushStyle", "pushTtsAnnotation", "pushUrlAnnotation", "toAnnotatedString", "MutableRange", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder implements Appendable {
        public static final int $stable = 8;
        private final List<MutableRange<? extends Object>> annotations;
        private final List<MutableRange<ParagraphStyle>> paragraphStyles;
        private final List<MutableRange<SpanStyle>> spanStyles;
        private final List<MutableRange<? extends Object>> styleStack;
        private final StringBuilder text;

        public Builder() {
            this(0, 1, null);
        }

        public Builder(int i) {
            this.text = new StringBuilder(i);
            this.spanStyles = new ArrayList();
            this.paragraphStyles = new ArrayList();
            this.annotations = new ArrayList();
            this.styleStack = new ArrayList();
        }

        public /* synthetic */ Builder(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 16 : i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: AnnotatedString.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B)\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000e\u0010\u0014\u001a\u00028\u0000HÆ\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J<\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001J\u0016\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001f2\b\b\u0002\u0010 \u001a\u00020\u0005J\t\u0010!\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0013\u0010\u0003\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\""}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;", ExifInterface.GPS_DIRECTION_TRUE, "", "item", "start", "", "end", ViewHierarchyNode.JsonKeys.TAG, "", "(Ljava/lang/Object;IILjava/lang/String;)V", "getEnd", "()I", "setEnd", "(I)V", "getItem", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getStart", "getTag", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Object;IILjava/lang/String;)Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;", "equals", "", "other", "hashCode", "toRange", "Landroidx/compose/ui/text/AnnotatedString$Range;", "defaultEnd", "toString", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final /* data */ class MutableRange<T> {
            private int end;
            private final T item;
            private final int start;
            private final String tag;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ MutableRange copy$default(MutableRange mutableRange, Object obj, int i, int i2, String str, int i3, Object obj2) {
                if ((i3 & 1) != 0) {
                    obj = mutableRange.item;
                }
                if ((i3 & 2) != 0) {
                    i = mutableRange.start;
                }
                if ((i3 & 4) != 0) {
                    i2 = mutableRange.end;
                }
                if ((i3 & 8) != 0) {
                    str = mutableRange.tag;
                }
                return mutableRange.copy(obj, i, i2, str);
            }

            public final T component1() {
                return this.item;
            }

            /* renamed from: component2, reason: from getter */
            public final int getStart() {
                return this.start;
            }

            /* renamed from: component3, reason: from getter */
            public final int getEnd() {
                return this.end;
            }

            /* renamed from: component4, reason: from getter */
            public final String getTag() {
                return this.tag;
            }

            public final MutableRange<T> copy(T item, int start, int end, String tag) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                return new MutableRange<>(item, start, end, tag);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof MutableRange)) {
                    return false;
                }
                MutableRange mutableRange = (MutableRange) other;
                return Intrinsics.areEqual(this.item, mutableRange.item) && this.start == mutableRange.start && this.end == mutableRange.end && Intrinsics.areEqual(this.tag, mutableRange.tag);
            }

            public final int getEnd() {
                return this.end;
            }

            public final T getItem() {
                return this.item;
            }

            public final int getStart() {
                return this.start;
            }

            public final String getTag() {
                return this.tag;
            }

            public int hashCode() {
                T t = this.item;
                return ((((((t == null ? 0 : t.hashCode()) * 31) + Integer.hashCode(this.start)) * 31) + Integer.hashCode(this.end)) * 31) + this.tag.hashCode();
            }

            public final void setEnd(int i) {
                this.end = i;
            }

            public String toString() {
                return "MutableRange(item=" + this.item + ", start=" + this.start + ", end=" + this.end + ", tag=" + this.tag + ')';
            }

            public MutableRange(T t, int i, int i2, String tag) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                this.item = t;
                this.start = i;
                this.end = i2;
                this.tag = tag;
            }

            public /* synthetic */ MutableRange(Object obj, int i, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
                this(obj, i, (i3 & 4) != 0 ? Integer.MIN_VALUE : i2, (i3 & 8) != 0 ? "" : str);
            }

            public static /* synthetic */ Range toRange$default(MutableRange mutableRange, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = Integer.MIN_VALUE;
                }
                return mutableRange.toRange(i);
            }

            public final Range<T> toRange(int defaultEnd) {
                int i = this.end;
                if (i != Integer.MIN_VALUE) {
                    defaultEnd = i;
                }
                if (defaultEnd == Integer.MIN_VALUE) {
                    throw new IllegalStateException("Item.end should be set first".toString());
                }
                return new Range<>(this.item, this.start, defaultEnd, this.tag);
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String text) {
            this(0, 1, null);
            Intrinsics.checkNotNullParameter(text, "text");
            append(text);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(AnnotatedString text) {
            this(0, 1, null);
            Intrinsics.checkNotNullParameter(text, "text");
            append(text);
        }

        public final int getLength() {
            return this.text.length();
        }

        public final void append(String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.text.append(text);
        }

        @Override // java.lang.Appendable
        public Builder append(CharSequence text) {
            if (text instanceof AnnotatedString) {
                append((AnnotatedString) text);
            } else {
                this.text.append(text);
            }
            return this;
        }

        @Override // java.lang.Appendable
        public Builder append(CharSequence text, int start, int end) {
            if (text instanceof AnnotatedString) {
                append((AnnotatedString) text, start, end);
            } else {
                this.text.append(text, start, end);
            }
            return this;
        }

        @Override // java.lang.Appendable
        public Builder append(char r2) {
            this.text.append(r2);
            return this;
        }

        public final void append(AnnotatedString text) {
            Intrinsics.checkNotNullParameter(text, "text");
            int length = this.text.length();
            this.text.append(text.getText());
            List<Range<SpanStyle>> spanStylesOrNull$ui_text_release = text.getSpanStylesOrNull$ui_text_release();
            if (spanStylesOrNull$ui_text_release != null) {
                int size = spanStylesOrNull$ui_text_release.size();
                for (int i = 0; i < size; i++) {
                    Range<SpanStyle> range = spanStylesOrNull$ui_text_release.get(i);
                    addStyle(range.getItem(), range.getStart() + length, range.getEnd() + length);
                }
            }
            List<Range<ParagraphStyle>> paragraphStylesOrNull$ui_text_release = text.getParagraphStylesOrNull$ui_text_release();
            if (paragraphStylesOrNull$ui_text_release != null) {
                int size2 = paragraphStylesOrNull$ui_text_release.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Range<ParagraphStyle> range2 = paragraphStylesOrNull$ui_text_release.get(i2);
                    addStyle(range2.getItem(), range2.getStart() + length, range2.getEnd() + length);
                }
            }
            List<Range<? extends Object>> annotations$ui_text_release = text.getAnnotations$ui_text_release();
            if (annotations$ui_text_release != null) {
                int size3 = annotations$ui_text_release.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    Range<? extends Object> range3 = annotations$ui_text_release.get(i3);
                    this.annotations.add(new MutableRange<>(range3.getItem(), range3.getStart() + length, range3.getEnd() + length, range3.getTag()));
                }
            }
        }

        public final void append(AnnotatedString text, int start, int end) {
            Intrinsics.checkNotNullParameter(text, "text");
            int length = this.text.length();
            this.text.append((CharSequence) text.getText(), start, end);
            List access$getLocalSpanStyles = AnnotatedStringKt.access$getLocalSpanStyles(text, start, end);
            if (access$getLocalSpanStyles != null) {
                int size = access$getLocalSpanStyles.size();
                for (int i = 0; i < size; i++) {
                    Range range = (Range) access$getLocalSpanStyles.get(i);
                    addStyle((SpanStyle) range.getItem(), range.getStart() + length, range.getEnd() + length);
                }
            }
            List access$getLocalParagraphStyles = AnnotatedStringKt.access$getLocalParagraphStyles(text, start, end);
            if (access$getLocalParagraphStyles != null) {
                int size2 = access$getLocalParagraphStyles.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Range range2 = (Range) access$getLocalParagraphStyles.get(i2);
                    addStyle((ParagraphStyle) range2.getItem(), range2.getStart() + length, range2.getEnd() + length);
                }
            }
            List access$getLocalAnnotations = AnnotatedStringKt.access$getLocalAnnotations(text, start, end);
            if (access$getLocalAnnotations != null) {
                int size3 = access$getLocalAnnotations.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    Range range3 = (Range) access$getLocalAnnotations.get(i3);
                    this.annotations.add(new MutableRange<>(range3.getItem(), range3.getStart() + length, range3.getEnd() + length, range3.getTag()));
                }
            }
        }

        public final void addStyle(SpanStyle style, int start, int end) {
            Intrinsics.checkNotNullParameter(style, "style");
            this.spanStyles.add(new MutableRange<>(style, start, end, null, 8, null));
        }

        public final void addStyle(ParagraphStyle style, int start, int end) {
            Intrinsics.checkNotNullParameter(style, "style");
            this.paragraphStyles.add(new MutableRange<>(style, start, end, null, 8, null));
        }

        public final void addStringAnnotation(String tag, String annotation, int start, int end) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(annotation, "annotation");
            this.annotations.add(new MutableRange<>(annotation, start, end, tag));
        }

        public final void addTtsAnnotation(TtsAnnotation ttsAnnotation, int start, int end) {
            Intrinsics.checkNotNullParameter(ttsAnnotation, "ttsAnnotation");
            this.annotations.add(new MutableRange<>(ttsAnnotation, start, end, null, 8, null));
        }

        public final void addUrlAnnotation(UrlAnnotation urlAnnotation, int start, int end) {
            Intrinsics.checkNotNullParameter(urlAnnotation, "urlAnnotation");
            this.annotations.add(new MutableRange<>(urlAnnotation, start, end, null, 8, null));
        }

        public final int pushStyle(SpanStyle style) {
            Intrinsics.checkNotNullParameter(style, "style");
            MutableRange<SpanStyle> mutableRange = new MutableRange<>(style, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.spanStyles.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushStyle(ParagraphStyle style) {
            Intrinsics.checkNotNullParameter(style, "style");
            MutableRange<ParagraphStyle> mutableRange = new MutableRange<>(style, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.paragraphStyles.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushStringAnnotation(String tag, String annotation) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(annotation, "annotation");
            MutableRange<? extends Object> mutableRange = new MutableRange<>(annotation, this.text.length(), 0, tag, 4, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushTtsAnnotation(TtsAnnotation ttsAnnotation) {
            Intrinsics.checkNotNullParameter(ttsAnnotation, "ttsAnnotation");
            MutableRange<? extends Object> mutableRange = new MutableRange<>(ttsAnnotation, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final int pushUrlAnnotation(UrlAnnotation urlAnnotation) {
            Intrinsics.checkNotNullParameter(urlAnnotation, "urlAnnotation");
            MutableRange<? extends Object> mutableRange = new MutableRange<>(urlAnnotation, this.text.length(), 0, null, 12, null);
            this.styleStack.add(mutableRange);
            this.annotations.add(mutableRange);
            return this.styleStack.size() - 1;
        }

        public final void pop() {
            if (!(!this.styleStack.isEmpty())) {
                throw new IllegalStateException("Nothing to pop.".toString());
            }
            this.styleStack.remove(r0.size() - 1).setEnd(this.text.length());
        }

        public final void pop(int index) {
            if (index >= this.styleStack.size()) {
                throw new IllegalStateException((index + " should be less than " + this.styleStack.size()).toString());
            }
            while (this.styleStack.size() - 1 >= index) {
                pop();
            }
        }

        public final AnnotatedString toAnnotatedString() {
            String sb = this.text.toString();
            Intrinsics.checkNotNullExpressionValue(sb, "text.toString()");
            List<MutableRange<SpanStyle>> list = this.spanStyles;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(list.get(i).toRange(this.text.length()));
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList2.isEmpty()) {
                arrayList2 = null;
            }
            ArrayList arrayList3 = arrayList2;
            List<MutableRange<ParagraphStyle>> list2 = this.paragraphStyles;
            ArrayList arrayList4 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                arrayList4.add(list2.get(i2).toRange(this.text.length()));
            }
            ArrayList arrayList5 = arrayList4;
            if (arrayList5.isEmpty()) {
                arrayList5 = null;
            }
            ArrayList arrayList6 = arrayList5;
            List<MutableRange<? extends Object>> list3 = this.annotations;
            ArrayList arrayList7 = new ArrayList(list3.size());
            int size3 = list3.size();
            for (int i3 = 0; i3 < size3; i3++) {
                arrayList7.add(list3.get(i3).toRange(this.text.length()));
            }
            ArrayList arrayList8 = arrayList7;
            return new AnnotatedString(sb, arrayList3, arrayList6, arrayList8.isEmpty() ? null : arrayList8);
        }
    }

    public final List<Range<String>> getStringAnnotations(String tag, int start, int end) {
        ArrayList emptyList;
        Intrinsics.checkNotNullParameter(tag, "tag");
        List<Range<? extends Object>> list = this.annotations;
        if (list == null) {
            emptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Range<? extends Object> range = list.get(i);
                Range<? extends Object> range2 = range;
                if ((range2.getItem() instanceof String) && Intrinsics.areEqual(tag, range2.getTag()) && AnnotatedStringKt.intersect(start, end, range2.getStart(), range2.getEnd())) {
                    arrayList.add(range);
                }
            }
            emptyList = arrayList;
        }
        Intrinsics.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<kotlin.String>>");
        return emptyList;
    }

    public final boolean hasStringAnnotations(String tag, int start, int end) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        List<Range<? extends Object>> list = this.annotations;
        if (list == null) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Range<? extends Object> range = list.get(i);
            if ((range.getItem() instanceof String) && Intrinsics.areEqual(tag, range.getTag()) && AnnotatedStringKt.intersect(start, end, range.getStart(), range.getEnd())) {
                return true;
            }
        }
        return false;
    }

    public final List<Range<String>> getStringAnnotations(int start, int end) {
        ArrayList emptyList;
        List<Range<? extends Object>> list = this.annotations;
        if (list == null) {
            emptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Range<? extends Object> range = list.get(i);
                Range<? extends Object> range2 = range;
                if ((range2.getItem() instanceof String) && AnnotatedStringKt.intersect(start, end, range2.getStart(), range2.getEnd())) {
                    arrayList.add(range);
                }
            }
            emptyList = arrayList;
        }
        Intrinsics.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<kotlin.String>>");
        return emptyList;
    }

    public final List<Range<TtsAnnotation>> getTtsAnnotations(int start, int end) {
        ArrayList emptyList;
        List<Range<? extends Object>> list = this.annotations;
        if (list == null) {
            emptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Range<? extends Object> range = list.get(i);
                Range<? extends Object> range2 = range;
                if ((range2.getItem() instanceof TtsAnnotation) && AnnotatedStringKt.intersect(start, end, range2.getStart(), range2.getEnd())) {
                    arrayList.add(range);
                }
            }
            emptyList = arrayList;
        }
        Intrinsics.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.TtsAnnotation>>");
        return emptyList;
    }

    public final List<Range<UrlAnnotation>> getUrlAnnotations(int start, int end) {
        ArrayList emptyList;
        List<Range<? extends Object>> list = this.annotations;
        if (list == null) {
            emptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Range<? extends Object> range = list.get(i);
                Range<? extends Object> range2 = range;
                if ((range2.getItem() instanceof UrlAnnotation) && AnnotatedStringKt.intersect(start, end, range2.getStart(), range2.getEnd())) {
                    arrayList.add(range);
                }
            }
            emptyList = arrayList;
        }
        Intrinsics.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.UrlAnnotation>>");
        return emptyList;
    }
}
