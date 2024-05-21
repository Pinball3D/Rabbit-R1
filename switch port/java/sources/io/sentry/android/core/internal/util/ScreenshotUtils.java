package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.graphics.Canvas;
import android.view.View;
import io.sentry.ILogger;
import io.sentry.android.core.BuildInfoProvider;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ScreenshotUtils {
    private static final long CAPTURE_TIMEOUT_MS = 1000;

    public static byte[] takeScreenshot(Activity activity, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        return takeScreenshot(activity, AndroidMainThreadChecker.getInstance(), iLogger, buildInfoProvider);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        if (r14.get() != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a6, code lost:
    
        if (r7 == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] takeScreenshot(android.app.Activity r11, io.sentry.util.thread.IMainThreadChecker r12, final io.sentry.ILogger r13, io.sentry.android.core.BuildInfoProvider r14) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.internal.util.ScreenshotUtils.takeScreenshot(android.app.Activity, io.sentry.util.thread.IMainThreadChecker, io.sentry.ILogger, io.sentry.android.core.BuildInfoProvider):byte[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$takeScreenshot$0(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch, int i) {
        atomicBoolean.set(i == 0);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$takeScreenshot$1(View view, Canvas canvas, ILogger iLogger, CountDownLatch countDownLatch) {
        try {
            view.draw(canvas);
        } finally {
            try {
            } finally {
            }
        }
    }

    private static boolean isActivityValid(Activity activity) {
        return (activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }
}
