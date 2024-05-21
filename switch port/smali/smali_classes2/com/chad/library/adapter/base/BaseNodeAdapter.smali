.class public abstract Lcom/chad/library/adapter/base/BaseNodeAdapter;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "BaseNodeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0010\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u0016\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u000b2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J2\u0010\u0017\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u0017\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010!\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007JR\u0010\"\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010#\u001a\u00020\u00192\u0008\u0008\u0002\u0010$\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010\'\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u000e\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010(\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008J-\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010-J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\u0008H\u0014J\u0016\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002J\u001e\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002J$\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fJ\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0002J\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0008J\u001c\u00105\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fJ\u001e\u00106\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002J\u0010\u00107\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0016J\u0010\u00108\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0010\u00109\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0018\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u001e\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020>2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\"\u0010<\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00042\u0008\u0010?\u001a\u0004\u0018\u00010@H\u0016J\u0018\u0010A\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fH\u0016J\u0018\u0010B\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004H\u0016R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        "nodeList",
        "",
        "(Ljava/util/List;)V",
        "fullSpanNodeTypeSet",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "addData",
        "",
        "data",
        "position",
        "newData",
        "",
        "addFooterNodeProvider",
        "provider",
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider;",
        "addFullSpanNodeProvider",
        "addItemProvider",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "addNodeProvider",
        "collapse",
        "animate",
        "",
        "notify",
        "parentPayload",
        "",
        "isChangeChildCollapse",
        "collapseAndChild",
        "expand",
        "isChangeChildExpand",
        "expandAndChild",
        "expandAndCollapseOther",
        "isExpandedChild",
        "isCollapseChild",
        "expandPayload",
        "collapsePayload",
        "expandOrCollapse",
        "findParentNode",
        "node",
        "flatData",
        "list",
        "isExpanded",
        "(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;",
        "isFixedViewType",
        "type",
        "nodeAddData",
        "parentNode",
        "childIndex",
        "nodeRemoveData",
        "childNode",
        "nodeReplaceChildData",
        "nodeSetData",
        "removeAt",
        "removeChildAt",
        "removeNodesAt",
        "setData",
        "index",
        "setDiffNewData",
        "diffResult",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "setList",
        "setNewInstance",
        "com.github.CymChad.brvah"
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
.field private final fullSpanNodeTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseNodeAdapter;->fullSpanNodeTypeSet:Ljava/util/HashSet;

    .line 17
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 18
    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private final collapse(IZZZLjava/lang/Object;)I
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 426
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 427
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v3

    add-int/2addr p1, v3

    .line 429
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 430
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p2

    .line 435
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 436
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    .line 439
    invoke-virtual {p0, p1, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_1

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return v0

    .line 431
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    return v2
.end method

.method public static synthetic collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 497
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x1

    if-eqz p2, :cond_1

    move v3, p7

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v4, p7

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    .line 419
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 549
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapseAndChild"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final expand(IZZZLjava/lang/Object;)I
    .locals 5

    .line 464
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 466
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_5

    .line 467
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v3

    add-int/2addr v3, p1

    const/4 v4, 0x1

    .line 469
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 470
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 474
    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p2

    .line 475
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 476
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    add-int/2addr p1, v4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    .line 479
    invoke-virtual {p0, v3, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    add-int/2addr v3, v4

    .line 480
    invoke-virtual {p0, v3, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeInserted(II)V

    goto :goto_1

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return v0

    .line 471
    :cond_4
    :goto_2
    invoke-virtual {p0, v3, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    return v2
.end method

.method public static synthetic expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 511
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 6

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x1

    if-eqz p2, :cond_1

    move v3, p7

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v4, p7

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 541
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandAndChild"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 7

    if-nez p9, :cond_6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v5

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move p3, p1

    move p4, v0

    move p5, v1

    move p6, v3

    move p7, v2

    move-object p8, v4

    move-object/from16 p9, v5

    .line 565
    invoke-virtual/range {p2 .. p9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther(IZZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: expandAndCollapseOther"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 525
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandOrCollapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    instance-of v2, v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 382
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    :cond_1
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v2

    .line 384
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 385
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 386
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    .line 389
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 390
    move-object v3, v1

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v3, v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    goto :goto_2

    .line 393
    :cond_4
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v2

    .line 394
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 395
    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 396
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 400
    :cond_6
    :goto_2
    instance-of v2, v1, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    if-eqz v2, :cond_0

    .line 401
    check-cast v1, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    invoke-interface {v1}, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;->getFooterNode()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_7
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 374
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: flatData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final removeChildAt(I)I
    .locals 4

    .line 180
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 188
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    instance-of v0, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 190
    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1, v3, v2, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method private final removeNodesAt(I)I
    .locals 4

    .line 156
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeChildAt(I)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 165
    instance-of v3, v2, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    invoke-interface {v2}, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;->getFooterNode()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    :cond_2
    return v2
.end method


# virtual methods
.method public addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 84
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILjava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic addData(ILjava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method public addData(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 92
    invoke-static {p0, p2, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 93
    check-cast p2, Ljava/util/Collection;

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->addData(ILjava/util/Collection;)V

    return-void
.end method

.method public addData(Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 88
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic addData(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(Lcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method public addData(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 97
    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 98
    check-cast p1, Ljava/util/Collection;

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->addData(Ljava/util/Collection;)V

    return-void
.end method

.method public final addFooterNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    return-void
.end method

.method public final addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseNodeAdapter;->fullSpanNodeTypeSet:Ljava/util/HashSet;

    .line 37
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    check-cast p1, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p1, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please add BaseNodeProvider, no BaseItemProvider!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p1, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public final collapse(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapse(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapse(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapse(IZZLjava/lang/Object;)I
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 501
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapseAndChild(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapseAndChild(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapseAndChild(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final collapseAndChild(IZZLjava/lang/Object;)I
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 553
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expand(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expand(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expand(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expand(IZZLjava/lang/Object;)I
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 515
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndChild(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndChild(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndChild(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndChild(IZZLjava/lang/Object;)I
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 545
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandAndCollapseOther(I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZ)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZ)V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZ)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZZ)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZZLjava/lang/Object;)V
    .locals 10

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 573
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->findParentNode(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    :goto_0
    sub-int v5, p1, v4

    if-lez v5, :cond_3

    move v11, v4

    move v4, p1

    :cond_2
    move-object v5, p0

    move v6, v11

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p7

    .line 596
    invoke-direct/range {v5 .. v10}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v5

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v4, v5

    if-lt v11, v4, :cond_2

    goto :goto_1

    :cond_3
    move v4, p1

    :goto_1
    if-ne v1, v3, :cond_4

    .line 605
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_5
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_2
    add-int/2addr v4, v0

    if-ge v4, v1, :cond_6

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    :goto_3
    if-gt v0, v1, :cond_6

    move-object v2, p0

    move v3, v0

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    .line 615
    invoke-direct/range {v2 .. v7}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final expandOrCollapse(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandOrCollapse(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandOrCollapse(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final expandOrCollapse(IZZLjava/lang/Object;)I
    .locals 7

    .line 529
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 530
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_1

    .line 531
    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 532
    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 534
    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final findParentNode(I)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_0
    if-ge v0, p1, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 652
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final findParentNode(Lcom/chad/library/adapter/base/entity/node/BaseNode;)I
    .locals 4

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 638
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected isFixedViewType(I)Z
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->isFixedViewType(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseNodeAdapter;->fullSpanNodeTypeSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final nodeAddData(Lcom/chad/library/adapter/base/entity/node/BaseNode;ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 1

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 238
    instance-of v0, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    .line 244
    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    :cond_1
    return-void
.end method

.method public final nodeAddData(Lcom/chad/library/adapter/base/entity/node/BaseNode;ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            "I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0, p2, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 258
    instance-of v0, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    .line 263
    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILjava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public final nodeAddData(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    instance-of v1, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    :cond_1
    return-void
.end method

.method public final nodeRemoveData(Lcom/chad/library/adapter/base/entity/node/BaseNode;I)V
    .locals 2

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    return-void

    .line 278
    :cond_0
    instance-of v1, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    .line 285
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->remove(I)V

    .line 287
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    :cond_2
    return-void
.end method

.method public final nodeRemoveData(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    instance-of v1, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 299
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->remove(Ljava/lang/Object;)V

    .line 304
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final nodeReplaceChildData(Lcom/chad/library/adapter/base/entity/node/BaseNode;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    instance-of v1, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 347
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeChildAt(I)I

    move-result v1

    .line 349
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 352
    invoke-static {p0, p2, v2, v0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 353
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 355
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 356
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 357
    invoke-virtual {p0, p1, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    .line 360
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeInserted(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final nodeSetData(Lcom/chad/library/adapter/base/entity/node/BaseNode;ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    return-void

    .line 320
    :cond_0
    instance-of v1, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    .line 327
    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    .line 329
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public removeAt(I)V
    .locals 2

    .line 107
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeNodesAt(I)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->compatibilityDataSizeChanged(I)V

    return-void
.end method

.method public setData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeNodesAt(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 121
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p2, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 122
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 124
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    .line 128
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setData(ILjava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method public setDiffNewData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "diffResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void

    .line 147
    :cond_0
    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, v0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setDiffNewData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V

    return-void
.end method

.method public setDiffNewData(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setDiffNewData(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setList(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method public setNewInstance(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
