.class public final Landroidx/activity/compose/ManagedActivityResultLauncher;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "ActivityResultRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/activity/result/ActivityResultLauncher<",
        "TI;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B/\u0008\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u0008H\u0016J\u001f\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\u000cH\u0017R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/activity/compose/ManagedActivityResultLauncher;",
        "I",
        "O",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "launcher",
        "Landroidx/activity/compose/ActivityResultLauncherHolder;",
        "contract",
        "Landroidx/compose/runtime/State;",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V",
        "getContract",
        "launch",
        "",
        "input",
        "options",
        "Landroidx/core/app/ActivityOptionsCompat;",
        "(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V",
        "unregister",
        "activity-compose_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final contract:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;>;"
        }
    .end annotation
.end field

.field private final launcher:Landroidx/activity/compose/ActivityResultLauncherHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/compose/ActivityResultLauncherHolder<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/compose/ActivityResultLauncherHolder<",
            "TI;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;>;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/ManagedActivityResultLauncher;->launcher:Landroidx/activity/compose/ActivityResultLauncherHolder;

    iput-object p2, p0, Landroidx/activity/compose/ManagedActivityResultLauncher;->contract:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/compose/ManagedActivityResultLauncher;->contract:Landroidx/compose/runtime/State;

    .line 147
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/result/contract/ActivityResultContract;

    return-object p0
.end method

.method public launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/compose/ManagedActivityResultLauncher;->launcher:Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/activity/compose/ActivityResultLauncherHolder;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void
.end method

.method public unregister()V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Registration is automatically handled by rememberLauncherForActivityResult"
    .end annotation

    .line 137
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Registration is automatically handled by rememberLauncherForActivityResult"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
