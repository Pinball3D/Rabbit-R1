.class final Landroidx/compose/material3/FadeInFadeOutState;
.super Ljava/lang/Object;
.source "SnackbarHost.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R&\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/material3/FadeInFadeOutState;",
        "T",
        "",
        "()V",
        "current",
        "getCurrent",
        "()Ljava/lang/Object;",
        "setCurrent",
        "(Ljava/lang/Object;)V",
        "items",
        "",
        "Landroidx/compose/material3/FadeInFadeOutAnimationItem;",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "scope",
        "Landroidx/compose/runtime/RecomposeScope;",
        "getScope",
        "()Landroidx/compose/runtime/RecomposeScope;",
        "setScope",
        "(Landroidx/compose/runtime/RecomposeScope;)V",
        "material3_release"
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
.field private current:Ljava/lang/Object;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/FadeInFadeOutAnimationItem<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private scope:Landroidx/compose/runtime/RecomposeScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCurrent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    return-object p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/material3/FadeInFadeOutAnimationItem<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/List;

    return-object p0
.end method

.method public final getScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScope;

    return-object p0
.end method

.method public final setCurrent(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/material3/FadeInFadeOutAnimationItem<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/List;

    return-void
.end method

.method public final setScope(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScope;

    return-void
.end method
