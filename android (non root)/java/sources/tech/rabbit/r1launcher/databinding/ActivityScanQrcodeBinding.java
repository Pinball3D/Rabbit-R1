package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ActivityScanQrcodeBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvTip;
    public final DecoratedBarcodeView zxingBarcodeScanner;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private ActivityScanQrcodeBinding(LinearLayout linearLayout, TextView textView, DecoratedBarcodeView decoratedBarcodeView) {
        this.rootView = linearLayout;
        this.tvTip = textView;
        this.zxingBarcodeScanner = decoratedBarcodeView;
    }

    public static ActivityScanQrcodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityScanQrcodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_scan_qrcode, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityScanQrcodeBinding bind(View view) {
        int i = R.id.tv_tip;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.zxing_barcode_scanner;
            DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) ViewBindings.findChildViewById(view, i);
            if (decoratedBarcodeView != null) {
                return new ActivityScanQrcodeBinding((LinearLayout) view, textView, decoratedBarcodeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
