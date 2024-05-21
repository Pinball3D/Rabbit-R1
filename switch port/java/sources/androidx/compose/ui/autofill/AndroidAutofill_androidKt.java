package androidx.compose.ui.autofill;

import android.util.Log;
import android.util.SparseArray;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.compose.ui.geometry.Rect;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: AndroidAutofill.android.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0001\u001a\u0014\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0001¨\u0006\t"}, d2 = {"performAutofill", "", "Landroidx/compose/ui/autofill/AndroidAutofill;", "values", "Landroid/util/SparseArray;", "Landroid/view/autofill/AutofillValue;", "populateViewStructure", "root", "Landroid/view/ViewStructure;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidAutofill_androidKt {
    public static final void populateViewStructure(AndroidAutofill androidAutofill, ViewStructure root) {
        Intrinsics.checkNotNullParameter(androidAutofill, "<this>");
        Intrinsics.checkNotNullParameter(root, "root");
        int addChildCount = AutofillApi23Helper.INSTANCE.addChildCount(root, androidAutofill.getAutofillTree().getChildren().size());
        for (Map.Entry<Integer, AutofillNode> entry : androidAutofill.getAutofillTree().getChildren().entrySet()) {
            int intValue = entry.getKey().intValue();
            AutofillNode value = entry.getValue();
            ViewStructure newChild = AutofillApi23Helper.INSTANCE.newChild(root, addChildCount);
            if (newChild != null) {
                AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
                AutofillId autofillId = AutofillApi26Helper.INSTANCE.getAutofillId(root);
                Intrinsics.checkNotNull(autofillId);
                autofillApi26Helper.setAutofillId(newChild, autofillId, intValue);
                AutofillApi23Helper.INSTANCE.setId(newChild, intValue, androidAutofill.getView().getContext().getPackageName(), null, null);
                AutofillApi26Helper.INSTANCE.setAutofillType(newChild, 1);
                AutofillApi26Helper autofillApi26Helper2 = AutofillApi26Helper.INSTANCE;
                List<AutofillType> autofillTypes = value.getAutofillTypes();
                ArrayList arrayList = new ArrayList(autofillTypes.size());
                int size = autofillTypes.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(AndroidAutofillType_androidKt.getAndroidType(autofillTypes.get(i)));
                }
                autofillApi26Helper2.setAutofillHints(newChild, (String[]) arrayList.toArray(new String[0]));
                Rect boundingBox = value.getBoundingBox();
                if (boundingBox == null) {
                    Log.w("Autofill Warning", "Bounding box not set.\n                        Did you call perform autofillTree before the component was positioned? ");
                } else {
                    int roundToInt = MathKt.roundToInt(boundingBox.getLeft());
                    int roundToInt2 = MathKt.roundToInt(boundingBox.getTop());
                    int roundToInt3 = MathKt.roundToInt(boundingBox.getRight());
                    AutofillApi23Helper.INSTANCE.setDimens(newChild, roundToInt, roundToInt2, 0, 0, roundToInt3 - roundToInt, MathKt.roundToInt(boundingBox.getBottom()) - roundToInt2);
                }
            }
            addChildCount++;
        }
    }

    public static final void performAutofill(AndroidAutofill androidAutofill, SparseArray<AutofillValue> values) {
        Intrinsics.checkNotNullParameter(androidAutofill, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        int size = values.size();
        for (int i = 0; i < size; i++) {
            int keyAt = values.keyAt(i);
            AutofillValue value = values.get(keyAt);
            AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(value, "value");
            if (autofillApi26Helper.isText(value)) {
                androidAutofill.getAutofillTree().performAutofill(keyAt, AutofillApi26Helper.INSTANCE.textValue(value).toString());
            } else {
                if (AutofillApi26Helper.INSTANCE.isDate(value)) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for date");
                }
                if (AutofillApi26Helper.INSTANCE.isList(value)) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for list");
                }
                if (AutofillApi26Helper.INSTANCE.isToggle(value)) {
                    throw new NotImplementedError("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                }
            }
        }
    }
}
