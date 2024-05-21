.class public abstract Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.super Ljava/lang/Object;
.source "BaseItemProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseItemProvider.kt\ncom/chad/library/adapter/base/provider/BaseItemProvider\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n13600#2,2:128\n13600#2,2:130\n*S KotlinDebug\n*F\n+ 1 BaseItemProvider.kt\ncom/chad/library/adapter/base/provider/BaseItemProvider\n*L\n111#1:128,2\n119#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u001d\u001a\u00020\u001e2\u000c\u0008\u0001\u0010\u001f\u001a\u00020 \"\u00020\u0006J\u0014\u0010!\u001a\u00020\u001e2\u000c\u0008\u0001\u0010\u001f\u001a\u00020 \"\u00020\u0006J\u001d\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010&J+\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00028\u00002\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00020(H\u0016\u00a2\u0006\u0002\u0010)J\u0010\u0010*\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001cH\u0016J\u0016\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007J\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007J-\u0010-\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u00102J-\u00103\u001a\u0002042\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u00105J-\u00106\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u00102J\u0018\u00107\u001a\u00020$2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u0006H\u0016J-\u0010;\u001a\u0002042\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00028\u00002\u0006\u00101\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u00105J\u0010\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020$H\u0016J\u0010\u0010>\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020$H\u0016J\u0018\u0010?\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020$2\u0006\u0010:\u001a\u00020\u0006H\u0016J\u001b\u0010A\u001a\u00020\u001e2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0000\u00a2\u0006\u0002\u0008CR+\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00068gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R+\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u0018\u0010\tR\u001c\u0010\u001a\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001c\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "T",
        "",
        "()V",
        "clickViewIds",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getClickViewIds",
        "()Ljava/util/ArrayList;",
        "clickViewIds$delegate",
        "Lkotlin/Lazy;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "itemViewType",
        "getItemViewType",
        "()I",
        "layoutId",
        "getLayoutId",
        "longClickViewIds",
        "getLongClickViewIds",
        "longClickViewIds$delegate",
        "weakAdapter",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "addChildClickViewIds",
        "",
        "ids",
        "",
        "addChildLongClickViewIds",
        "convert",
        "helper",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "item",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V",
        "payloads",
        "",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V",
        "getAdapter",
        "getChildClickViewIds",
        "getChildLongClickViewIds",
        "onChildClick",
        "view",
        "Landroid/view/View;",
        "data",
        "position",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V",
        "onChildLongClick",
        "",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z",
        "onClick",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onLongClick",
        "onViewAttachedToWindow",
        "holder",
        "onViewDetachedFromWindow",
        "onViewHolderCreated",
        "viewHolder",
        "setAdapter",
        "adapter",
        "setAdapter$com_github_CymChad_brvah",
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
.field private final clickViewIds$delegate:Lkotlin/Lazy;

.field public context:Landroid/content/Context;

.field private final longClickViewIds$delegate:Lkotlin/Lazy;

.field private weakAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/chad/library/adapter/base/provider/BaseItemProvider$clickViewIds$2;->INSTANCE:Lcom/chad/library/adapter/base/provider/BaseItemProvider$clickViewIds$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->clickViewIds$delegate:Lkotlin/Lazy;

    .line 23
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/chad/library/adapter/base/provider/BaseItemProvider$longClickViewIds$2;->INSTANCE:Lcom/chad/library/adapter/base/provider/BaseItemProvider$longClickViewIds$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->longClickViewIds$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getClickViewIds()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->clickViewIds$delegate:Lkotlin/Lazy;

    .line 22
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getLongClickViewIds()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->longClickViewIds$delegate:Lkotlin/Lazy;

    .line 23
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final varargs addChildClickViewIds([I)V
    .locals 4

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 112
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getClickViewIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addChildLongClickViewIds([I)V
    .locals 4

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 120
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getLongClickViewIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p0, "helper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payloads"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getAdapter()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->weakAdapter:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getChildClickViewIds()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getClickViewIds()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getChildLongClickViewIds()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getLongClickViewIds()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "context"

    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getItemViewType()I
.end method

.method public abstract getLayoutId()I
.end method

.method public onChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    const-string p0, "helper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChildLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Landroid/view/View;",
            "TT;I)Z"
        }
    .end annotation

    const-string p0, "helper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    const-string p0, "helper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getLayoutId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/chad/library/adapter/base/util/AdapterUtilsKt;->getItemView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Landroid/view/View;",
            "TT;I)Z"
        }
    .end annotation

    const-string p0, "helper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewHolderCreated(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 0

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdapter$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->weakAdapter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->context:Landroid/content/Context;

    return-void
.end method
