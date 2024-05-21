package tech.rabbit.r1launcher.initstep.scanqrcode;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Intent;
import com.journeyapps.barcodescanner.BarcodeResult;
import com.journeyapps.barcodescanner.CaptureManager;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.initstep.model.ScanQrCodeResult;

/* compiled from: R1CaptureManager.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0012\u0010\r\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;", "Lcom/journeyapps/barcodescanner/CaptureManager;", "activity", "Landroid/app/Activity;", "barcodeView", "Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;", "(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V", "getActivity", "()Landroid/app/Activity;", "finish", "", "result", "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;", "returnResult", "rawResult", "Lcom/journeyapps/barcodescanner/BarcodeResult;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class R1CaptureManager extends CaptureManager {
    public static final int $stable = 8;
    private final Activity activity;

    public final Activity getActivity() {
        return this.activity;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R1CaptureManager(Activity activity, DecoratedBarcodeView barcodeView) {
        super(activity, barcodeView);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(barcodeView, "barcodeView");
        this.activity = activity;
    }

    @Override // com.journeyapps.barcodescanner.CaptureManager
    protected void returnResult(BarcodeResult rawResult) {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 instanceof ScanInterface) {
            ((ScanInterface) componentCallbacks2).onScanResult(rawResult);
        }
    }

    public final void finish(ScanQrCodeResult result) {
        if (result == null) {
            super.returnResultTimeout();
        } else {
            this.activity.setResult(-1, new Intent().putExtra(ScanQrCodeResult.EXTRA_SCAN_QR_CODE_RESULT, result));
            closeAndFinish();
        }
    }
}
