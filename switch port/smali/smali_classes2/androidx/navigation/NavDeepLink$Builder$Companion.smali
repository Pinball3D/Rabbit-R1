.class public final Landroidx/navigation/NavDeepLink$Builder$Companion;
.super Ljava/lang/Object;
.source "NavDeepLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLink$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,651:1\n1#2:652\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/navigation/NavDeepLink$Builder$Companion;",
        "",
        "()V",
        "fromAction",
        "Landroidx/navigation/NavDeepLink$Builder;",
        "action",
        "",
        "fromMimeType",
        "mimeType",
        "fromUriPattern",
        "uriPattern",
        "navigation-common_release"
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

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink$Builder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 521
    new-instance p0, Landroidx/navigation/NavDeepLink$Builder;

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 522
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDeepLink$Builder;->setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    return-object p0

    .line 520
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The NavDeepLink cannot have an empty action."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final fromMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "mimeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    new-instance p0, Landroidx/navigation/NavDeepLink$Builder;

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 535
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDeepLink$Builder;->setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    return-object p0
.end method

.method public final fromUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "uriPattern"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    new-instance p0, Landroidx/navigation/NavDeepLink$Builder;

    invoke-direct {p0}, Landroidx/navigation/NavDeepLink$Builder;-><init>()V

    .line 505
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDeepLink$Builder;->setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;

    return-object p0
.end method
