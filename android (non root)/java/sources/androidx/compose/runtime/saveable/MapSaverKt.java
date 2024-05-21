package androidx.compose.runtime.saveable;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MapSaver.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001ax\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u00022:\u0010\u0004\u001a6\u0012\u0004\u0012\u00020\u0006\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n0\u0005¢\u0006\u0002\b\f2\"\u0010\r\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u000e¨\u0006\u000f"}, d2 = {"mapSaver", "Landroidx/compose/runtime/saveable/Saver;", ExifInterface.GPS_DIRECTION_TRUE, "", "save", "Lkotlin/Function2;", "Landroidx/compose/runtime/saveable/SaverScope;", "Lkotlin/ParameterName;", "name", "value", "", "", "Lkotlin/ExtensionFunctionType;", "restore", "Lkotlin/Function1;", "runtime-saveable_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MapSaverKt {
    public static final <T> Saver<T, Object> mapSaver(final Function2<? super SaverScope, ? super T, ? extends Map<String, ? extends Object>> save, final Function1<? super Map<String, ? extends Object>, ? extends T> restore) {
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(restore, "restore");
        return ListSaverKt.listSaver(new Function2<SaverScope, T, List<? extends Object>>() { // from class: androidx.compose.runtime.saveable.MapSaverKt$mapSaver$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ List<? extends Object> invoke(SaverScope saverScope, Object obj) {
                return invoke2(saverScope, (SaverScope) obj);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final List<Object> invoke2(SaverScope listSaver, T t) {
                Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, Object> entry : save.invoke(listSaver, t).entrySet()) {
                    arrayList.add(entry.getKey());
                    arrayList.add(entry.getValue());
                }
                return arrayList;
            }
        }, new Function1<List<? extends Object>, T>() { // from class: androidx.compose.runtime.saveable.MapSaverKt$mapSaver$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final T invoke(List<? extends Object> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (list.size() % 2 != 0) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                for (int i = 0; i < list.size(); i += 2) {
                    Object obj = list.get(i);
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    linkedHashMap.put((String) obj, list.get(i + 1));
                }
                return restore.invoke(linkedHashMap);
            }
        });
    }
}
