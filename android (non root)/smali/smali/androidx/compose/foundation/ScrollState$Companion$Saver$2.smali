.class final Landroidx/compose/foundation/ScrollState$Companion$Saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/ScrollState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroidx/compose/foundation/ScrollState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/ScrollState;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/ScrollState$Companion$Saver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/ScrollState$Companion$Saver$2;

    invoke-direct {v0}, Landroidx/compose/foundation/ScrollState$Companion$Saver$2;-><init>()V

    sput-object v0, Landroidx/compose/foundation/ScrollState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/ScrollState$Companion$Saver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroidx/compose/foundation/ScrollState;
    .locals 0

    .line 196
    new-instance p0, Landroidx/compose/foundation/ScrollState;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollState$Companion$Saver$2;->invoke(I)Landroidx/compose/foundation/ScrollState;

    move-result-object p0

    return-object p0
.end method
