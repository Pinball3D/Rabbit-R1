.class public final Landroidx/navigation/NavBackStackEntryState;
.super Ljava/lang/Object;
.source "NavBackStackEntryState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavBackStackEntryState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0016\u001a\u00020\rH\u0016J(\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\rH\u0016R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/navigation/NavBackStackEntryState;",
        "Landroid/os/Parcelable;",
        "entry",
        "Landroidx/navigation/NavBackStackEntry;",
        "(Landroidx/navigation/NavBackStackEntry;)V",
        "inParcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "args",
        "Landroid/os/Bundle;",
        "getArgs",
        "()Landroid/os/Bundle;",
        "destinationId",
        "",
        "getDestinationId",
        "()I",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "savedState",
        "getSavedState",
        "describeContents",
        "instantiate",
        "context",
        "Landroid/content/Context;",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "hostLifecycleState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "viewModel",
        "Landroidx/navigation/NavControllerViewModel;",
        "writeToParcel",
        "",
        "parcel",
        "i",
        "Companion",
        "navigation-runtime_release"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/navigation/NavBackStackEntryState$Companion;


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final destinationId:I

.field private final id:Ljava/lang/String;

.field private final savedState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavBackStackEntryState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavBackStackEntryState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavBackStackEntryState;->Companion:Landroidx/navigation/NavBackStackEntryState$Companion;

    .line 77
    new-instance v0, Landroidx/navigation/NavBackStackEntryState$Companion$CREATOR$1;

    invoke-direct {v0}, Landroidx/navigation/NavBackStackEntryState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Landroidx/navigation/NavBackStackEntryState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "inParcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->args:Landroid/os/Bundle;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntryState;->savedState:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    iput v0, p0, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    .line 35
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->args:Landroid/os/Bundle;

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->savedState:Landroid/os/Bundle;

    .line 37
    invoke-virtual {p1, v0}, Landroidx/navigation/NavBackStackEntry;->saveState(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getArgs()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntryState;->args:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getDestinationId()I
    .locals 0

    iget p0, p0, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getSavedState()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntryState;->savedState:Landroid/os/Bundle;

    return-object p0
.end method

.method public final instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostLifecycleState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntryState;->args:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 56
    sget-object v1, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 58
    move-object v6, p4

    check-cast v6, Landroidx/navigation/NavViewModelStoreProvider;

    iget-object v7, p0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    iget-object v8, p0, Landroidx/navigation/NavBackStackEntryState;->savedState:Landroid/os/Bundle;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 56
    invoke-virtual/range {v1 .. v8}, Landroidx/navigation/NavBackStackEntry$Companion;->create(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/navigation/NavBackStackEntryState;->args:Landroid/os/Bundle;

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntryState;->savedState:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
