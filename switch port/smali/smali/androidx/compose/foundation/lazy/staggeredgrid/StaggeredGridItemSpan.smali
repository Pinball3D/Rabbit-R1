.class public final Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;
.super Ljava/lang/Object;
.source "LazyStaggeredGridSpan.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;",
        "",
        "value",
        "",
        "(I)V",
        "getValue$foundation_release",
        "()I",
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

.field public static final Companion:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan$Companion;

.field private static final FullLine:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

.field private static final SingleLane:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->Companion:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan$Companion;

    .line 36
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->FullLine:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    .line 41
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->SingleLane:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->value:I

    return-void
.end method

.method public static final synthetic access$getFullLine$cp()Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->FullLine:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    return-object v0
.end method

.method public static final synthetic access$getSingleLane$cp()Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->SingleLane:Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    return-object v0
.end method


# virtual methods
.method public final getValue$foundation_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;->value:I

    return p0
.end method
