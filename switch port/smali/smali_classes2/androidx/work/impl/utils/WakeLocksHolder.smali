.class final Landroidx/work/impl/utils/WakeLocksHolder;
.super Ljava/lang/Object;
.source "WakeLocks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/work/impl/utils/WakeLocksHolder;",
        "",
        "()V",
        "wakeLocks",
        "Ljava/util/WeakHashMap;",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "",
        "getWakeLocks",
        "()Ljava/util/WeakHashMap;",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/utils/WakeLocksHolder;

.field private static final wakeLocks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/PowerManager$WakeLock;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/WakeLocksHolder;

    invoke-direct {v0}, Landroidx/work/impl/utils/WakeLocksHolder;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->INSTANCE:Landroidx/work/impl/utils/WakeLocksHolder;

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/WakeLocksHolder;->wakeLocks:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWakeLocks()Ljava/util/WeakHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/os/PowerManager$WakeLock;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/work/impl/utils/WakeLocksHolder;->wakeLocks:Ljava/util/WeakHashMap;

    return-object p0
.end method
