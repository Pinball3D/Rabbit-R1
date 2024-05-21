.class final Landroidx/compose/foundation/NoIndication$NoIndicationInstance;
.super Ljava/lang/Object;
.source "Indication.kt"

# interfaces
.implements Landroidx/compose/foundation/IndicationInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/NoIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoIndicationInstance"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/foundation/NoIndication$NoIndicationInstance;",
        "Landroidx/compose/foundation/IndicationInstance;",
        "()V",
        "drawIndication",
        "",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
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
.field public static final INSTANCE:Landroidx/compose/foundation/NoIndication$NoIndicationInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/NoIndication$NoIndicationInstance;

    invoke-direct {v0}, Landroidx/compose/foundation/NoIndication$NoIndicationInstance;-><init>()V

    sput-object v0, Landroidx/compose/foundation/NoIndication$NoIndicationInstance;->INSTANCE:Landroidx/compose/foundation/NoIndication$NoIndicationInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void
.end method
