.class public final Landroidx/media3/common/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Player$Commands$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Player$Commands;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/common/Player$Commands;

.field private static final FIELD_COMMANDS:Ljava/lang/String;


# instance fields
.field private final flags:Landroidx/media3/common/FlagSet;


# direct methods
.method public static synthetic $r8$lambda$bJbd4g5aXZ6YObv0AuEljNycW2Y(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 620
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    const/4 v0, 0x0

    .line 679
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    .line 694
    new-instance v0, Landroidx/media3/common/Player$Commands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/Player$Commands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/FlagSet;Landroidx/media3/common/Player$1;)V
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/FlagSet;
    .locals 0

    .line 449
    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;
    .locals 3

    sget-object v0, Landroidx/media3/common/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    .line 697
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    return-object p0

    .line 701
    :cond_0
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/4 v1, 0x0

    .line 702
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 703
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/Player$Commands$Builder;
    .locals 2

    .line 631
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Player$Commands$Builder;-><init>(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 636
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public varargs containsAny([I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 641
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->containsAny([I)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 665
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/Player$Commands;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 668
    :cond_1
    check-cast p1, Landroidx/media3/common/Player$Commands;

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 669
    iget-object p1, p1, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 657
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 674
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 646
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 684
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 686
    invoke-virtual {v3}, Landroidx/media3/common/FlagSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    .line 687
    invoke-virtual {v3, v2}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/common/Player$Commands;->FIELD_COMMANDS:Ljava/lang/String;

    .line 689
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
