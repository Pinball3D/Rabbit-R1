.class public abstract Lcom/chad/library/adapter/base/binder/BaseItemBinder;
.super Ljava/lang/Object;
.source "BaseItemBinder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseItemBinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseItemBinder.kt\ncom/chad/library/adapter/base/binder/BaseItemBinder\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,143:1\n13600#2,2:144\n13600#2,2:146\n*S KotlinDebug\n*F\n+ 1 BaseItemBinder.kt\ncom/chad/library/adapter/base/binder/BaseItemBinder\n*L\n129#1:144,2\n137#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010%\u001a\u00020&2\u000c\u0008\u0001\u0010\'\u001a\u00020(\"\u00020\u0016J\u0014\u0010)\u001a\u00020&2\u000c\u0008\u0001\u0010\'\u001a\u00020(\"\u00020\u0016J\u001d\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00028\u00012\u0006\u0010\u001e\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010,J+\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00028\u00012\u0006\u0010\u001e\u001a\u00028\u00002\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00040.H\u0016\u00a2\u0006\u0002\u0010/J\u0016\u00100\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017J\u0016\u00101\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017J-\u00102\u001a\u00020&2\u0006\u0010+\u001a\u00028\u00012\u0006\u00103\u001a\u0002042\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u0016H\u0016\u00a2\u0006\u0002\u00106J-\u00107\u001a\u0002082\u0006\u0010+\u001a\u00028\u00012\u0006\u00103\u001a\u0002042\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u0016H\u0016\u00a2\u0006\u0002\u00109J-\u0010:\u001a\u00020&2\u0006\u0010+\u001a\u00028\u00012\u0006\u00103\u001a\u0002042\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u0016H\u0016\u00a2\u0006\u0002\u00106J\u001d\u0010;\u001a\u00028\u00012\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0016H&\u00a2\u0006\u0002\u0010?J\u0015\u0010@\u001a\u0002082\u0006\u0010+\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010AJ-\u0010B\u001a\u0002082\u0006\u0010+\u001a\u00028\u00012\u0006\u00103\u001a\u0002042\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u0016H\u0016\u00a2\u0006\u0002\u00109J\u0015\u0010C\u001a\u00020&2\u0006\u0010+\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020&2\u0006\u0010+\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010DR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\tR+\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u000fR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R+\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001b\u001a\u0004\u0008#\u0010\u0019\u00a8\u0006F"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/binder/BaseItemBinder;",
        "T",
        "VH",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "()V",
        "_adapter",
        "Lcom/chad/library/adapter/base/BaseBinderAdapter;",
        "get_adapter$com_github_CymChad_brvah",
        "()Lcom/chad/library/adapter/base/BaseBinderAdapter;",
        "set_adapter$com_github_CymChad_brvah",
        "(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V",
        "_context",
        "Landroid/content/Context;",
        "get_context$com_github_CymChad_brvah",
        "()Landroid/content/Context;",
        "set_context$com_github_CymChad_brvah",
        "(Landroid/content/Context;)V",
        "adapter",
        "getAdapter",
        "clickViewIds",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getClickViewIds",
        "()Ljava/util/ArrayList;",
        "clickViewIds$delegate",
        "Lkotlin/Lazy;",
        "context",
        "getContext",
        "data",
        "",
        "getData",
        "()Ljava/util/List;",
        "longClickViewIds",
        "getLongClickViewIds",
        "longClickViewIds$delegate",
        "addChildClickViewIds",
        "",
        "ids",
        "",
        "addChildLongClickViewIds",
        "convert",
        "holder",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V",
        "payloads",
        "",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V",
        "getChildClickViewIds",
        "getChildLongClickViewIds",
        "onChildClick",
        "view",
        "Landroid/view/View;",
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
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "onFailedToRecycleView",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z",
        "onLongClick",
        "onViewAttachedToWindow",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "onViewDetachedFromWindow",
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
.field private _adapter:Lcom/chad/library/adapter/base/BaseBinderAdapter;

.field private _context:Landroid/content/Context;

.field private final clickViewIds$delegate:Lkotlin/Lazy;

.field private final longClickViewIds$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/chad/library/adapter/base/binder/BaseItemBinder$clickViewIds$2;->INSTANCE:Lcom/chad/library/adapter/base/binder/BaseItemBinder$clickViewIds$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->clickViewIds$delegate:Lkotlin/Lazy;

    .line 16
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/chad/library/adapter/base/binder/BaseItemBinder$longClickViewIds$2;->INSTANCE:Lcom/chad/library/adapter/base/binder/BaseItemBinder$longClickViewIds$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->longClickViewIds$delegate:Lkotlin/Lazy;

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

    iget-object p0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->clickViewIds$delegate:Lkotlin/Lazy;

    .line 15
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

    iget-object p0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->longClickViewIds$delegate:Lkotlin/Lazy;

    .line 16
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

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 130
    invoke-direct {p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getClickViewIds()Ljava/util/ArrayList;

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

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 138
    invoke-direct {p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getLongClickViewIds()Ljava/util/ArrayList;

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
            "(TVH;TT;)V"
        }
    .end annotation
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payloads"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getAdapter()Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->_adapter:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " has not been attached to BaseBinderAdapter yet.\n                    You should not call the method before addItemBinder()."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 134
    invoke-direct {p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getClickViewIds()Ljava/util/ArrayList;

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

    .line 142
    invoke-direct {p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getLongClickViewIds()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " has not been attached to BaseBinderAdapter yet.\n                    You should not call the method before onCreateViewHolder()."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getAdapter()Lcom/chad/library/adapter/base/BaseBinderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final get_adapter$com_github_CymChad_brvah()Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->_adapter:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-object p0
.end method

.method public final get_context$com_github_CymChad_brvah()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->_context:Landroid/content/Context;

    return-object p0
.end method

.method public onChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChildLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/view/View;",
            "TT;I)Z"
        }
    .end annotation

    const-string p0, "holder"

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
            "(TVH;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/view/View;",
            "TT;I)Z"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final set_adapter$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->_adapter:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-void
.end method

.method public final set_context$com_github_CymChad_brvah(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->_context:Landroid/content/Context;

    return-void
.end method
