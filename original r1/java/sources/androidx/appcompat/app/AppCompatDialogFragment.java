package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;

/* loaded from: classes.dex */
public class AppCompatDialogFragment extends DialogFragment {
    public AppCompatDialogFragment() {
    }

    public AppCompatDialogFragment(int i) {
        super(i);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new AppCompatDialog(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setupDialog(Dialog dialog, int i) {
        if (dialog instanceof AppCompatDialog) {
            AppCompatDialog appCompatDialog = (AppCompatDialog) dialog;
            if (i != 1 && i != 2) {
                if (i != 3) {
                    return;
                } else {
                    dialog.getWindow().addFlags(24);
                }
            }
            appCompatDialog.supportRequestWindowFeature(1);
            return;
        }
        super.setupDialog(dialog, i);
    }
}
