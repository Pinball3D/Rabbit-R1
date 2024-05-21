.class public final Landroidx/compose/ui/node/OnPositionedDispatcher;
.super Ljava/lang/Object;
.source "OnPositionedDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnPositionedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnPositionedDispatcher.kt\nandroidx/compose/ui/node/OnPositionedDispatcher\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n*L\n1#1,75:1\n1182#2:76\n1161#2,2:77\n728#3,2:79\n728#3,2:81\n492#3,11:83\n460#3,11:95\n197#4:94\n*S KotlinDebug\n*F\n+ 1 OnPositionedDispatcher.kt\nandroidx/compose/ui/node/OnPositionedDispatcher\n*L\n26#1:76\n26#1:77,2\n31#1:79,2\n37#1:81,2\n44#1:83,11\n58#1:95,11\n58#1:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/node/OnPositionedDispatcher;",
        "",
        "()V",
        "layoutNodes",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "dispatch",
        "",
        "dispatchHierarchy",
        "layoutNode",
        "isNotEmpty",
        "",
        "onNodePositioned",
        "node",
        "onRootNodePositioned",
        "rootNode",
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
.field public static final Companion:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;


# instance fields
.field private final layoutNodes:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->Companion:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method private final dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->dispatchOnPositionedCallbacks$ui_release()V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->setNeedsOnPositionedDispatch$ui_release(Z)V

    .line 94
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    .line 101
    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 59
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 43
    sget-object v1, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;->INSTANCE:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;

    check-cast v1, Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 84
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 87
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    .line 89
    :cond_0
    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 45
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNeedsOnPositionedDispatch$ui_release()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->dispatchHierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 28
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method public final onNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 79
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 32
    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/LayoutNode;->setNeedsOnPositionedDispatch$ui_release(Z)V

    return-void
.end method

.method public final onRootNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const-string v0, "rootNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object p0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->layoutNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 81
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 38
    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/LayoutNode;->setNeedsOnPositionedDispatch$ui_release(Z)V

    return-void
.end method
