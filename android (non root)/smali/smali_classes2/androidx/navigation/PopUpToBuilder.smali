.class public final Landroidx/navigation/PopUpToBuilder;
.super Ljava/lang/Object;
.source "NavOptionsBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavOptionsDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R&\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/navigation/PopUpToBuilder;",
        "",
        "()V",
        "inclusive",
        "",
        "getInclusive",
        "()Z",
        "setInclusive",
        "(Z)V",
        "<set-?>",
        "saveState",
        "getSaveState",
        "setSaveState",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private inclusive:Z

.field private saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInclusive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/PopUpToBuilder;->inclusive:Z

    return p0
.end method

.method public final getSaveState()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/PopUpToBuilder;->saveState:Z

    return p0
.end method

.method public final setInclusive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/PopUpToBuilder;->inclusive:Z

    return-void
.end method

.method public final setSaveState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/PopUpToBuilder;->saveState:Z

    return-void
.end method
