.class final Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecyclerViewSupporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2;->this$0:Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2;->invoke()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;
    .locals 2

    .line 10
    new-instance v0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;

    new-instance v1, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2$1;

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2;->this$0:Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$onScrollListener$2$1;-><init>(Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/widget/scrollbar/supporter/RecyclerViewSupporter$OnScrollListenerWrap;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
