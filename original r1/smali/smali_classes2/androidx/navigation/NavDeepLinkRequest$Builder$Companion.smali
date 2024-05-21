.class public final Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;
.super Ljava/lang/Object;
.source "NavDeepLinkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLinkRequest$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;",
        "",
        "()V",
        "fromAction",
        "Landroidx/navigation/NavDeepLinkRequest$Builder;",
        "action",
        "",
        "fromMimeType",
        "mimeType",
        "fromUri",
        "uri",
        "Landroid/net/Uri;",
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

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLinkRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 171
    new-instance p0, Landroidx/navigation/NavDeepLinkRequest$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLinkRequest$Builder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDeepLinkRequest$Builder;->setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The NavDeepLinkRequest cannot have an empty action."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final fromMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLinkRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "mimeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance p0, Landroidx/navigation/NavDeepLinkRequest$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLinkRequest$Builder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDeepLinkRequest$Builder;->setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    return-object p0
.end method

.method public final fromUri(Landroid/net/Uri;)Landroidx/navigation/NavDeepLinkRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance p0, Landroidx/navigation/NavDeepLinkRequest$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLinkRequest$Builder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDeepLinkRequest$Builder;->setUri(Landroid/net/Uri;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    return-object p0
.end method
