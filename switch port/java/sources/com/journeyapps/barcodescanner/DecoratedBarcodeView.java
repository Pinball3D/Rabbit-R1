package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.DecodeFormatManager;
import com.google.zxing.client.android.DecodeHintManager;
import com.google.zxing.client.android.Intents;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.camera.CameraParametersCallback;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class DecoratedBarcodeView extends FrameLayout {
    private BarcodeView barcodeView;
    private TextView statusView;
    private TorchListener torchListener;
    private ViewfinderView viewFinder;

    /* loaded from: classes3.dex */
    public interface TorchListener {
        void onTorchOff();

        void onTorchOn();
    }

    public TextView getStatusView() {
        return this.statusView;
    }

    public ViewfinderView getViewFinder() {
        return this.viewFinder;
    }

    public void setTorchListener(TorchListener torchListener) {
        this.torchListener = torchListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class WrappedCallback implements BarcodeCallback {
        private BarcodeCallback delegate;

        public WrappedCallback(BarcodeCallback barcodeCallback) {
            this.delegate = barcodeCallback;
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void barcodeResult(BarcodeResult barcodeResult) {
            this.delegate.barcodeResult(barcodeResult);
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void possibleResultPoints(List<ResultPoint> list) {
            Iterator<ResultPoint> it = list.iterator();
            while (it.hasNext()) {
                DecoratedBarcodeView.this.viewFinder.addPossibleResultPoint(it.next());
            }
            this.delegate.possibleResultPoints(list);
        }
    }

    public DecoratedBarcodeView(Context context) {
        super(context);
        initialize();
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    private void initialize(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.zxing_view);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.zxing_view_zxing_scanner_layout, R.layout.zxing_barcode_scanner);
        obtainStyledAttributes.recycle();
        inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(R.id.zxing_barcode_surface);
        this.barcodeView = barcodeView;
        if (barcodeView == null) {
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\".");
        }
        barcodeView.initializeAttributes(attributeSet);
        ViewfinderView viewfinderView = (ViewfinderView) findViewById(R.id.zxing_viewfinder_view);
        this.viewFinder = viewfinderView;
        if (viewfinderView == null) {
            throw new IllegalArgumentException("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\".");
        }
        viewfinderView.setCameraPreview(this.barcodeView);
        this.statusView = (TextView) findViewById(R.id.zxing_status_view);
    }

    private void initialize() {
        initialize(null);
    }

    public void initializeFromIntent(Intent intent) {
        int intExtra;
        Set<BarcodeFormat> parseDecodeFormats = DecodeFormatManager.parseDecodeFormats(intent);
        Map<DecodeHintType, ?> parseDecodeHints = DecodeHintManager.parseDecodeHints(intent);
        CameraSettings cameraSettings = new CameraSettings();
        if (intent.hasExtra(Intents.Scan.CAMERA_ID) && (intExtra = intent.getIntExtra(Intents.Scan.CAMERA_ID, -1)) >= 0) {
            cameraSettings.setRequestedCameraId(intExtra);
        }
        if (intent.hasExtra(Intents.Scan.TORCH_ENABLED) && intent.getBooleanExtra(Intents.Scan.TORCH_ENABLED, false)) {
            setTorchOn();
        }
        String stringExtra = intent.getStringExtra(Intents.Scan.PROMPT_MESSAGE);
        if (stringExtra != null) {
            setStatusText(stringExtra);
        }
        int intExtra2 = intent.getIntExtra(Intents.Scan.SCAN_TYPE, 0);
        String stringExtra2 = intent.getStringExtra(Intents.Scan.CHARACTER_SET);
        new MultiFormatReader().setHints(parseDecodeHints);
        this.barcodeView.setCameraSettings(cameraSettings);
        this.barcodeView.setDecoderFactory(new DefaultDecoderFactory(parseDecodeFormats, parseDecodeHints, stringExtra2, intExtra2));
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.barcodeView.setCameraSettings(cameraSettings);
    }

    public void setDecoderFactory(DecoderFactory decoderFactory) {
        this.barcodeView.setDecoderFactory(decoderFactory);
    }

    public DecoderFactory getDecoderFactory() {
        return this.barcodeView.getDecoderFactory();
    }

    public CameraSettings getCameraSettings() {
        return this.barcodeView.getCameraSettings();
    }

    public void setStatusText(String str) {
        TextView textView = this.statusView;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void pause() {
        this.barcodeView.pause();
    }

    public void pauseAndWait() {
        this.barcodeView.pauseAndWait();
    }

    public void resume() {
        this.barcodeView.resume();
    }

    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(R.id.zxing_barcode_surface);
    }

    public void decodeSingle(BarcodeCallback barcodeCallback) {
        this.barcodeView.decodeSingle(new WrappedCallback(barcodeCallback));
    }

    public void decodeContinuous(BarcodeCallback barcodeCallback) {
        this.barcodeView.decodeContinuous(new WrappedCallback(barcodeCallback));
    }

    public void setTorchOn() {
        this.barcodeView.setTorch(true);
        TorchListener torchListener = this.torchListener;
        if (torchListener != null) {
            torchListener.onTorchOn();
        }
    }

    public void setTorchOff() {
        this.barcodeView.setTorch(false);
        TorchListener torchListener = this.torchListener;
        if (torchListener != null) {
            torchListener.onTorchOff();
        }
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        this.barcodeView.changeCameraParameters(cameraParametersCallback);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 24) {
            setTorchOn();
            return true;
        }
        if (i == 25) {
            setTorchOff();
            return true;
        }
        if (i == 27 || i == 80) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
