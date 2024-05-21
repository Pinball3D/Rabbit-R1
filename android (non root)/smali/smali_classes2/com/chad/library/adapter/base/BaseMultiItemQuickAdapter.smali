.class public abstract Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseMultiItemQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TVH;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMultiItemQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMultiItemQuickAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemQuickAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n1#2:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005B\u0017\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0012H\u0004J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0014J\u001d\u0010\u0016\u001a\u00028\u00012\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0012H\u0014\u00a2\u0006\u0002\u0010\u001aR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "T",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "VH",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "data",
        "",
        "(Ljava/util/List;)V",
        "layouts",
        "Landroid/util/SparseIntArray;",
        "getLayouts",
        "()Landroid/util/SparseIntArray;",
        "layouts$delegate",
        "Lkotlin/Lazy;",
        "addItemType",
        "",
        "type",
        "",
        "layoutResId",
        "getDefItemViewType",
        "position",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
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
.field private final layouts$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 23
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter$layouts$2;->INSTANCE:Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter$layouts$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->layouts$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private final getLayouts()Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->layouts$delegate:Lkotlin/Lazy;

    .line 23
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    return-object p0
.end method


# virtual methods
.method protected final addItemType(II)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->getLayouts()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    invoke-interface {p0}, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->getItemType()I

    move-result p0

    return p0
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

    .line 30
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->getLayouts()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ViewType: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " found layoutResId\uff0cplease use addItemType() first!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
