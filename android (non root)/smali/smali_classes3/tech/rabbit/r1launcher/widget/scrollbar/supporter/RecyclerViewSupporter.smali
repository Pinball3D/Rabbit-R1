.class public final Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;
.super Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;
.source "RecyclerViewSupporter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;",
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "onScrollListener",
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;",
        "getOnScrollListener",
        "()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;",
        "onScrollListener$delegate",
        "Lkotlin/Lazy;",
        "attachExt",
        "",
        "detachExt",
        "OnScrollListenerWrap",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final onScrollListener$delegate:Lkotlin/Lazy;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/BaseSupporter;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance p1, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2;-><init>(Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->onScrollListener$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getOnScrollListener()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->onScrollListener$delegate:Lkotlin/Lazy;

    .line 9
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;

    return-object p0
.end method


# virtual methods
.method public attachExt()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->getOnScrollListener()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public detachExt()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;->getOnScrollListener()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
