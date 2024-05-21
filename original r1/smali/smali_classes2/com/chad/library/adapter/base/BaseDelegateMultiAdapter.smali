.class public abstract Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseDelegateMultiAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TVH;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDelegateMultiAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDelegateMultiAdapter.kt\ncom/chad/library/adapter/base/BaseDelegateMultiAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u0017\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0014J\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\tJ\u001d\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bH\u0014\u00a2\u0006\u0002\u0010\u0012J\u0014\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tR\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;",
        "T",
        "VH",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "data",
        "",
        "(Ljava/util/List;)V",
        "mMultiTypeDelegate",
        "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;",
        "getDefItemViewType",
        "",
        "position",
        "getMultiTypeDelegate",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "setMultiTypeDelegate",
        "",
        "multiTypeDelegate",
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
.field private mMultiTypeDelegate:Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getDefItemViewType(I)I
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;->getMultiTypeDelegate()Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->getItemType(Ljava/util/List;I)I

    move-result p0

    return p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please use setMultiTypeDelegate first!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMultiTypeDelegate()Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;->mMultiTypeDelegate:Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;

    return-object p0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;->getMultiTypeDelegate()Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;->getLayoutId(I)I

    move-result p2

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please use setMultiTypeDelegate first!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMultiTypeDelegate(Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "multiTypeDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseDelegateMultiAdapter;->mMultiTypeDelegate:Lcom/chad/library/adapter/base/delegate/BaseMultiTypeDelegate;

    return-void
.end method
