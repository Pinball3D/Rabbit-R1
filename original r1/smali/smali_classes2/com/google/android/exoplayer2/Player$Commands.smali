.class public final Lcom/google/android/exoplayer2/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Player$Commands$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Player$Commands;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/Player$Commands;

.field private static final FIELD_COMMANDS:Ljava/lang/String;


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public static synthetic $r8$lambda$9wfIGaCsSPvbzymZpUY6mofx72A(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$Commands;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Commands;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 516
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$Commands;->EMPTY:Lcom/google/android/exoplayer2/Player$Commands;

    const/4 v0, 0x0

    .line 574
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    .line 588
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$Commands$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Player$Commands;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/util/FlagSet;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$Commands;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    .line 591
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/Player$Commands;->EMPTY:Lcom/google/android/exoplayer2/Player$Commands;

    return-object p0

    .line 595
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/4 v1, 0x0

    .line 596
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 597
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 2

    .line 526
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>(Lcom/google/android/exoplayer2/Player$Commands;Lcom/google/android/exoplayer2/Player$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 531
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public varargs containsAny([I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 536
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->containsAny([I)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 560
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Commands;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 563
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$Commands;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 564
    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 552
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 569
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 541
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 580
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 581
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/exoplayer2/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    .line 583
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
