package androidx.compose.ui.autofill;

import io.sentry.protocol.ViewHierarchyNode;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AutofillTree.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001d\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0011\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/autofill/AutofillTree;", "", "()V", ViewHierarchyNode.JsonKeys.CHILDREN, "", "", "Landroidx/compose/ui/autofill/AutofillNode;", "getChildren", "()Ljava/util/Map;", "performAutofill", "", "id", "value", "", "(ILjava/lang/String;)Lkotlin/Unit;", "plusAssign", "autofillNode", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AutofillTree {
    public static final int $stable = 8;
    private final Map<Integer, AutofillNode> children = new LinkedHashMap();

    public final Map<Integer, AutofillNode> getChildren() {
        return this.children;
    }

    public final void plusAssign(AutofillNode autofillNode) {
        Intrinsics.checkNotNullParameter(autofillNode, "autofillNode");
        this.children.put(Integer.valueOf(autofillNode.getId()), autofillNode);
    }

    public final Unit performAutofill(int id, String value) {
        Function1<String, Unit> onFill;
        Intrinsics.checkNotNullParameter(value, "value");
        AutofillNode autofillNode = this.children.get(Integer.valueOf(id));
        if (autofillNode == null || (onFill = autofillNode.getOnFill()) == null) {
            return null;
        }
        onFill.invoke(value);
        return Unit.INSTANCE;
    }
}
