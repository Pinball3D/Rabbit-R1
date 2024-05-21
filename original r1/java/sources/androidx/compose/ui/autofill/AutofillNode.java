package androidx.compose.ui.autofill;

import androidx.compose.ui.geometry.Rect;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Autofill.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB7\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b¢\u0006\u0002\u0010\u000bJ\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001b\u001a\u00020\u0013H\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/autofill/AutofillNode;", "", "autofillTypes", "", "Landroidx/compose/ui/autofill/AutofillType;", "boundingBox", "Landroidx/compose/ui/geometry/Rect;", "onFill", "Lkotlin/Function1;", "", "", "(Ljava/util/List;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)V", "getAutofillTypes", "()Ljava/util/List;", "getBoundingBox", "()Landroidx/compose/ui/geometry/Rect;", "setBoundingBox", "(Landroidx/compose/ui/geometry/Rect;)V", "id", "", "getId", "()I", "getOnFill", "()Lkotlin/jvm/functions/Function1;", "equals", "", "other", "hashCode", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AutofillNode {
    private static int previousId;
    private final List<AutofillType> autofillTypes;
    private Rect boundingBox;
    private final int id;
    private final Function1<String, Unit> onFill;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public final List<AutofillType> getAutofillTypes() {
        return this.autofillTypes;
    }

    public final Rect getBoundingBox() {
        return this.boundingBox;
    }

    public final int getId() {
        return this.id;
    }

    public final Function1<String, Unit> getOnFill() {
        return this.onFill;
    }

    public final void setBoundingBox(Rect rect) {
        this.boundingBox = rect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AutofillNode(List<? extends AutofillType> autofillTypes, Rect rect, Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(autofillTypes, "autofillTypes");
        this.autofillTypes = autofillTypes;
        this.boundingBox = rect;
        this.onFill = function1;
        this.id = INSTANCE.generateId();
    }

    public /* synthetic */ AutofillNode(List list, Rect rect, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : rect, function1);
    }

    /* compiled from: Autofill.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/autofill/AutofillNode$Companion;", "", "()V", "previousId", "", "generateId", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int generateId() {
            int i;
            synchronized (this) {
                Companion companion = AutofillNode.INSTANCE;
                AutofillNode.previousId++;
                i = AutofillNode.previousId;
            }
            return i;
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AutofillNode)) {
            return false;
        }
        AutofillNode autofillNode = (AutofillNode) other;
        return Intrinsics.areEqual(this.autofillTypes, autofillNode.autofillTypes) && Intrinsics.areEqual(this.boundingBox, autofillNode.boundingBox) && Intrinsics.areEqual(this.onFill, autofillNode.onFill);
    }

    public int hashCode() {
        int hashCode = this.autofillTypes.hashCode() * 31;
        Rect rect = this.boundingBox;
        int hashCode2 = (hashCode + (rect != null ? rect.hashCode() : 0)) * 31;
        Function1<String, Unit> function1 = this.onFill;
        return hashCode2 + (function1 != null ? function1.hashCode() : 0);
    }
}
