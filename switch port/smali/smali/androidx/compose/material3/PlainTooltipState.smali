.class public final Landroidx/compose/material3/PlainTooltipState;
.super Ljava/lang/Object;
.source "Tooltip.kt"

# interfaces
.implements Landroidx/compose/material3/TooltipState;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/PlainTooltipState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,770:1\n76#2:771\n102#2,2:772\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/PlainTooltipState\n*L\n493#1:771\n493#1:772,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u000b\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rR+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@PX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/material3/PlainTooltipState;",
        "Landroidx/compose/material3/TooltipState;",
        "()V",
        "<set-?>",
        "",
        "isVisible",
        "()Z",
        "setVisible$material3_release",
        "(Z)V",
        "isVisible$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "dismiss",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "show",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final isVisible$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 493
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/PlainTooltipState;->isVisible$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public dismiss(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 513
    sget-object v0, Landroidx/compose/material3/TooltipSync;->INSTANCE:Landroidx/compose/material3/TooltipSync;

    check-cast p0, Landroidx/compose/material3/TooltipState;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/material3/TooltipSync;->dismissCurrentTooltip(Landroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/PlainTooltipState;->isVisible$delegate:Landroidx/compose/runtime/MutableState;

    .line 493
    check-cast p0, Landroidx/compose/runtime/State;

    .line 771
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setVisible$material3_release(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/PlainTooltipState;->isVisible$delegate:Landroidx/compose/runtime/MutableState;

    .line 493
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 772
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public show(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 502
    sget-object v0, Landroidx/compose/material3/TooltipSync;->INSTANCE:Landroidx/compose/material3/TooltipSync;

    .line 503
    check-cast p0, Landroidx/compose/material3/TooltipState;

    const/4 v1, 0x0

    .line 502
    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/material3/TooltipSync;->show(Landroidx/compose/material3/TooltipState;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
