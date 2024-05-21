.class public final Landroidx/compose/ui/text/android/TextAlignmentAdapter;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/TextAlignmentAdapter;",
        "",
        "()V",
        "ALIGN_LEFT_FRAMEWORK",
        "Landroid/text/Layout$Alignment;",
        "ALIGN_RIGHT_FRAMEWORK",
        "get",
        "value",
        "",
        "ui-text_release"
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
.field private static final ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

.field private static final ALIGN_RIGHT_FRAMEWORK:Landroid/text/Layout$Alignment;

.field public static final INSTANCE:Landroidx/compose/ui/text/android/TextAlignmentAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/ui/text/android/TextAlignmentAdapter;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/TextAlignmentAdapter;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->INSTANCE:Landroidx/compose/ui/text/android/TextAlignmentAdapter;

    .line 852
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 853
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 854
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 855
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 856
    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ALIGN_LEFT"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_1

    .line 861
    :cond_0
    invoke-virtual {v5}, Landroid/text/Layout$Alignment;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ALIGN_RIGHT"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sput-object v1, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

    sput-object v2, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_RIGHT_FRAMEWORK:Landroid/text/Layout$Alignment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Landroid/text/Layout$Alignment;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 878
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_RIGHT_FRAMEWORK:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 875
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 876
    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 877
    :cond_4
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0
.end method
