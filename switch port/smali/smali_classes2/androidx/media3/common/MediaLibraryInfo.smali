.class public final Landroidx/media3/common/MediaLibraryInfo;
.super Ljava/lang/Object;
.source "MediaLibraryInfo.java"


# static fields
.field public static final ASSERTIONS_ENABLED:Z = true

.field public static final TAG:Ljava/lang/String; = "AndroidXMedia3"

.field public static final TRACE_ENABLED:Z = true

.field public static final VERSION:Ljava/lang/String; = "1.1.1"

.field public static final VERSION_INT:I = 0x3baa1154

.field public static final VERSION_SLASHY:Ljava/lang/String; = "AndroidXMedia3/1.1.1"

.field private static final registeredModules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredModulesString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/media3/common/MediaLibraryInfo;->registeredModules:Ljava/util/HashSet;

    const-string v0, "media3.common"

    sput-object v0, Landroidx/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized registerModule(Ljava/lang/String;)V
    .locals 3

    const-class v0, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->registeredModules:Ljava/util/HashSet;

    .line 74
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroidx/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registeredModules()Ljava/lang/String;
    .locals 2

    const-class v0, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
