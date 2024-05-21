package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;

/* loaded from: classes3.dex */
public class ScanContract extends ActivityResultContract<ScanOptions, ScanIntentResult> {
    @Override // androidx.activity.result.contract.ActivityResultContract
    public Intent createIntent(Context context, ScanOptions scanOptions) {
        return scanOptions.createScanIntent(context);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.activity.result.contract.ActivityResultContract
    public ScanIntentResult parseResult(int i, Intent intent) {
        return ScanIntentResult.parseActivityResult(i, intent);
    }
}
