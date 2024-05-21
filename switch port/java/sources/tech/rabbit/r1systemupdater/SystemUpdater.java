package tech.rabbit.r1systemupdater;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import java.lang.ref.WeakReference;
import tech.rabbit.r1systemupdater.model.UpdateConfig;
import tech.rabbit.r1systemupdater.model.UpdateEngineErrorCodes;
import tech.rabbit.r1systemupdater.model.UpdateEngineStatuses;
import tech.rabbit.r1systemupdater.service.ICheckCallback;
import tech.rabbit.r1systemupdater.service.IUpdateCallback;
import tech.rabbit.r1systemupdater.service.IUpdateService;

/* loaded from: classes3.dex */
public class SystemUpdater {
    private static String TAG = "SystemUpdater";
    static SystemUpdater systemUpdater;
    private final WeakReference<Context> mContext;
    ServiceConnection mServiceConnection;

    /* loaded from: classes3.dex */
    public interface CheckCallback {
        void onReuslt(UpdateConfig updateConfig);
    }

    /* loaded from: classes3.dex */
    public interface CleanUpPreviousUpdateFinishCallback {
        void onFinish(boolean z);
    }

    /* loaded from: classes3.dex */
    public interface UpdateCallback {
        void onPayloadApplicationComplete(int i);

        void onStatusUpdate(int i, float f);
    }

    private SystemUpdater(Context context) {
        this.mContext = new WeakReference<>(context);
    }

    public static SystemUpdater getInstance(Context context) {
        if (systemUpdater == null) {
            systemUpdater = new SystemUpdater(context);
        }
        return systemUpdater;
    }

    public void check(final CheckCallback checkCallback) {
        Log.i(TAG, "check");
        if (checkCallback != null && this.mServiceConnection == null) {
            ServiceConnection serviceConnection = new ServiceConnection() { // from class: tech.rabbit.r1systemupdater.SystemUpdater.1
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    Log.i(SystemUpdater.TAG, "check onServiceConnected");
                    try {
                        IUpdateService.Stub.asInterface(iBinder).check(new ICheckCallback.Stub() { // from class: tech.rabbit.r1systemupdater.SystemUpdater.1.1
                            @Override // tech.rabbit.r1systemupdater.service.ICheckCallback
                            public void onResult(UpdateConfig updateConfig) {
                                Log.i(SystemUpdater.TAG, "check onResult");
                                SystemUpdater.this.onCheckResult(checkCallback, updateConfig);
                            }
                        });
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        Log.i(SystemUpdater.TAG, "check call engine check fail");
                        SystemUpdater.this.onCheckResult(checkCallback, null);
                    }
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    Log.i(SystemUpdater.TAG, "check onServiceDisconnected");
                    SystemUpdater.this.onCheckResult(checkCallback, null);
                }
            };
            this.mServiceConnection = serviceConnection;
            if (bindService(serviceConnection)) {
                return;
            }
            Log.i(TAG, "check bindService fail");
            onCheckResult(checkCallback, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCheckResult(CheckCallback checkCallback, UpdateConfig updateConfig) {
        this.mContext.get().unbindService(this.mServiceConnection);
        this.mServiceConnection = null;
        checkCallback.onReuslt(updateConfig);
    }

    public void waitCleanUpPreviousUpdateFinish(CleanUpPreviousUpdateFinishCallback cleanUpPreviousUpdateFinishCallback) {
        if (this.mServiceConnection != null) {
            cleanUpPreviousUpdateFinishCallback.onFinish(true);
            return;
        }
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(cleanUpPreviousUpdateFinishCallback);
        this.mServiceConnection = anonymousClass2;
        if (bindService(anonymousClass2)) {
            return;
        }
        Log.i(TAG, "waitCleanUpPreviousUpdateFinish bindService fail");
        this.mServiceConnection = null;
        cleanUpPreviousUpdateFinishCallback.onFinish(false);
    }

    /* renamed from: tech.rabbit.r1systemupdater.SystemUpdater$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements ServiceConnection {
        final /* synthetic */ CleanUpPreviousUpdateFinishCallback val$callback;

        AnonymousClass2(CleanUpPreviousUpdateFinishCallback cleanUpPreviousUpdateFinishCallback) {
            this.val$callback = cleanUpPreviousUpdateFinishCallback;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                IUpdateService.Stub.asInterface(iBinder).bind(new IUpdateCallback.Stub() { // from class: tech.rabbit.r1systemupdater.SystemUpdater.2.1
                    int firstStatus = -1;
                    final Runnable timeoutRunnable = new Runnable() { // from class: tech.rabbit.r1systemupdater.SystemUpdater.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.i(SystemUpdater.TAG, "waitCleanUpPreviousUpdateFinish timeout");
                            ((Context) SystemUpdater.this.mContext.get()).unbindService(SystemUpdater.this.mServiceConnection);
                            SystemUpdater.this.mServiceConnection = null;
                            AnonymousClass2.this.val$callback.onFinish(false);
                        }
                    };
                    final Handler handler = new Handler(Looper.getMainLooper());

                    @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
                    public void onStatusUpdate(int i, float f) throws RemoteException {
                        if (this.firstStatus == -1) {
                            Log.i(SystemUpdater.TAG, "waitCleanUpPreviousUpdateFinish onStatusUpdate " + UpdateEngineStatuses.getStatusText(i) + " " + f);
                            this.firstStatus = i;
                            if (i != 11) {
                                ((Context) SystemUpdater.this.mContext.get()).unbindService(SystemUpdater.this.mServiceConnection);
                                SystemUpdater.this.mServiceConnection = null;
                                AnonymousClass2.this.val$callback.onFinish(true);
                            } else {
                                Log.i(SystemUpdater.TAG, "waitCleanUpPreviousUpdateFinish waiting for CLEANUP_PREVIOUS_UPDATE finish");
                                this.handler.postDelayed(this.timeoutRunnable, 120000L);
                            }
                        }
                    }

                    @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
                    public void onPayloadApplicationComplete(int i) throws RemoteException {
                        if (this.firstStatus == 11) {
                            Log.i(SystemUpdater.TAG, "waitCleanUpPreviousUpdateFinish CLEANUP_PREVIOUS_UPDATE finished");
                            this.handler.removeCallbacks(this.timeoutRunnable);
                            ((Context) SystemUpdater.this.mContext.get()).unbindService(SystemUpdater.this.mServiceConnection);
                            SystemUpdater.this.mServiceConnection = null;
                            AnonymousClass2.this.val$callback.onFinish(true);
                        }
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
                Log.i(SystemUpdater.TAG, "waitCleanUpPreviousUpdateFinish fail");
                ((Context) SystemUpdater.this.mContext.get()).unbindService(SystemUpdater.this.mServiceConnection);
                SystemUpdater.this.mServiceConnection = null;
                this.val$callback.onFinish(false);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(SystemUpdater.TAG, "waitCleanUpPreviousUpdateFinish onServiceDisconnected");
            ((Context) SystemUpdater.this.mContext.get()).unbindService(SystemUpdater.this.mServiceConnection);
            SystemUpdater.this.mServiceConnection = null;
            this.val$callback.onFinish(false);
        }
    }

    public void update(final UpdateConfig updateConfig, final UpdateCallback updateCallback) {
        Log.i(TAG, "update");
        if (updateCallback == null) {
            return;
        }
        if (updateConfig == null) {
            Log.i(TAG, "update config null");
            updateCallback.onPayloadApplicationComplete(-2);
            return;
        }
        Log.i(TAG, "update mServiceConnection: " + this.mServiceConnection);
        if (this.mServiceConnection != null) {
            return;
        }
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: tech.rabbit.r1systemupdater.SystemUpdater.3
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                final IUpdateService asInterface = IUpdateService.Stub.asInterface(iBinder);
                try {
                    asInterface.bind(new IUpdateCallback.Stub() { // from class: tech.rabbit.r1systemupdater.SystemUpdater.3.1
                        @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
                        public void onStatusUpdate(int i, float f) throws RemoteException {
                            Log.i(SystemUpdater.TAG, "update onStatusUpdate " + UpdateEngineStatuses.getStatusText(i) + " " + f);
                            updateCallback.onStatusUpdate(i, f);
                            if (i == 0) {
                                asInterface.update(updateConfig);
                            }
                        }

                        @Override // tech.rabbit.r1systemupdater.service.IUpdateCallback
                        public void onPayloadApplicationComplete(int i) throws RemoteException {
                            Log.i(SystemUpdater.TAG, "update onPayloadApplicationComplete " + UpdateEngineErrorCodes.getCodeName(i));
                            asInterface.unbind();
                            SystemUpdater.this.onUpdateResult(updateCallback, i);
                        }
                    });
                } catch (RemoteException e) {
                    e.printStackTrace();
                    Log.i(SystemUpdater.TAG, "update call engine update fail");
                    SystemUpdater.this.onUpdateResult(updateCallback, -2);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.i(SystemUpdater.TAG, "update onServiceDisconnected");
                SystemUpdater.this.onUpdateResult(updateCallback, -2);
            }
        };
        this.mServiceConnection = serviceConnection;
        if (bindService(serviceConnection)) {
            return;
        }
        Log.i(TAG, "update bindService fail");
        onUpdateResult(updateCallback, -2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateResult(UpdateCallback updateCallback, int i) {
        this.mContext.get().unbindService(this.mServiceConnection);
        this.mServiceConnection = null;
        updateCallback.onPayloadApplicationComplete(i);
    }

    private boolean bindService(ServiceConnection serviceConnection) {
        Intent intent = new Intent();
        intent.setPackage("tech.rabbit.r1systemupdater");
        intent.setAction("tech.rabbit.r1systemupdater.service");
        return this.mContext.get().bindService(intent, serviceConnection, 1);
    }
}
