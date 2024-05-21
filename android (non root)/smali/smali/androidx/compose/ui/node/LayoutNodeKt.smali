.class public final Landroidx/compose/ui/node/LayoutNodeKt;
.super Ljava/lang/Object;
.source "LayoutNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0000\u001a\u000c\u0010\n\u001a\u00020\u000b*\u00020\u0008H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "DebugChanges",
        "",
        "getDebugChanges$annotations",
        "()V",
        "DefaultDensity",
        "Landroidx/compose/ui/unit/Density;",
        "add",
        "",
        "Landroidx/compose/ui/node/LayoutNode;",
        "child",
        "requireOwner",
        "Landroidx/compose/ui/node/Owner;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DebugChanges:Z = false

.field private static final DefaultDensity:Landroidx/compose/ui/unit/Density;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 70
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/LayoutNodeKt;->DefaultDensity:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public static final synthetic access$getDefaultDensity$p()Landroidx/compose/ui/unit/Density;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/LayoutNodeKt;->DefaultDensity:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public static final add(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method private static synthetic getDebugChanges$annotations()V
    .locals 0

    return-void
.end method

.method public static final requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 1448
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LayoutNode should be attached to an owner"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
