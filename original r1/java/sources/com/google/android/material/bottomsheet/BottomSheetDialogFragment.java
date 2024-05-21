package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes2.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    private boolean waitingForDismissAllowingStateLoss;

    public BottomSheetDialogFragment() {
    }

    public BottomSheetDialogFragment(int i) {
        super(i);
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (tryDismissWithAnimation(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (tryDismissWithAnimation(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    private boolean tryDismissWithAnimation(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof BottomSheetDialog)) {
            return false;
        }
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        BottomSheetBehavior<FrameLayout> behavior = bottomSheetDialog.getBehavior();
        if (!behavior.isHideable() || !bottomSheetDialog.getDismissWithAnimation()) {
            return false;
        }
        dismissWithAnimation(behavior, z);
        return true;
    }

    private void dismissWithAnimation(BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.waitingForDismissAllowingStateLoss = z;
        if (bottomSheetBehavior.getState() == 5) {
            dismissAfterAnimation();
            return;
        }
        if (getDialog() instanceof BottomSheetDialog) {
            ((BottomSheetDialog) getDialog()).removeDefaultCallback();
        }
        bottomSheetBehavior.addBottomSheetCallback(new BottomSheetDismissCallback());
        bottomSheetBehavior.setState(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissAfterAnimation() {
        if (this.waitingForDismissAllowingStateLoss) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class BottomSheetDismissCallback extends BottomSheetBehavior.BottomSheetCallback {
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(View view, float f) {
        }

        private BottomSheetDismissCallback() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(View view, int i) {
            if (i == 5) {
                BottomSheetDialogFragment.this.dismissAfterAnimation();
            }
        }
    }
}
