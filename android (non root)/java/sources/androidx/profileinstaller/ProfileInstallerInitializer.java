package androidx.profileinstaller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {
    private static final int DELAY_MS = 5000;

    /* loaded from: classes2.dex */
    public static class Result {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    public Result create(Context context) {
        delayAfterFirstFrame(context.getApplicationContext());
        return new Result();
    }

    void delayAfterFirstFrame(final Context context) {
        Choreographer16Impl.postFrameCallback(new Runnable() { // from class: androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.this.m5308xfbd6c934(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: installAfterDelay, reason: merged with bridge method [inline-methods] */
    public void m5308xfbd6c934(final Context context) {
        Handler28Impl.createAsync(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.writeInBackground(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + 5000);
    }

    @Override // androidx.startup.Initializer
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeInBackground(final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstaller.writeProfile(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Choreographer16Impl {
        private Choreographer16Impl() {
        }

        public static void postFrameCallback(final Runnable runnable) {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.profileinstaller.ProfileInstallerInitializer$Choreographer16Impl$$ExternalSyntheticLambda0
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    runnable.run();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Handler28Impl {
        private Handler28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            return Handler.createAsync(looper);
        }
    }
}
