package io.flutter.view;

import android.app.Activity;
import android.content.Context;
import io.flutter.Log;
import io.flutter.app.FlutterPluginRegistry;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.renderer.FlutterUiDisplayListener;
import io.flutter.plugin.common.BinaryMessenger;
import java.nio.ByteBuffer;

@Deprecated
/* loaded from: classes3.dex */
public class FlutterNativeView implements BinaryMessenger {
    private static final String TAG = "FlutterNativeView";
    private boolean applicationIsRunning;
    private final DartExecutor dartExecutor;
    private final FlutterUiDisplayListener flutterUiDisplayListener;
    private final Context mContext;
    private final FlutterJNI mFlutterJNI;
    private FlutterView mFlutterView;
    private final FlutterPluginRegistry mPluginRegistry;

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void disableBufferingIncomingMessages() {
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void enableBufferingIncomingMessages() {
    }

    public DartExecutor getDartExecutor() {
        return this.dartExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterJNI getFlutterJNI() {
        return this.mFlutterJNI;
    }

    public FlutterPluginRegistry getPluginRegistry() {
        return this.mPluginRegistry;
    }

    public boolean isApplicationRunning() {
        return this.applicationIsRunning;
    }

    public FlutterNativeView(Context context) {
        this(context, false);
    }

    public FlutterNativeView(Context context, boolean z) {
        FlutterUiDisplayListener flutterUiDisplayListener = new FlutterUiDisplayListener() { // from class: io.flutter.view.FlutterNativeView.1
            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiNoLongerDisplayed() {
            }

            @Override // io.flutter.embedding.engine.renderer.FlutterUiDisplayListener
            public void onFlutterUiDisplayed() {
                if (FlutterNativeView.this.mFlutterView == null) {
                    return;
                }
                FlutterNativeView.this.mFlutterView.onFirstFrame();
            }
        };
        this.flutterUiDisplayListener = flutterUiDisplayListener;
        if (z) {
            Log.w(TAG, "'isBackgroundView' is no longer supported and will be ignored");
        }
        this.mContext = context;
        this.mPluginRegistry = new FlutterPluginRegistry(this, context);
        FlutterJNI flutterJNI = new FlutterJNI();
        this.mFlutterJNI = flutterJNI;
        flutterJNI.addIsDisplayingFlutterUiListener(flutterUiDisplayListener);
        this.dartExecutor = new DartExecutor(flutterJNI, context.getAssets());
        flutterJNI.addEngineLifecycleListener(new EngineLifecycleListenerImpl());
        attach(this);
        assertAttached();
    }

    public void detachFromFlutterView() {
        this.mPluginRegistry.detach();
        this.mFlutterView = null;
    }

    public void destroy() {
        this.mPluginRegistry.destroy();
        this.dartExecutor.onDetachedFromJNI();
        this.mFlutterView = null;
        this.mFlutterJNI.removeIsDisplayingFlutterUiListener(this.flutterUiDisplayListener);
        this.mFlutterJNI.detachFromNativeAndReleaseResources();
        this.applicationIsRunning = false;
    }

    public void attachViewAndActivity(FlutterView flutterView, Activity activity) {
        this.mFlutterView = flutterView;
        this.mPluginRegistry.attach(flutterView, activity);
    }

    public boolean isAttached() {
        return this.mFlutterJNI.isAttached();
    }

    public void assertAttached() {
        if (!isAttached()) {
            throw new AssertionError("Platform view is not attached");
        }
    }

    public void runFromBundle(FlutterRunArguments flutterRunArguments) {
        if (flutterRunArguments.entrypoint == null) {
            throw new AssertionError("An entrypoint must be specified");
        }
        assertAttached();
        if (this.applicationIsRunning) {
            throw new AssertionError("This Flutter engine instance is already running an application");
        }
        this.mFlutterJNI.runBundleAndSnapshotFromLibrary(flutterRunArguments.bundlePath, flutterRunArguments.entrypoint, flutterRunArguments.libraryPath, this.mContext.getResources().getAssets(), null);
        this.applicationIsRunning = true;
    }

    @Deprecated
    public static String getObservatoryUri() {
        return FlutterJNI.getVMServiceUri();
    }

    public static String getVMServiceUri() {
        return FlutterJNI.getVMServiceUri();
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public BinaryMessenger.TaskQueue makeBackgroundTaskQueue(BinaryMessenger.TaskQueueOptions taskQueueOptions) {
        return this.dartExecutor.getBinaryMessenger().makeBackgroundTaskQueue(taskQueueOptions);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(String str, ByteBuffer byteBuffer) {
        this.dartExecutor.getBinaryMessenger().send(str, byteBuffer);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void send(String str, ByteBuffer byteBuffer, BinaryMessenger.BinaryReply binaryReply) {
        if (!isAttached()) {
            Log.d(TAG, "FlutterView.send called on a detached view, channel=" + str);
        } else {
            this.dartExecutor.getBinaryMessenger().send(str, byteBuffer, binaryReply);
        }
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(String str, BinaryMessenger.BinaryMessageHandler binaryMessageHandler) {
        this.dartExecutor.getBinaryMessenger().setMessageHandler(str, binaryMessageHandler);
    }

    @Override // io.flutter.plugin.common.BinaryMessenger
    public void setMessageHandler(String str, BinaryMessenger.BinaryMessageHandler binaryMessageHandler, BinaryMessenger.TaskQueue taskQueue) {
        this.dartExecutor.getBinaryMessenger().setMessageHandler(str, binaryMessageHandler, taskQueue);
    }

    private void attach(FlutterNativeView flutterNativeView) {
        this.mFlutterJNI.attachToNative();
        this.dartExecutor.onAttachedToJNI();
    }

    /* loaded from: classes3.dex */
    private final class EngineLifecycleListenerImpl implements FlutterEngine.EngineLifecycleListener {
        @Override // io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener
        public void onEngineWillDestroy() {
        }

        private EngineLifecycleListenerImpl() {
        }

        @Override // io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener
        public void onPreEngineRestart() {
            if (FlutterNativeView.this.mFlutterView != null) {
                FlutterNativeView.this.mFlutterView.resetAccessibilityTree();
            }
            if (FlutterNativeView.this.mPluginRegistry == null) {
                return;
            }
            FlutterNativeView.this.mPluginRegistry.onPreEngineRestart();
        }
    }
}
