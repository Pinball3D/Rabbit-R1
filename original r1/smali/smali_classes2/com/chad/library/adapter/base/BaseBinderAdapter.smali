.class public Lcom/chad/library/adapter/base/BaseBinderAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseBinderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseBinderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseBinderAdapter.kt\ncom/chad/library/adapter/base/BaseBinderAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n1#2:234\n1855#3,2:235\n1855#3,2:237\n*S KotlinDebug\n*F\n+ 1 BaseBinderAdapter.kt\ncom/chad/library/adapter/base/BaseBinderAdapter\n*L\n160#1:235,2\n180#1:237,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001-B\u0017\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J9\u0010\u0011\u001a\u00020\u0000\"\n\u0008\u0000\u0010\u0012\u0018\u0001*\u00020\u00022\u0010\u0010\u0013\u001a\u000c\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u000e2\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0086\u0008JF\u0010\u0011\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00022\u000e\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00120\t2\u0010\u0010\u0013\u001a\u000c\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u000e2\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0007J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0014J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014J&\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00022\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020 H\u0014J\u0014\u0010!\u001a\u00020\u00102\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0004J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0010H\u0014J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u001e\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016RB\u0010\u0007\u001a6\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n0\u0008j\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0002\u0012\u0002\u0008\u00030\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u000f\u001a&\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0004\u0012\u00020\u00100\u0008j\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0004\u0012\u00020\u0010`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseBinderAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "list",
        "",
        "(Ljava/util/List;)V",
        "classDiffMap",
        "Ljava/util/HashMap;",
        "Ljava/lang/Class;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lkotlin/collections/HashMap;",
        "mBinderArray",
        "Landroid/util/SparseArray;",
        "Lcom/chad/library/adapter/base/binder/BaseItemBinder;",
        "mTypeMap",
        "",
        "addItemBinder",
        "T",
        "baseItemBinder",
        "callback",
        "clazz",
        "bindChildClick",
        "",
        "viewHolder",
        "viewType",
        "bindClick",
        "bindViewClickListener",
        "convert",
        "holder",
        "item",
        "payloads",
        "",
        "findViewType",
        "getDefItemViewType",
        "position",
        "getItemBinder",
        "getItemBinderOrNull",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "onFailedToRecycleView",
        "",
        "onViewAttachedToWindow",
        "onViewDetachedFromWindow",
        "ItemCallback",
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
.field private final classDiffMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBinderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "Ljava/lang/Object;",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4nzqKcRxDgHMjAYupip8GVgKybg(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick$lambda$8$lambda$7$lambda$6(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oei4aS_IkmDnF9Y6SQQqHhZ7QsY(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick$lambda$5(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XWvz4wooakxpUmtrkgKG4pJuYxA(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick$lambda$4(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAorim9CKIJzeRtAhLOKjnjRNhQ(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick$lambda$11$lambda$10$lambda$9(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->classDiffMap:Ljava/util/HashMap;

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 33
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    .line 36
    new-instance p1, Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;-><init>(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getClassDiffMap$p(Lcom/chad/library/adapter/base/BaseBinderAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->classDiffMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic addItemBinder$default(Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "baseItemBinder"

    .line 57
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const-string p4, "T"

    .line 58
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p0, p3, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-object p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addItemBinder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addItemBinder$default(Lcom/chad/library/adapter/base/BaseBinderAdapter;Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addItemBinder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final bindChildClick$lambda$11$lambda$10$lambda$9(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z
    .locals 3

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 191
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const-string v1, "v"

    .line 192
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p3, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onChildLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method private static final bindChildClick$lambda$8$lambda$7$lambda$6(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)V
    .locals 2

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 171
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v1, "v"

    .line 172
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p3, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method private static final bindClick$lambda$4(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V
    .locals 3

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 130
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v1

    .line 131
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "it"

    .line 134
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p2, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method private static final bindClick$lambda$5(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)Z
    .locals 3

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 147
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v1

    .line 148
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const-string v2, "it"

    .line 151
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, p2, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic addItemBinder(Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "TT;*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Lcom/chad/library/adapter/base/BaseBinderAdapter;"
        }
    .end annotation

    const-string v0, "baseItemBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-object p0
.end method

.method public final addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "TT;*>;)",
            "Lcom/chad/library/adapter/base/BaseBinderAdapter;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseItemBinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder$default(Lcom/chad/library/adapter/base/BaseBinderAdapter;Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    move-result-object p0

    return-object p0
.end method

.method public final addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "TT;*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Lcom/chad/library/adapter/base/BaseBinderAdapter;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseItemBinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 44
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 45
    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {p2, p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->set_adapter$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->classDiffMap:Ljava/util/HashMap;

    .line 49
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method protected bindChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 6

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getOnItemChildClickListener()Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "findViewById<View>(id)"

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getChildClickViewIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/Iterable;

    .line 235
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 161
    iget-object v5, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 165
    :cond_1
    new-instance v5, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1, p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getOnItemChildLongClickListener()Lcom/chad/library/adapter/base/listener/OnItemChildLongClickListener;

    move-result-object v0

    if-nez v0, :cond_5

    .line 178
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p2

    .line 179
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getChildLongClickViewIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    check-cast v0, Ljava/lang/Iterable;

    .line 237
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 181
    iget-object v4, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 183
    invoke-virtual {v3, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 185
    :cond_4
    new-instance v4, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected bindClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getOnItemClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getOnItemLongClickListener()Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method protected bindViewClickListener(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method protected final findViewType(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 114
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "findViewType: ViewType: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " Not Find!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->findViewType(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "Ljava/lang/Object;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    if-eqz p0, :cond_0

    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getItemBinder: viewType \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' no such Binder found\uff0cplease use addItemBinder() first!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "Ljava/lang/Object;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    .line 84
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->set_context$com_github_CymChad_brvah(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 25
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 100
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-super {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 105
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :cond_0
    return-void
.end method
