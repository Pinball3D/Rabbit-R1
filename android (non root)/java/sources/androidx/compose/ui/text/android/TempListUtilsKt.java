package androidx.compose.ui.text.android;

import androidx.exifinterface.media.ExifInterface;
import defpackage.DeviceControl$Companion$$ExternalSyntheticLambda4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TempListUtils.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u001a;\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0005H\u0080\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001\u001a`\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\b\"\u0010\b\u0002\u0010\u0007*\n\u0012\u0006\b\u0000\u0012\u0002H\b0\t*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\n\u001a\u0002H\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\b0\u0005H\u0080\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0002\u0010\f\u001aM\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\b0\u0003\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\b*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\b0\u000eH\u0080\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"fastForEach", "", ExifInterface.GPS_DIRECTION_TRUE, "", "action", "Lkotlin/Function1;", "fastMapTo", "C", "R", "", "destination", "transform", "(Ljava/util/List;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;", "fastZipWithNext", "Lkotlin/Function2;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TempListUtilsKt {
    public static final <T> void fastForEach(List<? extends T> list, Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = list.size();
        for (int i = 0; i < size; i++) {
            action.invoke(list.get(i));
        }
    }

    public static final <T, R> List<R> fastZipWithNext(List<? extends T> list, Function2<? super T, ? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (list.size() == 0 || list.size() == 1) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        DeviceControl$Companion$$ExternalSyntheticLambda4 deviceControl$Companion$$ExternalSyntheticLambda4 = list.get(0);
        int lastIndex = CollectionsKt.getLastIndex(list);
        while (i < lastIndex) {
            i++;
            T t = list.get(i);
            arrayList.add(transform.invoke(deviceControl$Companion$$ExternalSyntheticLambda4, t));
            deviceControl$Companion$$ExternalSyntheticLambda4 = t;
        }
        return arrayList;
    }

    public static final <T, R, C extends Collection<? super R>> C fastMapTo(List<? extends T> list, C destination, Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(transform, "transform");
        int size = list.size();
        for (int i = 0; i < size; i++) {
            destination.add(transform.invoke(list.get(i)));
        }
        return destination;
    }
}
