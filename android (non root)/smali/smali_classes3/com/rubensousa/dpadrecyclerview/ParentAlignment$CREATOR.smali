.class public final Lcom/rubensousa/dpadrecyclerview/ParentAlignment$CREATOR;
.super Ljava/lang/Object;
.source "ParentAlignment.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/ParentAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$CREATOR;",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;",
        "()V",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lcom/rubensousa/dpadrecyclerview/ParentAlignment;",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rubensousa/dpadrecyclerview/ParentAlignment;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance p0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/rubensousa/dpadrecyclerview/ParentAlignment;
    .locals 0

    .line 75
    new-array p0, p1, [Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$CREATOR;->newArray(I)[Lcom/rubensousa/dpadrecyclerview/ParentAlignment;

    move-result-object p0

    return-object p0
.end method
