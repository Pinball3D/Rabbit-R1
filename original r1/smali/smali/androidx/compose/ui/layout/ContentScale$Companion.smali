.class public final Landroidx/compose/ui/layout/ContentScale$Companion;
.super Ljava/lang/Object;
.source "ContentScale.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0007R\u001c\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0002\u001a\u0004\u0008\u0013\u0010\u0007R\u001c\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0002\u001a\u0004\u0008\u0016\u0010\u0007R\u001c\u0010\u0017\u001a\u00020\u00188\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0002\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/ui/layout/ContentScale$Companion;",
        "",
        "()V",
        "Crop",
        "Landroidx/compose/ui/layout/ContentScale;",
        "getCrop$annotations",
        "getCrop",
        "()Landroidx/compose/ui/layout/ContentScale;",
        "FillBounds",
        "getFillBounds$annotations",
        "getFillBounds",
        "FillHeight",
        "getFillHeight$annotations",
        "getFillHeight",
        "FillWidth",
        "getFillWidth$annotations",
        "getFillWidth",
        "Fit",
        "getFit$annotations",
        "getFit",
        "Inside",
        "getInside$annotations",
        "getInside",
        "None",
        "Landroidx/compose/ui/layout/FixedScale;",
        "getNone$annotations",
        "getNone",
        "()Landroidx/compose/ui/layout/FixedScale;",
        "ui_release"
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
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion;

.field private static final Crop:Landroidx/compose/ui/layout/ContentScale;

.field private static final FillBounds:Landroidx/compose/ui/layout/ContentScale;

.field private static final FillHeight:Landroidx/compose/ui/layout/ContentScale;

.field private static final FillWidth:Landroidx/compose/ui/layout/ContentScale;

.field private static final Fit:Landroidx/compose/ui/layout/ContentScale;

.field private static final Inside:Landroidx/compose/ui/layout/ContentScale;

.field private static final None:Landroidx/compose/ui/layout/FixedScale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->$$INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 51
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/ContentScale;

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale;

    .line 67
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/ContentScale;

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale;

    .line 80
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/ContentScale;

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillHeight:Landroidx/compose/ui/layout/ContentScale;

    .line 93
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/ContentScale;

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale;

    .line 110
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/ContentScale;

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Inside:Landroidx/compose/ui/layout/ContentScale;

    .line 129
    new-instance v0, Landroidx/compose/ui/layout/FixedScale;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/FixedScale;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->None:Landroidx/compose/ui/layout/FixedScale;

    .line 135
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/layout/ContentScale;

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillBounds:Landroidx/compose/ui/layout/ContentScale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getCrop$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFillBounds$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFillHeight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFillWidth$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFit$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInside$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getNone$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getCrop()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final getFillBounds()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillBounds:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final getFillHeight()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillHeight:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final getFillWidth()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final getFit()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final getInside()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->Inside:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method

.method public final getNone()Landroidx/compose/ui/layout/FixedScale;
    .locals 0

    sget-object p0, Landroidx/compose/ui/layout/ContentScale$Companion;->None:Landroidx/compose/ui/layout/FixedScale;

    return-object p0
.end method
