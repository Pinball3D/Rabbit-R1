.class public final Landroidx/compose/foundation/text/InlineTextContent;
.super Ljava/lang/Object;
.source "InlineTextContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B&\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\tR$\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/foundation/text/InlineTextContent;",
        "",
        "placeholder",
        "Landroidx/compose/ui/text/Placeholder;",
        "children",
        "Lkotlin/Function1;",
        "",
        "",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/ui/text/Placeholder;Lkotlin/jvm/functions/Function3;)V",
        "getChildren",
        "()Lkotlin/jvm/functions/Function3;",
        "Lkotlin/jvm/functions/Function3;",
        "getPlaceholder",
        "()Landroidx/compose/ui/text/Placeholder;",
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


# instance fields
.field private final children:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final placeholder:Landroidx/compose/ui/text/Placeholder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/Placeholder;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/Placeholder;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "placeholder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/InlineTextContent;->placeholder:Landroidx/compose/ui/text/Placeholder;

    iput-object p2, p0, Landroidx/compose/foundation/text/InlineTextContent;->children:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final getChildren()Lkotlin/jvm/functions/Function3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/InlineTextContent;->children:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final getPlaceholder()Landroidx/compose/ui/text/Placeholder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/InlineTextContent;->placeholder:Landroidx/compose/ui/text/Placeholder;

    return-object p0
.end method
