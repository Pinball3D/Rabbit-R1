.class public final Landroidx/compose/foundation/text/KeyboardActions;
.super Ljava/lang/Object;
.source "KeyboardActions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/KeyboardActions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u00b3\u0001\u0012\u001b\u0008\u0002\u0010\u0002\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\u001b\u0008\u0002\u0010\u0007\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\u001b\u0008\u0002\u0010\u0008\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\u001b\u0008\u0002\u0010\t\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\u001b\u0008\u0002\u0010\n\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\u001b\u0008\u0002\u0010\u000b\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R$\u0010\u0002\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR$\u0010\u0007\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR$\u0010\u0008\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR$\u0010\t\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR$\u0010\n\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR$\u0010\u000b\u001a\u0015\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "",
        "onDone",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/text/KeyboardActionScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onGo",
        "onNext",
        "onPrevious",
        "onSearch",
        "onSend",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getOnDone",
        "()Lkotlin/jvm/functions/Function1;",
        "getOnGo",
        "getOnNext",
        "getOnPrevious",
        "getOnSearch",
        "getOnSend",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "Companion",
        "foundation_release"
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

.field private static final Default:Landroidx/compose/foundation/text/KeyboardActions;


# instance fields
.field private final onDone:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onGo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onNext:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onPrevious:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onSearch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onSend:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyboardActions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    .line 101
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    .line 27
    :cond_5
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/foundation/text/KeyboardActions;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/KeyboardActions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    .line 77
    check-cast p1, Landroidx/compose/foundation/text/KeyboardActions;

    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    .line 78
    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    .line 79
    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    .line 80
    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    .line 81
    iget-object v3, p1, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    .line 82
    iget-object p1, p1, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getOnDone()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnGo()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnNext()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnPrevious()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSearch()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSend()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onDone:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onGo:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onNext:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onPrevious:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSearch:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_4

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/text/KeyboardActions;->onSend:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_5

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method
