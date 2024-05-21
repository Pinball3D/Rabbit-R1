package io.flutter.embedding.engine.loader;

/* loaded from: classes3.dex */
public final class FlutterApplicationInfo {
    private static final String DEFAULT_AOT_SHARED_LIBRARY_NAME = "libapp.so";
    private static final String DEFAULT_FLUTTER_ASSETS_DIR = "flutter_assets";
    private static final String DEFAULT_ISOLATE_SNAPSHOT_DATA = "isolate_snapshot_data";
    private static final String DEFAULT_VM_SNAPSHOT_DATA = "vm_snapshot_data";
    public final String aotSharedLibraryName;
    final boolean automaticallyRegisterPlugins;
    public final String domainNetworkPolicy;
    public final String flutterAssetsDir;
    public final String isolateSnapshotData;
    public final String nativeLibraryDir;
    public final String vmSnapshotData;

    public FlutterApplicationInfo(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        this.aotSharedLibraryName = str == null ? DEFAULT_AOT_SHARED_LIBRARY_NAME : str;
        this.vmSnapshotData = str2 == null ? DEFAULT_VM_SNAPSHOT_DATA : str2;
        this.isolateSnapshotData = str3 == null ? DEFAULT_ISOLATE_SNAPSHOT_DATA : str3;
        this.flutterAssetsDir = str4 == null ? DEFAULT_FLUTTER_ASSETS_DIR : str4;
        this.nativeLibraryDir = str6;
        this.domainNetworkPolicy = str5 == null ? "" : str5;
        this.automaticallyRegisterPlugins = z;
    }
}
