.class final Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;
.super Ljava/lang/Object;
.source "SnackbarHost.kt"

# interfaces
.implements Landroidx/compose/material3/SnackbarData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SnackbarHostState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnackbarDataImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;",
        "Landroidx/compose/material3/SnackbarData;",
        "visuals",
        "Landroidx/compose/material3/SnackbarVisuals;",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "Landroidx/compose/material3/SnackbarResult;",
        "(Landroidx/compose/material3/SnackbarVisuals;Lkotlinx/coroutines/CancellableContinuation;)V",
        "getVisuals",
        "()Landroidx/compose/material3/SnackbarVisuals;",
        "dismiss",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "performAction",
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
.field private final continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroidx/compose/material3/SnackbarResult;",
            ">;"
        }
    .end annotation
.end field

.field private final visuals:Landroidx/compose/material3/SnackbarVisuals;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarVisuals;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarVisuals;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroidx/compose/material3/SnackbarResult;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "visuals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 174
    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p0, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Landroidx/compose/material3/SnackbarResult;->Dismissed:Landroidx/compose/material3/SnackbarResult;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    check-cast p1, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 183
    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->getVisuals()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->getVisuals()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 184
    iget-object p1, p1, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getVisuals()Landroidx/compose/material3/SnackbarVisuals;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->getVisuals()Landroidx/compose/material3/SnackbarVisuals;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public performAction()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 170
    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p0, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
