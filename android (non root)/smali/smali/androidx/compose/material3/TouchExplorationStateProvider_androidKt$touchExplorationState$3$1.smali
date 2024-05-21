.class final Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TouchExplorationStateProvider.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;->touchExplorationState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Landroidx/compose/material3/Listener;


# direct methods
.method constructor <init>(Landroidx/compose/material3/Listener;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$3$1;->$listener:Landroidx/compose/material3/Listener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$3$1;->$listener:Landroidx/compose/material3/Listener;

    .line 60
    invoke-virtual {p0}, Landroidx/compose/material3/Listener;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$3$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
