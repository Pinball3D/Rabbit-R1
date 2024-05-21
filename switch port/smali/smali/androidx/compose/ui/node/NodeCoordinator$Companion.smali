.class public final Landroidx/compose/ui/node/NodeCoordinator$Companion;
.super Ljava/lang/Object;
.source "NodeCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0017\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeCoordinator$Companion;",
        "",
        "()V",
        "ExpectAttachedLayoutCoordinates",
        "",
        "PointerInputSource",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "getPointerInputSource",
        "()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "SemanticsSource",
        "getSemanticsSource",
        "UnmeasuredError",
        "graphicsLayerScope",
        "Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;",
        "onCommitAffectingLayer",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "",
        "onCommitAffectingLayerParams",
        "tmpLayerPositionalProperties",
        "Landroidx/compose/ui/node/LayerPositionalProperties;",
        "tmpMatrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "[F",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPointerInputSource()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 0

    .line 1232
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->access$getPointerInputSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    move-result-object p0

    return-object p0
.end method

.method public final getSemanticsSource()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 0

    .line 1257
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->access$getSemanticsSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    move-result-object p0

    return-object p0
.end method
