.class public final Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;
.super Ljava/lang/Object;
.source "Pager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PagerSnapDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;",
        "",
        "()V",
        "atMost",
        "Landroidx/compose/foundation/pager/PagerSnapDistance;",
        "pages",
        "",
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
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;->$$INSTANCE:Landroidx/compose/foundation/pager/PagerSnapDistance$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final atMost(I)Landroidx/compose/foundation/pager/PagerSnapDistance;
    .locals 1

    if-ltz p1, :cond_0

    .line 622
    new-instance p0, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;-><init>(I)V

    check-cast p0, Landroidx/compose/foundation/pager/PagerSnapDistance;

    return-object p0

    .line 620
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "pages should be greater than or equal to 0. You have used "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 619
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
