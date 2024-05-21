package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.BeepManager;
import com.google.zxing.client.android.InactivityTimer;
import com.google.zxing.client.android.Intents;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.CaptureManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class CaptureManager {
    private static final String SAVED_ORIENTATION_LOCK = "SAVED_ORIENTATION_LOCK";
    private static final String TAG = "CaptureManager";
    private static int cameraPermissionReqCode = 250;
    private Activity activity;
    private boolean askedPermission;
    private DecoratedBarcodeView barcodeView;
    private BeepManager beepManager;
    private Handler handler;
    private InactivityTimer inactivityTimer;
    private final CameraPreview.StateListener stateListener;
    private int orientationLock = -1;
    private boolean returnBarcodeImagePath = false;
    private boolean showDialogIfMissingCameraPermission = true;
    private String missingCameraPermissionDialogMessage = "";
    private boolean destroyed = false;
    private boolean finishWhenClosed = false;
    private BarcodeCallback callback = new AnonymousClass1();

    public static int getCameraPermissionReqCode() {
        return cameraPermissionReqCode;
    }

    public static void setCameraPermissionReqCode(int i) {
        cameraPermissionReqCode = i;
    }

    public void setShowMissingCameraPermissionDialog(boolean z, String str) {
        this.showDialogIfMissingCameraPermission = z;
        if (str == null) {
            str = "";
        }
        this.missingCameraPermissionDialogMessage = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.journeyapps.barcodescanner.CaptureManager$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements BarcodeCallback {
        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void possibleResultPoints(List<ResultPoint> list) {
        }

        AnonymousClass1() {
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void barcodeResult(final BarcodeResult barcodeResult) {
            CaptureManager.this.barcodeView.pause();
            CaptureManager.this.beepManager.playBeepSoundAndVibrate();
            CaptureManager.this.handler.post(new Runnable() { // from class: com.journeyapps.barcodescanner.CaptureManager$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CaptureManager.AnonymousClass1.this.m5591xddc42d84(barcodeResult);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$barcodeResult$0$com-journeyapps-barcodescanner-CaptureManager$1, reason: not valid java name */
        public /* synthetic */ void m5591xddc42d84(BarcodeResult barcodeResult) {
            CaptureManager.this.returnResult(barcodeResult);
        }
    }

    public CaptureManager(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        CameraPreview.StateListener stateListener = new CameraPreview.StateListener() { // from class: com.journeyapps.barcodescanner.CaptureManager.2
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                CaptureManager captureManager = CaptureManager.this;
                captureManager.displayFrameworkBugMessageAndExit(captureManager.activity.getString(R.string.zxing_msg_camera_framework_bug));
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                if (CaptureManager.this.finishWhenClosed) {
                    Log.d(CaptureManager.TAG, "Camera closed; finishing activity");
                    CaptureManager.this.finish();
                }
            }
        };
        this.stateListener = stateListener;
        this.askedPermission = false;
        this.activity = activity;
        this.barcodeView = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().addStateListener(stateListener);
        this.handler = new Handler();
        this.inactivityTimer = new InactivityTimer(activity, new Runnable() { // from class: com.journeyapps.barcodescanner.CaptureManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CaptureManager.this.m5590lambda$new$0$comjourneyappsbarcodescannerCaptureManager();
            }
        });
        this.beepManager = new BeepManager(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-journeyapps-barcodescanner-CaptureManager, reason: not valid java name */
    public /* synthetic */ void m5590lambda$new$0$comjourneyappsbarcodescannerCaptureManager() {
        Log.d(TAG, "Finishing due to inactivity");
        finish();
    }

    public void initializeFromIntent(Intent intent, Bundle bundle) {
        this.activity.getWindow().addFlags(128);
        if (bundle != null) {
            this.orientationLock = bundle.getInt(SAVED_ORIENTATION_LOCK, -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra(Intents.Scan.ORIENTATION_LOCKED, true)) {
                lockOrientation();
            }
            if (Intents.Scan.ACTION.equals(intent.getAction())) {
                this.barcodeView.initializeFromIntent(intent);
            }
            if (!intent.getBooleanExtra(Intents.Scan.BEEP_ENABLED, true)) {
                this.beepManager.setBeepEnabled(false);
            }
            if (intent.hasExtra(Intents.Scan.SHOW_MISSING_CAMERA_PERMISSION_DIALOG)) {
                setShowMissingCameraPermissionDialog(intent.getBooleanExtra(Intents.Scan.SHOW_MISSING_CAMERA_PERMISSION_DIALOG, true), intent.getStringExtra(Intents.Scan.MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE));
            }
            if (intent.hasExtra(Intents.Scan.TIMEOUT)) {
                this.handler.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.CaptureManager$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        CaptureManager.this.returnResultTimeout();
                    }
                }, intent.getLongExtra(Intents.Scan.TIMEOUT, 0L));
            }
            if (intent.getBooleanExtra(Intents.Scan.BARCODE_IMAGE_ENABLED, false)) {
                this.returnBarcodeImagePath = true;
            }
        }
    }

    protected void lockOrientation() {
        if (this.orientationLock == -1) {
            int rotation = this.activity.getWindowManager().getDefaultDisplay().getRotation();
            int i = this.activity.getResources().getConfiguration().orientation;
            int i2 = 0;
            if (i == 2) {
                if (rotation != 0 && rotation != 1) {
                    i2 = 8;
                }
            } else if (i == 1) {
                i2 = (rotation == 0 || rotation == 3) ? 1 : 9;
            }
            this.orientationLock = i2;
        }
        this.activity.setRequestedOrientation(this.orientationLock);
    }

    public void decode() {
        this.barcodeView.decodeSingle(this.callback);
    }

    public void onResume() {
        openCameraWithPermission();
        this.inactivityTimer.start();
    }

    private void openCameraWithPermission() {
        if (ContextCompat.checkSelfPermission(this.activity, "android.permission.CAMERA") == 0) {
            this.barcodeView.resume();
        } else {
            if (this.askedPermission) {
                return;
            }
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.CAMERA"}, cameraPermissionReqCode);
            this.askedPermission = true;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == cameraPermissionReqCode) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.barcodeView.resume();
                return;
            }
            setMissingCameraPermissionResult();
            if (this.showDialogIfMissingCameraPermission) {
                displayFrameworkBugMessageAndExit(this.missingCameraPermissionDialogMessage);
            } else {
                closeAndFinish();
            }
        }
    }

    public void onPause() {
        this.inactivityTimer.cancel();
        this.barcodeView.pauseAndWait();
    }

    public void onDestroy() {
        this.destroyed = true;
        this.inactivityTimer.cancel();
        this.handler.removeCallbacksAndMessages(null);
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(SAVED_ORIENTATION_LOCK, this.orientationLock);
    }

    public static Intent resultIntent(BarcodeResult barcodeResult, String str) {
        Intent intent = new Intent(Intents.Scan.ACTION);
        intent.addFlags(524288);
        intent.putExtra(Intents.Scan.RESULT, barcodeResult.toString());
        intent.putExtra(Intents.Scan.RESULT_FORMAT, barcodeResult.getBarcodeFormat().toString());
        byte[] rawBytes = barcodeResult.getRawBytes();
        if (rawBytes != null && rawBytes.length > 0) {
            intent.putExtra(Intents.Scan.RESULT_BYTES, rawBytes);
        }
        Map<ResultMetadataType, Object> resultMetadata = barcodeResult.getResultMetadata();
        if (resultMetadata != null) {
            if (resultMetadata.containsKey(ResultMetadataType.UPC_EAN_EXTENSION)) {
                intent.putExtra(Intents.Scan.RESULT_UPC_EAN_EXTENSION, resultMetadata.get(ResultMetadataType.UPC_EAN_EXTENSION).toString());
            }
            Number number = (Number) resultMetadata.get(ResultMetadataType.ORIENTATION);
            if (number != null) {
                intent.putExtra(Intents.Scan.RESULT_ORIENTATION, number.intValue());
            }
            String str2 = (String) resultMetadata.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
            if (str2 != null) {
                intent.putExtra(Intents.Scan.RESULT_ERROR_CORRECTION_LEVEL, str2);
            }
            Iterable iterable = (Iterable) resultMetadata.get(ResultMetadataType.BYTE_SEGMENTS);
            if (iterable != null) {
                Iterator it = iterable.iterator();
                int i = 0;
                while (it.hasNext()) {
                    intent.putExtra(Intents.Scan.RESULT_BYTE_SEGMENTS_PREFIX + i, (byte[]) it.next());
                    i++;
                }
            }
        }
        if (str != null) {
            intent.putExtra(Intents.Scan.RESULT_BARCODE_IMAGE_PATH, str);
        }
        return intent;
    }

    private String getBarcodeImagePath(BarcodeResult barcodeResult) {
        if (this.returnBarcodeImagePath) {
            Bitmap bitmap = barcodeResult.getBitmap();
            try {
                File createTempFile = File.createTempFile("barcodeimage", ".jpg", this.activity.getCacheDir());
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.close();
                return createTempFile.getAbsolutePath();
            } catch (IOException e) {
                Log.w(TAG, "Unable to create temporary file and store bitmap! " + e);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        this.activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeAndFinish() {
        if (this.barcodeView.getBarcodeView().isCameraClosed()) {
            finish();
        } else {
            this.finishWhenClosed = true;
        }
        this.barcodeView.pause();
        this.inactivityTimer.cancel();
    }

    private void setMissingCameraPermissionResult() {
        Intent intent = new Intent(Intents.Scan.ACTION);
        intent.putExtra(Intents.Scan.MISSING_CAMERA_PERMISSION, true);
        this.activity.setResult(0, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void returnResultTimeout() {
        Intent intent = new Intent(Intents.Scan.ACTION);
        intent.putExtra(Intents.Scan.TIMEOUT, true);
        this.activity.setResult(0, intent);
        closeAndFinish();
    }

    protected void returnResult(BarcodeResult barcodeResult) {
        this.activity.setResult(-1, resultIntent(barcodeResult, getBarcodeImagePath(barcodeResult)));
        closeAndFinish();
    }

    protected void displayFrameworkBugMessageAndExit(String str) {
        if (this.activity.isFinishing() || this.destroyed || this.finishWhenClosed) {
            return;
        }
        if (str.isEmpty()) {
            str = this.activity.getString(R.string.zxing_msg_camera_framework_bug);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setTitle(this.activity.getString(R.string.zxing_app_name));
        builder.setMessage(str);
        builder.setPositiveButton(R.string.zxing_button_ok, new DialogInterface.OnClickListener() { // from class: com.journeyapps.barcodescanner.CaptureManager$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CaptureManager.this.m5588x170613e1(dialogInterface, i);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.journeyapps.barcodescanner.CaptureManager$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                CaptureManager.this.m5589x8c803a22(dialogInterface);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$displayFrameworkBugMessageAndExit$1$com-journeyapps-barcodescanner-CaptureManager, reason: not valid java name */
    public /* synthetic */ void m5588x170613e1(DialogInterface dialogInterface, int i) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$displayFrameworkBugMessageAndExit$2$com-journeyapps-barcodescanner-CaptureManager, reason: not valid java name */
    public /* synthetic */ void m5589x8c803a22(DialogInterface dialogInterface) {
        finish();
    }

    public void setShowMissingCameraPermissionDialog(boolean z) {
        setShowMissingCameraPermissionDialog(z, "");
    }
}
