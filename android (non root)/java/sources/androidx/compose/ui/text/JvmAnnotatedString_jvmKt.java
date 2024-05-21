package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: JvmAnnotatedString.jvm.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a*\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0018\u00010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u001a,\u0010\b\u001a\u00020\t*\u00020\t2\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\nH\u0000¨\u0006\f"}, d2 = {"collectRangeTransitions", "", "ranges", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "target", "Ljava/util/SortedSet;", "", "transform", "Landroidx/compose/ui/text/AnnotatedString;", "Lkotlin/Function3;", "", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class JvmAnnotatedString_jvmKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final AnnotatedString transform(final AnnotatedString annotatedString, final Function3<? super String, ? super Integer, ? super Integer, String> transform) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        TreeSet sortedSetOf = SetsKt.sortedSetOf(0, Integer.valueOf(annotatedString.getText().length()));
        TreeSet treeSet = sortedSetOf;
        collectRangeTransitions(annotatedString.getSpanStylesOrNull$ui_text_release(), treeSet);
        collectRangeTransitions(annotatedString.getParagraphStylesOrNull$ui_text_release(), treeSet);
        collectRangeTransitions(annotatedString.getAnnotations$ui_text_release(), treeSet);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        final Map mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(0, 0));
        CollectionsKt.windowed$default(sortedSetOf, 2, 0, false, new Function1<List<? extends Integer>, Integer>() { // from class: androidx.compose.ui.text.JvmAnnotatedString_jvmKt$transform$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            /* JADX WARN: Type inference failed for: r0v9, types: [T, java.lang.String] */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Integer invoke2(List<Integer> list) {
                Intrinsics.checkNotNullParameter(list, "<name for destructuring parameter 0>");
                int intValue = list.get(0).intValue();
                int intValue2 = list.get(1).intValue();
                objectRef.element += transform.invoke(annotatedString.getText(), Integer.valueOf(intValue), Integer.valueOf(intValue2));
                return mutableMapOf.put(Integer.valueOf(intValue2), Integer.valueOf(objectRef.element.length()));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Integer invoke(List<? extends Integer> list) {
                return invoke2((List<Integer>) list);
            }
        }, 6, null);
        List<AnnotatedString.Range<SpanStyle>> spanStylesOrNull$ui_text_release = annotatedString.getSpanStylesOrNull$ui_text_release();
        ArrayList arrayList3 = null;
        if (spanStylesOrNull$ui_text_release != null) {
            ArrayList arrayList4 = new ArrayList(spanStylesOrNull$ui_text_release.size());
            int size = spanStylesOrNull$ui_text_release.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range<SpanStyle> range = spanStylesOrNull$ui_text_release.get(i);
                SpanStyle item = range.getItem();
                Object obj = mutableMapOf.get(Integer.valueOf(range.getStart()));
                Intrinsics.checkNotNull(obj);
                int intValue = ((Number) obj).intValue();
                Object obj2 = mutableMapOf.get(Integer.valueOf(range.getEnd()));
                Intrinsics.checkNotNull(obj2);
                arrayList4.add(new AnnotatedString.Range(item, intValue, ((Number) obj2).intValue()));
            }
            arrayList = arrayList4;
        } else {
            arrayList = null;
        }
        List<AnnotatedString.Range<ParagraphStyle>> paragraphStylesOrNull$ui_text_release = annotatedString.getParagraphStylesOrNull$ui_text_release();
        if (paragraphStylesOrNull$ui_text_release != null) {
            ArrayList arrayList5 = new ArrayList(paragraphStylesOrNull$ui_text_release.size());
            int size2 = paragraphStylesOrNull$ui_text_release.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AnnotatedString.Range<ParagraphStyle> range2 = paragraphStylesOrNull$ui_text_release.get(i2);
                ParagraphStyle item2 = range2.getItem();
                Object obj3 = mutableMapOf.get(Integer.valueOf(range2.getStart()));
                Intrinsics.checkNotNull(obj3);
                int intValue2 = ((Number) obj3).intValue();
                Object obj4 = mutableMapOf.get(Integer.valueOf(range2.getEnd()));
                Intrinsics.checkNotNull(obj4);
                arrayList5.add(new AnnotatedString.Range(item2, intValue2, ((Number) obj4).intValue()));
            }
            arrayList2 = arrayList5;
        } else {
            arrayList2 = null;
        }
        List<AnnotatedString.Range<? extends Object>> annotations$ui_text_release = annotatedString.getAnnotations$ui_text_release();
        if (annotations$ui_text_release != null) {
            ArrayList arrayList6 = new ArrayList(annotations$ui_text_release.size());
            int size3 = annotations$ui_text_release.size();
            for (int i3 = 0; i3 < size3; i3++) {
                AnnotatedString.Range<? extends Object> range3 = annotations$ui_text_release.get(i3);
                Object item3 = range3.getItem();
                Object obj5 = mutableMapOf.get(Integer.valueOf(range3.getStart()));
                Intrinsics.checkNotNull(obj5);
                int intValue3 = ((Number) obj5).intValue();
                Object obj6 = mutableMapOf.get(Integer.valueOf(range3.getEnd()));
                Intrinsics.checkNotNull(obj6);
                arrayList6.add(new AnnotatedString.Range(item3, intValue3, ((Number) obj6).intValue()));
            }
            arrayList3 = arrayList6;
        }
        return new AnnotatedString((String) objectRef.element, arrayList, arrayList2, arrayList3);
    }

    private static final void collectRangeTransitions(List<? extends AnnotatedString.Range<?>> list, SortedSet<Integer> sortedSet) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range<?> range = list.get(i);
                sortedSet.add(Integer.valueOf(range.getStart()));
                sortedSet.add(Integer.valueOf(range.getEnd()));
            }
        }
    }
}
