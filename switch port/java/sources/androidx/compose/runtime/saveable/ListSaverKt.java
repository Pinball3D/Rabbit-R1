package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: ListSaver.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a}\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u000422\u0010\u0005\u001a.\u0012\u0004\u0012\u00020\u0007\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u000b0\u0006¢\u0006\u0002\b\f2)\u0010\r\u001a%\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00040\u000b¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u000f\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u000e¨\u0006\u0010"}, d2 = {"listSaver", "Landroidx/compose/runtime/saveable/Saver;", "Original", "", "Saveable", "save", "Lkotlin/Function2;", "Landroidx/compose/runtime/saveable/SaverScope;", "Lkotlin/ParameterName;", "name", "value", "", "Lkotlin/ExtensionFunctionType;", "restore", "Lkotlin/Function1;", "list", "runtime-saveable_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ListSaverKt {
    public static final <Original, Saveable> Saver<Original, Object> listSaver(final Function2<? super SaverScope, ? super Original, ? extends List<? extends Saveable>> save, Function1<? super List<? extends Saveable>, ? extends Original> restore) {
        Intrinsics.checkNotNullParameter(save, "save");
        Intrinsics.checkNotNullParameter(restore, "restore");
        return SaverKt.Saver(new Function2<SaverScope, Original, Object>() { // from class: androidx.compose.runtime.saveable.ListSaverKt$listSaver$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Object obj) {
                return invoke2(saverScope, (SaverScope) obj);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(SaverScope Saver, Original original) {
                Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                List list = (List) save.invoke(Saver, original);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Object obj = list.get(i);
                    if (obj != null && !Saver.canBeSaved(obj)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                List list2 = list;
                if (!list2.isEmpty()) {
                    return new ArrayList(list2);
                }
                return null;
            }
        }, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(restore, 1));
    }
}
