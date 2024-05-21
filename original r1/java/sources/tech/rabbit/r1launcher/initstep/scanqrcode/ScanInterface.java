package tech.rabbit.r1launcher.initstep.scanqrcode;

import com.journeyapps.barcodescanner.BarcodeResult;
import kotlin.Metadata;

/* compiled from: ScanInterface.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;", "", "onScanResult", "", "rawResult", "Lcom/journeyapps/barcodescanner/BarcodeResult;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ScanInterface {
    void onScanResult(BarcodeResult rawResult);
}
