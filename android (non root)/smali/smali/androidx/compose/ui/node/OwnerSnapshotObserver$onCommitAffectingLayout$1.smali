.class final Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OwnerSnapshotObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/OwnerSnapshotObserver;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/node/LayoutNode;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->invoke(Landroidx/compose/ui/node/LayoutNode;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    const-string p0, "layoutNode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isValidOwnerScope()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p1, v1, p0, v0}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
