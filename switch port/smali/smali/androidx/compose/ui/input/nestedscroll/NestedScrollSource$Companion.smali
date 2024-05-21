.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;
.super Ljava/lang/Object;
.source "NestedScrollModifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\'\u0010\n\u001a\u00020\u00048GX\u0087\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\u0007\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;",
        "",
        "()V",
        "Drag",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "getDrag-WNlRxjI",
        "()I",
        "I",
        "Fling",
        "getFling-WNlRxjI",
        "Relocate",
        "getRelocate-WNlRxjI$annotations",
        "getRelocate-WNlRxjI",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getRelocate-WNlRxjI$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Do not use. Will be removed in the future."
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDrag-WNlRxjI()I
    .locals 0

    .line 248
    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->access$getDrag$cp()I

    move-result p0

    return p0
.end method

.method public final getFling-WNlRxjI()I
    .locals 0

    .line 253
    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->access$getFling$cp()I

    move-result p0

    return p0
.end method

.method public final getRelocate-WNlRxjI()I
    .locals 0

    .line 262
    invoke-static {}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->access$getRelocate$cp()I

    move-result p0

    return p0
.end method
