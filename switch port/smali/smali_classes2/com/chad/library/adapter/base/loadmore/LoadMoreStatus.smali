.class public final enum Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
.super Ljava/lang/Enum;
.source "BaseLoadMoreView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "Complete",
        "Loading",
        "Fail",
        "End",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;


# direct methods
.method private static final synthetic $values()[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 4

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v3, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "Complete"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "Loading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "Fail"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "End"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-static {}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->$values()[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object v0

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->$VALUES:[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    const-class v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object p0
.end method

.method public static values()[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->$VALUES:[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object v0
.end method
