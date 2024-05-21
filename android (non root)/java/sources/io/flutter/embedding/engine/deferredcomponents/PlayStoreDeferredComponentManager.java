package io.flutter.embedding.engine.deferredcomponents;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.android.play.core.splitinstall.SplitInstallException;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.google.android.play.core.splitinstall.SplitInstallManagerFactory;
import com.google.android.play.core.splitinstall.SplitInstallRequest;
import com.google.android.play.core.splitinstall.SplitInstallSessionState;
import com.google.android.play.core.splitinstall.SplitInstallStateUpdatedListener;
import com.google.android.play.core.tasks.OnFailureListener;
import com.google.android.play.core.tasks.OnSuccessListener;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.loader.ApplicationInfoLoader;
import io.flutter.embedding.engine.loader.FlutterApplicationInfo;
import io.flutter.embedding.engine.systemchannels.DeferredComponentChannel;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes3.dex */
public class PlayStoreDeferredComponentManager implements DeferredComponentManager {
    public static final String MAPPING_KEY = DeferredComponentManager.class.getName() + ".loadingUnitMapping";
    private static final String TAG = "PlayStoreDeferredComponentManager";
    private DeferredComponentChannel channel;
    private Context context;
    private FlutterApplicationInfo flutterApplicationInfo;
    private FlutterJNI flutterJNI;
    private FeatureInstallStateUpdatedListener listener;
    protected SparseArray<String> loadingUnitIdToComponentNames;
    protected SparseArray<String> loadingUnitIdToSharedLibraryNames;
    private Map<String, Integer> nameToSessionId;
    private SparseIntArray sessionIdToLoadingUnitId;
    private SparseArray<String> sessionIdToName;
    private SparseArray<String> sessionIdToState;
    private SplitInstallManager splitInstallManager;

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public void setDeferredComponentChannel(DeferredComponentChannel deferredComponentChannel) {
        this.channel = deferredComponentChannel;
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public void setJNI(FlutterJNI flutterJNI) {
        this.flutterJNI = flutterJNI;
    }

    /* loaded from: classes3.dex */
    private class FeatureInstallStateUpdatedListener implements SplitInstallStateUpdatedListener {
        private FeatureInstallStateUpdatedListener() {
        }

        public void onStateUpdate(SplitInstallSessionState splitInstallSessionState) {
            int sessionId = splitInstallSessionState.sessionId();
            if (PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId) != null) {
                switch (splitInstallSessionState.status()) {
                    case 1:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) install pending.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "pending");
                        return;
                    case 2:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) downloading.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "downloading");
                        return;
                    case 3:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) downloaded.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "downloaded");
                        return;
                    case 4:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) installing.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "installing");
                        return;
                    case 5:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) install successfully.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager playStoreDeferredComponentManager = PlayStoreDeferredComponentManager.this;
                        playStoreDeferredComponentManager.loadAssets(playStoreDeferredComponentManager.sessionIdToLoadingUnitId.get(sessionId), (String) PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId));
                        if (PlayStoreDeferredComponentManager.this.sessionIdToLoadingUnitId.get(sessionId) > 0) {
                            PlayStoreDeferredComponentManager playStoreDeferredComponentManager2 = PlayStoreDeferredComponentManager.this;
                            playStoreDeferredComponentManager2.loadDartLibrary(playStoreDeferredComponentManager2.sessionIdToLoadingUnitId.get(sessionId), (String) PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId));
                        }
                        if (PlayStoreDeferredComponentManager.this.channel != null) {
                            PlayStoreDeferredComponentManager.this.channel.completeInstallSuccess((String) PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId));
                        }
                        PlayStoreDeferredComponentManager.this.sessionIdToName.delete(sessionId);
                        PlayStoreDeferredComponentManager.this.sessionIdToLoadingUnitId.delete(sessionId);
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "installed");
                        return;
                    case 6:
                        Log.e(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) install failed with: %s", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId), Integer.valueOf(splitInstallSessionState.errorCode())));
                        PlayStoreDeferredComponentManager.this.flutterJNI.deferredComponentInstallFailure(PlayStoreDeferredComponentManager.this.sessionIdToLoadingUnitId.get(sessionId), "Module install failed with " + splitInstallSessionState.errorCode(), true);
                        if (PlayStoreDeferredComponentManager.this.channel != null) {
                            PlayStoreDeferredComponentManager.this.channel.completeInstallError((String) PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), "Android Deferred Component failed to install.");
                        }
                        PlayStoreDeferredComponentManager.this.sessionIdToName.delete(sessionId);
                        PlayStoreDeferredComponentManager.this.sessionIdToLoadingUnitId.delete(sessionId);
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "failed");
                        return;
                    case 7:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) install canceled.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        if (PlayStoreDeferredComponentManager.this.channel != null) {
                            PlayStoreDeferredComponentManager.this.channel.completeInstallError((String) PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), "Android Deferred Component installation canceled.");
                        }
                        PlayStoreDeferredComponentManager.this.sessionIdToName.delete(sessionId);
                        PlayStoreDeferredComponentManager.this.sessionIdToLoadingUnitId.delete(sessionId);
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "cancelled");
                        return;
                    case 8:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) install requires user confirmation.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "requiresUserConfirmation");
                        return;
                    case 9:
                        Log.d(PlayStoreDeferredComponentManager.TAG, String.format("Module \"%s\" (sessionId %d) install canceling.", PlayStoreDeferredComponentManager.this.sessionIdToName.get(sessionId), Integer.valueOf(sessionId)));
                        PlayStoreDeferredComponentManager.this.sessionIdToState.put(sessionId, "canceling");
                        return;
                    default:
                        Log.d(PlayStoreDeferredComponentManager.TAG, "Unknown status: " + splitInstallSessionState.status());
                        return;
                }
            }
        }
    }

    public PlayStoreDeferredComponentManager(Context context, FlutterJNI flutterJNI) {
        this.context = context;
        this.flutterJNI = flutterJNI;
        this.flutterApplicationInfo = ApplicationInfoLoader.load(context);
        this.splitInstallManager = SplitInstallManagerFactory.create(context);
        FeatureInstallStateUpdatedListener featureInstallStateUpdatedListener = new FeatureInstallStateUpdatedListener();
        this.listener = featureInstallStateUpdatedListener;
        this.splitInstallManager.registerListener(featureInstallStateUpdatedListener);
        this.sessionIdToName = new SparseArray<>();
        this.sessionIdToLoadingUnitId = new SparseIntArray();
        this.sessionIdToState = new SparseArray<>();
        this.nameToSessionId = new HashMap();
        this.loadingUnitIdToComponentNames = new SparseArray<>();
        this.loadingUnitIdToSharedLibraryNames = new SparseArray<>();
        initLoadingUnitMappingToComponentNames();
    }

    private boolean verifyJNI() {
        if (this.flutterJNI != null) {
            return true;
        }
        Log.e(TAG, "No FlutterJNI provided. `setJNI` must be called on the DeferredComponentManager before attempting to load dart libraries or invoking with platform channels.");
        return false;
    }

    private ApplicationInfo getApplicationInfo() {
        try {
            return this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private void initLoadingUnitMappingToComponentNames() {
        Bundle bundle;
        String str = DeferredComponentManager.class.getName() + ".loadingUnitMapping";
        ApplicationInfo applicationInfo = getApplicationInfo();
        if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
            return;
        }
        String str2 = MAPPING_KEY;
        String string = bundle.getString(str2, null);
        if (string == null) {
            Log.e(TAG, "No loading unit to dynamic feature module name found. Ensure '" + str2 + "' is defined in the base module's AndroidManifest.");
            return;
        }
        if (string.equals("")) {
            return;
        }
        for (String str3 : string.split(",")) {
            String[] split = str3.split(":", -1);
            int parseInt = Integer.parseInt(split[0]);
            this.loadingUnitIdToComponentNames.put(parseInt, split[1]);
            if (split.length > 2) {
                this.loadingUnitIdToSharedLibraryNames.put(parseInt, split[2]);
            }
        }
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public void installDeferredComponent(final int i, final String str) {
        final String str2 = str != null ? str : this.loadingUnitIdToComponentNames.get(i);
        if (str2 == null) {
            Log.e(TAG, "Deferred component name was null and could not be resolved from loading unit id.");
        } else if (str2.equals("") && i > 0) {
            loadDartLibrary(i, str2);
        } else {
            this.splitInstallManager.startInstall(SplitInstallRequest.newBuilder().addModule(str2).build()).addOnSuccessListener(new OnSuccessListener() { // from class: io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager$$ExternalSyntheticLambda0
                public final void onSuccess(Object obj) {
                    PlayStoreDeferredComponentManager.this.m5602x3d4be899(str2, i, (Integer) obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager$$ExternalSyntheticLambda1
                public final void onFailure(Exception exc) {
                    PlayStoreDeferredComponentManager.this.m5603x6bfd52b8(i, str, exc);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$installDeferredComponent$0$io-flutter-embedding-engine-deferredcomponents-PlayStoreDeferredComponentManager, reason: not valid java name */
    public /* synthetic */ void m5602x3d4be899(String str, int i, Integer num) {
        this.sessionIdToName.put(num.intValue(), str);
        this.sessionIdToLoadingUnitId.put(num.intValue(), i);
        if (this.nameToSessionId.containsKey(str)) {
            this.sessionIdToState.remove(this.nameToSessionId.get(str).intValue());
        }
        this.nameToSessionId.put(str, num);
        this.sessionIdToState.put(num.intValue(), "Requested");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$installDeferredComponent$1$io-flutter-embedding-engine-deferredcomponents-PlayStoreDeferredComponentManager, reason: not valid java name */
    public /* synthetic */ void m5603x6bfd52b8(int i, String str, Exception exc) {
        SplitInstallException splitInstallException = (SplitInstallException) exc;
        int errorCode = splitInstallException.getErrorCode();
        if (errorCode == -6) {
            this.flutterJNI.deferredComponentInstallFailure(i, "Install of deferred component module \"" + str + "\" failed with a network error", true);
        } else if (errorCode == -2) {
            this.flutterJNI.deferredComponentInstallFailure(i, "Install of deferred component module \"" + str + "\" failed as it is unavailable", false);
        } else {
            this.flutterJNI.deferredComponentInstallFailure(i, String.format("Install of deferred component module \"%s\" failed with error %d: %s", str, Integer.valueOf(splitInstallException.getErrorCode()), splitInstallException.getMessage()), false);
        }
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public String getDeferredComponentInstallState(int i, String str) {
        if (str == null) {
            str = this.loadingUnitIdToComponentNames.get(i);
        }
        if (str == null) {
            Log.e(TAG, "Deferred component name was null and could not be resolved from loading unit id.");
            return "unknown";
        }
        if (this.nameToSessionId.containsKey(str)) {
            return this.sessionIdToState.get(this.nameToSessionId.get(str).intValue());
        }
        return this.splitInstallManager.getInstalledModules().contains(str) ? "installedPendingLoad" : "unknown";
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public void loadAssets(int i, String str) {
        if (verifyJNI()) {
            try {
                Context context = this.context;
                Context createPackageContext = context.createPackageContext(context.getPackageName(), 0);
                this.context = createPackageContext;
                this.flutterJNI.updateJavaAssetManager(createPackageContext.getAssets(), this.flutterApplicationInfo.flutterAssetsDir);
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public void loadDartLibrary(int i, String str) {
        if (verifyJNI() && i >= 0) {
            String str2 = this.loadingUnitIdToSharedLibraryNames.get(i);
            if (str2 == null) {
                str2 = this.flutterApplicationInfo.aotSharedLibraryName + "-" + i + ".part.so";
            }
            String str3 = Build.SUPPORTED_ABIS[0];
            String replace = str3.replace("-", "_");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            LinkedList linkedList = new LinkedList();
            linkedList.add(this.context.getFilesDir());
            for (String str4 : this.context.getApplicationInfo().splitSourceDirs) {
                linkedList.add(new File(str4));
            }
            while (!linkedList.isEmpty()) {
                File file = (File) linkedList.remove();
                if (file != null && file.isDirectory() && file.listFiles() != null) {
                    for (File file2 : file.listFiles()) {
                        linkedList.add(file2);
                    }
                } else {
                    String name = file.getName();
                    if (name.endsWith(".apk") && ((name.startsWith(str) || name.startsWith("split_config")) && name.contains(replace))) {
                        arrayList.add(file.getAbsolutePath());
                    } else if (name.equals(str2)) {
                        arrayList2.add(file.getAbsolutePath());
                    }
                }
            }
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(str2);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList3.add(((String) it.next()) + "!lib/" + str3 + "/" + str2);
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList3.add((String) it2.next());
            }
            this.flutterJNI.loadDartDeferredLibrary(i, (String[]) arrayList3.toArray(new String[arrayList3.size()]));
        }
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public boolean uninstallDeferredComponent(int i, String str) {
        if (str == null) {
            str = this.loadingUnitIdToComponentNames.get(i);
        }
        if (str == null) {
            Log.e(TAG, "Deferred component name was null and could not be resolved from loading unit id.");
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        this.splitInstallManager.deferredUninstall(arrayList);
        if (this.nameToSessionId.get(str) == null) {
            return true;
        }
        this.sessionIdToState.delete(this.nameToSessionId.get(str).intValue());
        return true;
    }

    @Override // io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager
    public void destroy() {
        this.splitInstallManager.unregisterListener(this.listener);
        this.channel = null;
        this.flutterJNI = null;
    }
}
