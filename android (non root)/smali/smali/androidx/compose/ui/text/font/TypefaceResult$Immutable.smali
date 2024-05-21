.class public final Landroidx/compose/ui/text/font/TypefaceResult$Immutable;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/TypefaceResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/TypefaceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Immutable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        "value",
        "",
        "cacheable",
        "",
        "(Ljava/lang/Object;Z)V",
        "getCacheable",
        "()Z",
        "getValue",
        "()Ljava/lang/Object;",
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
.field public static final $stable:I


# instance fields
.field private final cacheable:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->cacheable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public getCacheable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->cacheable:Z

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    return-object p0
.end method
