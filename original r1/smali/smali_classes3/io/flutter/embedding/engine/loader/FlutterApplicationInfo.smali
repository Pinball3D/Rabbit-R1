.class public final Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;
.super Ljava/lang/Object;
.source "FlutterApplicationInfo.java"


# static fields
.field private static final DEFAULT_AOT_SHARED_LIBRARY_NAME:Ljava/lang/String; = "libapp.so"

.field private static final DEFAULT_FLUTTER_ASSETS_DIR:Ljava/lang/String; = "flutter_assets"

.field private static final DEFAULT_ISOLATE_SNAPSHOT_DATA:Ljava/lang/String; = "isolate_snapshot_data"

.field private static final DEFAULT_VM_SNAPSHOT_DATA:Ljava/lang/String; = "vm_snapshot_data"


# instance fields
.field public final aotSharedLibraryName:Ljava/lang/String;

.field final automaticallyRegisterPlugins:Z

.field public final domainNetworkPolicy:Ljava/lang/String;

.field public final flutterAssetsDir:Ljava/lang/String;

.field public final isolateSnapshotData:Ljava/lang/String;

.field public final nativeLibraryDir:Ljava/lang/String;

.field public final vmSnapshotData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "libapp.so"

    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->aotSharedLibraryName:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "vm_snapshot_data"

    :cond_1
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->vmSnapshotData:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, "isolate_snapshot_data"

    :cond_2
    iput-object p3, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->isolateSnapshotData:Ljava/lang/String;

    if-nez p4, :cond_3

    const-string p4, "flutter_assets"

    :cond_3
    iput-object p4, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    iput-object p6, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez p5, :cond_4

    const-string p5, ""

    :cond_4
    iput-object p5, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->domainNetworkPolicy:Ljava/lang/String;

    iput-boolean p7, p0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->automaticallyRegisterPlugins:Z

    return-void
.end method
