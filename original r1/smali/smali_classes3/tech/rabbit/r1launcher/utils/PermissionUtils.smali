.class public final Ltech/rabbit/r1launcher/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUtils.kt\ntech/rabbit/r1launcher/utils/PermissionUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,56:1\n37#2,2:57\n*S KotlinDebug\n*F\n+ 1 PermissionUtils.kt\ntech/rabbit/r1launcher/utils/PermissionUtils\n*L\n54#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/utils/PermissionUtils;",
        "",
        "()V",
        "PERMISSIONS",
        "",
        "",
        "REQUEST_CODE",
        "",
        "checkAndAutoRequestPermissions",
        "",
        "activity",
        "Landroidx/core/app/ComponentActivity;",
        "checkPermissionsAllGranted",
        "",
        "requestPermissions",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/utils/PermissionUtils;

.field private static final PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_CODE:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ltech/rabbit/r1launcher/utils/PermissionUtils;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/utils/PermissionUtils;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/utils/PermissionUtils;->INSTANCE:Ltech/rabbit/r1launcher/utils/PermissionUtils;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "android.permission.BLUETOOTH_CONNECT"

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    const-string v8, "android.permission.BLUETOOTH_SCAN"

    const-string v9, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v10, "android.permission.WRITE_SETTINGS"

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v12, "android.permission.ACCESS_FINE_LOCATION"

    const-string v13, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v14, "android.permission.NETWORK_SETTINGS"

    const-string v15, "android.permission.NETWORK_STACK"

    const-string v16, "android.permission.NETWORK_SETUP_WIZARD"

    .line 32
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/utils/PermissionUtils;->PERMISSIONS:Ljava/util/List;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/utils/PermissionUtils;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkPermissionsAllGranted(Landroidx/core/app/ComponentActivity;)Z
    .locals 2

    sget-object p0, Ltech/rabbit/r1launcher/utils/PermissionUtils;->PERMISSIONS:Ljava/util/List;

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final requestPermissions(Landroidx/core/app/ComponentActivity;)V
    .locals 1

    .line 54
    check-cast p1, Landroid/app/Activity;

    sget-object p0, Ltech/rabbit/r1launcher/utils/PermissionUtils;->PERMISSIONS:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 v0, 0xc8

    .line 54
    invoke-static {p1, p0, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final checkAndAutoRequestPermissions(Landroidx/core/app/ComponentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/utils/PermissionUtils;->checkPermissionsAllGranted(Landroidx/core/app/ComponentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/utils/PermissionUtils;->requestPermissions(Landroidx/core/app/ComponentActivity;)V

    :cond_0
    return-void
.end method
