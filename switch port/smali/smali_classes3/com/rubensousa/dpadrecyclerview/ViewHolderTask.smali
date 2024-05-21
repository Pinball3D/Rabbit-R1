.class public abstract Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;
.super Ljava/lang/Object;
.source "ViewHolderTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;",
        "",
        "executeWhenAligned",
        "",
        "(Z)V",
        "getExecuteWhenAligned",
        "()Z",
        "execute",
        "",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final executeWhenAligned:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;->executeWhenAligned:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 28
    :cond_0
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public abstract execute(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public final getExecuteWhenAligned()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;->executeWhenAligned:Z

    return p0
.end method
