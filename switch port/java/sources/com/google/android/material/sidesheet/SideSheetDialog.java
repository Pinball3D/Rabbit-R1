package com.google.android.material.sidesheet;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public class SideSheetDialog extends SheetDialog<SideSheetCallback> {
    private static final int SIDE_SHEET_DIALOG_THEME_ATTR = R.attr.sideSheetDialogTheme;
    private static final int SIDE_SHEET_DIALOG_DEFAULT_THEME_RES = R.style.Theme_Material3_Light_SideSheetDialog;

    @Override // com.google.android.material.sidesheet.SheetDialog
    int getStateOnStart() {
        return 3;
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, android.app.Dialog, android.content.DialogInterface
    public /* bridge */ /* synthetic */ void cancel() {
        super.cancel();
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public /* bridge */ /* synthetic */ boolean isDismissWithSheetAnimationEnabled() {
        return super.isDismissWithSheetAnimationEnabled();
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, android.app.Dialog, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, android.app.Dialog, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setCancelable(boolean z) {
        super.setCancelable(z);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(int i) {
        super.setContentView(i);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(View view) {
        super.setContentView(view);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public /* bridge */ /* synthetic */ void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public /* bridge */ /* synthetic */ void setDismissWithSheetAnimationEnabled(boolean z) {
        super.setDismissWithSheetAnimationEnabled(z);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public /* bridge */ /* synthetic */ void setSheetEdge(int i) {
        super.setSheetEdge(i);
    }

    public SideSheetDialog(Context context) {
        this(context, 0);
    }

    public SideSheetDialog(Context context, int i) {
        super(context, i, SIDE_SHEET_DIALOG_THEME_ATTR, SIDE_SHEET_DIALOG_DEFAULT_THEME_RES);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    void addSheetCancelOnHideCallback(Sheet<SideSheetCallback> sheet) {
        sheet.addCallback(new SideSheetCallback() { // from class: com.google.android.material.sidesheet.SideSheetDialog.1
            @Override // com.google.android.material.sidesheet.SideSheetCallback, com.google.android.material.sidesheet.SheetCallback
            public void onSlide(View view, float f) {
            }

            @Override // com.google.android.material.sidesheet.SideSheetCallback, com.google.android.material.sidesheet.SheetCallback
            public void onStateChanged(View view, int i) {
                if (i == 5) {
                    SideSheetDialog.this.cancel();
                }
            }
        });
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    int getLayoutResId() {
        return R.layout.m3_side_sheet_dialog;
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    int getDialogId() {
        return R.id.m3_side_sheet;
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    Sheet<SideSheetCallback> getBehaviorFromSheet(FrameLayout frameLayout) {
        return SideSheetBehavior.from(frameLayout);
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public Sheet<SideSheetCallback> getBehavior() {
        Sheet behavior = super.getBehavior();
        if (!(behavior instanceof SideSheetBehavior)) {
            throw new IllegalStateException("The view is not associated with SideSheetBehavior");
        }
        return (SideSheetBehavior) behavior;
    }
}
