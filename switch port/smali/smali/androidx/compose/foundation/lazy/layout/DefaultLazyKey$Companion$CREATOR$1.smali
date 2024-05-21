.class public final Landroidx/compose/foundation/lazy/layout/DefaultLazyKey$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "Lazy.android.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/compose/foundation/lazy/layout/DefaultLazyKey$Companion$CREATOR$1",
        "Landroid/os/Parcelable$Creator;",
        "Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p0, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;
    .locals 0

    .line 45
    new-array p0, p1, [Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey$Companion$CREATOR$1;->newArray(I)[Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    move-result-object p0

    return-object p0
.end method
