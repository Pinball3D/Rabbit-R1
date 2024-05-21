.class public interface abstract Landroidx/compose/ui/platform/ViewRootForTest;
.super Ljava/lang/Object;
.source "ViewRootForTest.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/RootForTest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewRootForTest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000 \r2\u00020\u0001:\u0001\rJ\u0008\u0010\u000b\u001a\u00020\u000cH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewRootForTest;",
        "Landroidx/compose/ui/node/RootForTest;",
        "hasPendingMeasureOrLayout",
        "",
        "getHasPendingMeasureOrLayout",
        "()Z",
        "isLifecycleInResumedState",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "invalidateDescendants",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/ViewRootForTest$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    sput-object v0, Landroidx/compose/ui/platform/ViewRootForTest;->Companion:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    return-void
.end method


# virtual methods
.method public abstract getHasPendingMeasureOrLayout()Z
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract invalidateDescendants()V
.end method

.method public abstract isLifecycleInResumedState()Z
.end method
