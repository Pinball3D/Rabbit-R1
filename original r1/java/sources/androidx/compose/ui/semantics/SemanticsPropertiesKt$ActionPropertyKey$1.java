package androidx.compose.ui.semantics;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SemanticsProperties.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Landroidx/compose/ui/semantics/AccessibilityAction;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function;", "", "parentValue", "childValue", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SemanticsPropertiesKt$ActionPropertyKey$1<T> extends Lambda implements Function2<AccessibilityAction<T>, AccessibilityAction<T>, AccessibilityAction<T>> {
    public static final SemanticsPropertiesKt$ActionPropertyKey$1 INSTANCE = new SemanticsPropertiesKt$ActionPropertyKey$1();

    public SemanticsPropertiesKt$ActionPropertyKey$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final AccessibilityAction<T> invoke(AccessibilityAction<T> accessibilityAction, AccessibilityAction<T> childValue) {
        String label;
        T action;
        Intrinsics.checkNotNullParameter(childValue, "childValue");
        if (accessibilityAction == null || (label = accessibilityAction.getLabel()) == null) {
            label = childValue.getLabel();
        }
        if (accessibilityAction == null || (action = accessibilityAction.getAction()) == null) {
            action = childValue.getAction();
        }
        return new AccessibilityAction<>(label, action);
    }
}
