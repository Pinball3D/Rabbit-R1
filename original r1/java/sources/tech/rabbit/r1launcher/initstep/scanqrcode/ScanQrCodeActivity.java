package tech.rabbit.r1launcher.initstep.scanqrcode;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.journeyapps.barcodescanner.BarcodeResult;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import io.sentry.protocol.App;
import io.sentry.protocol.Request;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.HttpUrl;
import org.apache.http.conn.ConnectTimeoutException;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.model.ScanQrCodeResult;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.utils.CameraController;

/* compiled from: ScanQrCodeActivity.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0082@¢\u0006\u0002\u0010\u000eJ\b\u0010\u000f\u001a\u00020\u0005H\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0014\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\b\u0010\u0019\u001a\u00020\u0016H\u0014J\u001a\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010 \u001a\u00020\u0016H\u0014J-\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u001c2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$2\u0006\u0010&\u001a\u00020'H\u0016¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020\u0016H\u0014J\u0012\u0010*\u001a\u00020\u00162\b\u0010+\u001a\u0004\u0018\u00010,H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;", "Landroid/app/Activity;", "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;", "()V", "barcodeScannerView", "Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;", "capture", "Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;", "tvTip", "Landroid/widget/TextView;", "fetchLinkAccount", "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;", Request.JsonKeys.URL, "Lokhttp3/HttpUrl;", "(Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initializeContent", "isNoNetworkException", "", "throwable", "", "isTimeoutException", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onKeyDown", "keyCode", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onPause", "onRequestPermissionsResult", "requestCode", App.JsonKeys.APP_PERMISSIONS, "", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onResume", "onScanResult", "rawResult", "Lcom/journeyapps/barcodescanner/BarcodeResult;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScanQrCodeActivity extends Activity implements ScanInterface {
    public static final int $stable = 8;
    private DecoratedBarcodeView barcodeScannerView;
    private R1CaptureManager capture;
    private TextView tvTip;

    private final DecoratedBarcodeView initializeContent() {
        setContentView(R.layout.activity_scan_qrcode);
        View findViewById = findViewById(R.id.zxing_barcode_scanner);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        return (DecoratedBarcodeView) findViewById;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.barcodeScannerView = initializeContent();
        ScanQrCodeActivity scanQrCodeActivity = this;
        DecoratedBarcodeView decoratedBarcodeView = this.barcodeScannerView;
        TextView textView = null;
        if (decoratedBarcodeView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("barcodeScannerView");
            decoratedBarcodeView = null;
        }
        R1CaptureManager r1CaptureManager = new R1CaptureManager(scanQrCodeActivity, decoratedBarcodeView);
        this.capture = r1CaptureManager;
        r1CaptureManager.initializeFromIntent(getIntent(), savedInstanceState);
        R1CaptureManager r1CaptureManager2 = this.capture;
        if (r1CaptureManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capture");
            r1CaptureManager2 = null;
        }
        r1CaptureManager2.decode();
        if (CameraController.INSTANCE.isNeedRotate(false, true)) {
            CameraController.INSTANCE.rotateToBack();
        }
        View findViewById = findViewById(R.id.tv_tip);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        TextView textView2 = (TextView) findViewById;
        this.tvTip = textView2;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
        } else {
            textView = textView2;
        }
        textView.setText(R.string.text_scan_qr_code);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        R1CaptureManager r1CaptureManager = this.capture;
        if (r1CaptureManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capture");
            r1CaptureManager = null;
        }
        r1CaptureManager.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        R1CaptureManager r1CaptureManager = this.capture;
        if (r1CaptureManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capture");
            r1CaptureManager = null;
        }
        r1CaptureManager.onPause();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        R1CaptureManager r1CaptureManager = this.capture;
        if (r1CaptureManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capture");
            r1CaptureManager = null;
        }
        r1CaptureManager.onDestroy();
        if (CameraController.INSTANCE.isNeedRotate(true, true)) {
            CameraController.INSTANCE.rotateToPrivacy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        R1CaptureManager r1CaptureManager = this.capture;
        if (r1CaptureManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capture");
            r1CaptureManager = null;
        }
        r1CaptureManager.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        TextView textView = null;
        TextView textView2 = null;
        if (keyCode == 20) {
            TextView textView3 = this.tvTip;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView3 = null;
            }
            textView3.setBackgroundResource(R.drawable.shape_ff4d00_r10);
            TextView textView4 = this.tvTip;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView4 = null;
            }
            textView4.setText(R.string.text_cancel);
            TextView textView5 = this.tvTip;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView5 = null;
            }
            textView5.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            TextView textView6 = this.tvTip;
            if (textView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            } else {
                textView = textView6;
            }
            TextView textView7 = textView;
            ViewGroup.LayoutParams layoutParams = textView7.getLayoutParams();
            if (layoutParams != null) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                LinearLayout.LayoutParams layoutParams3 = layoutParams2;
                layoutParams3.setMargins(((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, 0);
                textView7.setLayoutParams(layoutParams2);
                return true;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        }
        if (keyCode != 19) {
            if (!Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
                return true;
            }
            TextView textView8 = this.tvTip;
            if (textView8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView8 = null;
            }
            ViewGroup.LayoutParams layoutParams4 = textView8.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
            if (marginLayoutParams == null || marginLayoutParams.bottomMargin != 0) {
                return true;
            }
            setResult(0);
            finish();
            return true;
        }
        TextView textView9 = this.tvTip;
        if (textView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView9 = null;
        }
        textView9.setBackgroundResource(0);
        TextView textView10 = this.tvTip;
        if (textView10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView10 = null;
        }
        textView10.setText(R.string.text_scan_qr_code);
        TextView textView11 = this.tvTip;
        if (textView11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView11 = null;
        }
        textView11.setTextColor(-1);
        TextView textView12 = this.tvTip;
        if (textView12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
        } else {
            textView2 = textView12;
        }
        TextView textView13 = textView2;
        ViewGroup.LayoutParams layoutParams5 = textView13.getLayoutParams();
        if (layoutParams5 != null) {
            LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) layoutParams5;
            LinearLayout.LayoutParams layoutParams7 = layoutParams6;
            layoutParams7.setMargins(((ViewGroup.MarginLayoutParams) layoutParams7).leftMargin, ((ViewGroup.MarginLayoutParams) layoutParams7).topMargin, ((ViewGroup.MarginLayoutParams) layoutParams7).rightMargin, UiExtensionsKt.getDp(18));
            textView13.setLayoutParams(layoutParams6);
            return true;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        DecoratedBarcodeView decoratedBarcodeView = this.barcodeScannerView;
        if (decoratedBarcodeView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("barcodeScannerView");
            decoratedBarcodeView = null;
        }
        return decoratedBarcodeView.onKeyDown(keyCode, event) || super.onKeyDown(keyCode, event);
    }

    @Override // tech.rabbit.r1launcher.initstep.scanqrcode.ScanInterface
    public void onScanResult(BarcodeResult rawResult) {
        TextView textView = this.tvTip;
        R1CaptureManager r1CaptureManager = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView = null;
        }
        textView.setText(R.string.text_linking);
        String text = rawResult != null ? rawResult.getText() : null;
        String str = text;
        if (str == null || str.length() == 0) {
            R1CaptureManager r1CaptureManager2 = this.capture;
            if (r1CaptureManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("capture");
            } else {
                r1CaptureManager = r1CaptureManager2;
            }
            r1CaptureManager.finish(new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.IllegalQrCodeError, 7, null));
            return;
        }
        HttpUrl parse = HttpUrl.INSTANCE.parse(text);
        if (parse != null && (Intrinsics.areEqual(parse.scheme(), "http") || Intrinsics.areEqual(parse.scheme(), "https"))) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new ScanQrCodeActivity$onScanResult$1(this, parse, null), 3, null);
            return;
        }
        R1CaptureManager r1CaptureManager3 = this.capture;
        if (r1CaptureManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capture");
        } else {
            r1CaptureManager = r1CaptureManager3;
        }
        r1CaptureManager.finish(new ScanQrCodeResult(null, null, null, ScanQrCodeResult.ErrorType.IllegalQrCodeError, 7, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fetchLinkAccount(HttpUrl httpUrl, Continuation<? super ScanQrCodeResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ScanQrCodeActivity$fetchLinkAccount$2(httpUrl, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isTimeoutException(Throwable throwable) {
        return throwable != null && ((throwable instanceof SocketTimeoutException) || (throwable instanceof ConnectTimeoutException));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isNoNetworkException(Throwable throwable) {
        return throwable != null && ((throwable instanceof UnknownHostException) || (throwable instanceof SocketException));
    }
}
