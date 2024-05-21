package androidx.room;

import androidx.exifinterface.media.ExifInterface;
import androidx.room.AmbiguousColumnResolver;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;

/* compiled from: AmbiguousColumnResolver.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0003\u001b\u001c\u001dB\u0007\b\u0002¢\u0006\u0002\u0010\u0002JV\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u00070\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u0007\u0012\u0004\u0012\u00020\u00040\rH\u0002JO\u0010\u000e\u001a\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112$\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u0007\u0012\u0004\u0012\u00020\u00040\u0014H\u0002¢\u0006\u0002\u0010\u0015J5\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0012\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u0011H\u0007¢\u0006\u0002\u0010\u001a¨\u0006\u001e"}, d2 = {"Landroidx/room/AmbiguousColumnResolver;", "", "()V", "dfs", "", ExifInterface.GPS_DIRECTION_TRUE, "content", "", SentryThread.JsonKeys.CURRENT, "", "depth", "", "block", "Lkotlin/Function1;", "rabinKarpSearch", "Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "pattern", "", "", "onHashMatch", "Lkotlin/Function3;", "(Ljava/util/List;[Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V", "resolve", "", "resultColumns", "mappings", "([Ljava/lang/String;[[Ljava/lang/String;)[[I", "Match", "ResultColumn", "Solution", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class AmbiguousColumnResolver {
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    private AmbiguousColumnResolver() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    @JvmStatic
    public static final int[][] resolve(String[] resultColumns, String[][] mappings) {
        Intrinsics.checkNotNullParameter(resultColumns, "resultColumns");
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        int length = resultColumns.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            String str = resultColumns[i2];
            if (str.charAt(0) == '`' && str.charAt(str.length() - 1) == '`') {
                str = str.substring(1, str.length() - 1);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            resultColumns[i2] = lowerCase;
        }
        String[][] strArr = mappings;
        int length2 = strArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            int length3 = mappings[i3].length;
            for (int i4 = 0; i4 < length3; i4++) {
                String[] strArr2 = mappings[i3];
                String str2 = strArr2[i4];
                Locale US2 = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US2, "US");
                String lowerCase2 = str2.toLowerCase(US2);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                strArr2[i4] = lowerCase2;
            }
        }
        Set createSetBuilder = SetsKt.createSetBuilder();
        for (String[] strArr3 : strArr) {
            CollectionsKt.addAll(createSetBuilder, strArr3);
        }
        Set build = SetsKt.build(createSetBuilder);
        List createListBuilder = CollectionsKt.createListBuilder();
        int length4 = resultColumns.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length4) {
            String str3 = resultColumns[i5];
            int i7 = i6 + 1;
            if (build.contains(str3)) {
                createListBuilder.add(new ResultColumn(str3, i6));
            }
            i5++;
            i6 = i7;
        }
        List<ResultColumn> build2 = CollectionsKt.build(createListBuilder);
        int length5 = strArr.length;
        ArrayList arrayList = new ArrayList(length5);
        for (int i8 = 0; i8 < length5; i8++) {
            arrayList.add(new ArrayList());
        }
        final ArrayList arrayList2 = arrayList;
        int length6 = strArr.length;
        int i9 = 0;
        final int i10 = 0;
        while (i9 < length6) {
            int i11 = i10 + 1;
            final String[] strArr4 = strArr[i9];
            INSTANCE.rabinKarpSearch(build2, strArr4, new Function3<Integer, Integer, List<? extends ResultColumn>, Unit>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, List<? extends AmbiguousColumnResolver.ResultColumn> list) {
                    invoke(num.intValue(), num2.intValue(), (List<AmbiguousColumnResolver.ResultColumn>) list);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i12, int i13, List<AmbiguousColumnResolver.ResultColumn> resultColumnsSublist) {
                    Object obj;
                    Intrinsics.checkNotNullParameter(resultColumnsSublist, "resultColumnsSublist");
                    String[] strArr5 = strArr4;
                    ArrayList arrayList3 = new ArrayList(strArr5.length);
                    for (String str4 : strArr5) {
                        Iterator<T> it = resultColumnsSublist.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                obj = it.next();
                                if (Intrinsics.areEqual(str4, ((AmbiguousColumnResolver.ResultColumn) obj).getName())) {
                                    break;
                                }
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        AmbiguousColumnResolver.ResultColumn resultColumn = (AmbiguousColumnResolver.ResultColumn) obj;
                        if (resultColumn == null) {
                            return;
                        }
                        arrayList3.add(Integer.valueOf(resultColumn.getIndex()));
                    }
                    arrayList2.get(i10).add(new AmbiguousColumnResolver.Match(new IntRange(i12, i13 - 1), arrayList3));
                }
            });
            if (((List) arrayList2.get(i10)).isEmpty()) {
                ArrayList arrayList3 = new ArrayList(strArr4.length);
                int length7 = strArr4.length;
                for (int i12 = i; i12 < length7; i12++) {
                    String str4 = strArr4[i12];
                    List createListBuilder2 = CollectionsKt.createListBuilder();
                    for (ResultColumn resultColumn : build2) {
                        if (Intrinsics.areEqual(str4, resultColumn.getName())) {
                            createListBuilder2.add(Integer.valueOf(resultColumn.getIndex()));
                        }
                    }
                    List build3 = CollectionsKt.build(createListBuilder2);
                    if (!(!build3.isEmpty())) {
                        throw new IllegalStateException(("Column " + str4 + " not found in result").toString());
                    }
                    arrayList3.add(build3);
                }
                dfs$default(INSTANCE, arrayList3, null, 0, new Function1<List<? extends Integer>, Unit>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$1$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(List<? extends Integer> list) {
                        invoke2((List<Integer>) list);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(List<Integer> indices) {
                        Intrinsics.checkNotNullParameter(indices, "indices");
                        List<Integer> list = indices;
                        Iterator<T> it = list.iterator();
                        if (!it.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        int intValue = ((Number) it.next()).intValue();
                        while (it.hasNext()) {
                            int intValue2 = ((Number) it.next()).intValue();
                            if (intValue > intValue2) {
                                intValue = intValue2;
                            }
                        }
                        Iterator<T> it2 = list.iterator();
                        if (!it2.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        int intValue3 = ((Number) it2.next()).intValue();
                        while (it2.hasNext()) {
                            int intValue4 = ((Number) it2.next()).intValue();
                            if (intValue3 < intValue4) {
                                intValue3 = intValue4;
                            }
                        }
                        arrayList2.get(i10).add(new AmbiguousColumnResolver.Match(new IntRange(intValue, intValue3), indices));
                    }
                }, 6, null);
            }
            i9++;
            i10 = i11;
            i = 0;
        }
        ArrayList arrayList4 = arrayList2;
        if (!(arrayList4 instanceof Collection) || !arrayList4.isEmpty()) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                if (!(!((List) it.next()).isEmpty())) {
                    throw new IllegalStateException("Failed to find matches for all mappings".toString());
                }
            }
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = Solution.INSTANCE.getNO_SOLUTION();
        dfs$default(INSTANCE, arrayList2, null, 0, new Function1<List<? extends Match>, Unit>() { // from class: androidx.room.AmbiguousColumnResolver$resolve$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends AmbiguousColumnResolver.Match> list) {
                invoke2((List<AmbiguousColumnResolver.Match>) list);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<AmbiguousColumnResolver.Match> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ?? build4 = AmbiguousColumnResolver.Solution.INSTANCE.build(it2);
                if (build4.compareTo(objectRef.element) < 0) {
                    objectRef.element = build4;
                }
            }
        }, 6, null);
        List<Match> matches = ((Solution) objectRef.element).getMatches();
        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(matches, 10));
        Iterator<T> it2 = matches.iterator();
        while (it2.hasNext()) {
            arrayList5.add(CollectionsKt.toIntArray(((Match) it2.next()).getResultIndices()));
        }
        Object[] array = arrayList5.toArray(new int[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (int[][]) array;
    }

    private final void rabinKarpSearch(List<ResultColumn> content, String[] pattern, Function3<? super Integer, ? super Integer, ? super List<ResultColumn>, Unit> onHashMatch) {
        int i = 0;
        int i2 = 0;
        for (String str : pattern) {
            i2 += str.hashCode();
        }
        int length = pattern.length;
        Iterator<T> it = content.subList(0, length).iterator();
        int i3 = 0;
        while (it.hasNext()) {
            i3 += ((ResultColumn) it.next()).getName().hashCode();
        }
        while (true) {
            if (i2 == i3) {
                onHashMatch.invoke(Integer.valueOf(i), Integer.valueOf(length), content.subList(i, length));
            }
            int i4 = i + 1;
            int i5 = length + 1;
            if (i5 > content.size()) {
                return;
            }
            i3 = (i3 - content.get(i).getName().hashCode()) + content.get(length).getName().hashCode();
            i = i4;
            length = i5;
        }
    }

    static /* synthetic */ void dfs$default(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        ambiguousColumnResolver.dfs(list, list2, i, function1);
    }

    private final <T> void dfs(List<? extends List<? extends T>> content, List<T> current, int depth, Function1<? super List<? extends T>, Unit> block) {
        if (depth == content.size()) {
            block.invoke(CollectionsKt.toList(current));
            return;
        }
        Iterator<T> it = content.get(depth).iterator();
        while (it.hasNext()) {
            current.add(it.next());
            INSTANCE.dfs(content, current, depth + 1, block);
            CollectionsKt.removeLast(current);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AmbiguousColumnResolver.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "", "name", "", "index", "", "(Ljava/lang/String;I)V", "getIndex", "()I", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final /* data */ class ResultColumn {
        private final int index;
        private final String name;

        public static /* synthetic */ ResultColumn copy$default(ResultColumn resultColumn, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = resultColumn.name;
            }
            if ((i2 & 2) != 0) {
                i = resultColumn.index;
            }
            return resultColumn.copy(str, i);
        }

        /* renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* renamed from: component2, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        public final ResultColumn copy(String name, int index) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new ResultColumn(name, index);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) other;
            return Intrinsics.areEqual(this.name, resultColumn.name) && this.index == resultColumn.index;
        }

        public final int getIndex() {
            return this.index;
        }

        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Integer.hashCode(this.index);
        }

        public String toString() {
            return "ResultColumn(name=" + this.name + ", index=" + this.index + ')';
        }

        public ResultColumn(String name, int i) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.index = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AmbiguousColumnResolver.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Match;", "", "resultRange", "Lkotlin/ranges/IntRange;", "resultIndices", "", "", "(Lkotlin/ranges/IntRange;Ljava/util/List;)V", "getResultIndices", "()Ljava/util/List;", "getResultRange", "()Lkotlin/ranges/IntRange;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Match {
        private final List<Integer> resultIndices;
        private final IntRange resultRange;

        public final List<Integer> getResultIndices() {
            return this.resultIndices;
        }

        public final IntRange getResultRange() {
            return this.resultRange;
        }

        public Match(IntRange resultRange, List<Integer> resultIndices) {
            Intrinsics.checkNotNullParameter(resultRange, "resultRange");
            Intrinsics.checkNotNullParameter(resultIndices, "resultIndices");
            this.resultRange = resultRange;
            this.resultIndices = resultIndices;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AmbiguousColumnResolver.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0011\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0011"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution;", "", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "coverageOffset", "", "overlaps", "(Ljava/util/List;II)V", "getCoverageOffset", "()I", "getMatches", "()Ljava/util/List;", "getOverlaps", "compareTo", "other", "Companion", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Solution implements Comparable<Solution> {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Solution NO_SOLUTION = new Solution(CollectionsKt.emptyList(), Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;
        private final List<Match> matches;
        private final int overlaps;

        public final int getCoverageOffset() {
            return this.coverageOffset;
        }

        public final List<Match> getMatches() {
            return this.matches;
        }

        public final int getOverlaps() {
            return this.overlaps;
        }

        public Solution(List<Match> matches, int i, int i2) {
            Intrinsics.checkNotNullParameter(matches, "matches");
            this.matches = matches;
            this.coverageOffset = i;
            this.overlaps = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(Solution other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int compare = Intrinsics.compare(this.overlaps, other.overlaps);
            return compare != 0 ? compare : Intrinsics.compare(this.coverageOffset, other.coverageOffset);
        }

        /* compiled from: AmbiguousColumnResolver.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution$Companion;", "", "()V", "NO_SOLUTION", "Landroidx/room/AmbiguousColumnResolver$Solution;", "getNO_SOLUTION", "()Landroidx/room/AmbiguousColumnResolver$Solution;", OperatingSystem.JsonKeys.BUILD, "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Solution getNO_SOLUTION() {
                return Solution.NO_SOLUTION;
            }

            public final Solution build(List<Match> matches) {
                Intrinsics.checkNotNullParameter(matches, "matches");
                List<Match> list = matches;
                int i = 0;
                int i2 = 0;
                for (Match match : list) {
                    i2 += ((match.getResultRange().getLast() - match.getResultRange().getFirst()) + 1) - match.getResultIndices().size();
                }
                Iterator<T> it = list.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                int first = ((Match) it.next()).getResultRange().getFirst();
                while (it.hasNext()) {
                    int first2 = ((Match) it.next()).getResultRange().getFirst();
                    if (first > first2) {
                        first = first2;
                    }
                }
                Iterator<T> it2 = list.iterator();
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
                int last = ((Match) it2.next()).getResultRange().getLast();
                while (it2.hasNext()) {
                    int last2 = ((Match) it2.next()).getResultRange().getLast();
                    if (last < last2) {
                        last = last2;
                    }
                }
                Iterable intRange = new IntRange(first, last);
                if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                    Iterator it3 = intRange.iterator();
                    int i3 = 0;
                    while (it3.hasNext()) {
                        int nextInt = ((IntIterator) it3).nextInt();
                        Iterator<T> it4 = list.iterator();
                        int i4 = 0;
                        while (true) {
                            if (!it4.hasNext()) {
                                break;
                            }
                            if (((Match) it4.next()).getResultRange().contains(nextInt)) {
                                i4++;
                            }
                            if (i4 > 1) {
                                i3++;
                                if (i3 < 0) {
                                    CollectionsKt.throwCountOverflow();
                                }
                            }
                        }
                    }
                    i = i3;
                }
                return new Solution(matches, i2, i);
            }
        }
    }
}
