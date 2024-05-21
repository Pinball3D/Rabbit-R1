.class public final enum Lcom/rubensousa/dpadrecyclerview/FocusableDirection;
.super Ljava/lang/Enum;
.source "FocusableDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;",
        "",
        "(Ljava/lang/String;I)V",
        "STANDARD",
        "CIRCULAR",
        "CONTINUOUS",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

.field public static final enum CIRCULAR:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

.field public static final enum CONTINUOUS:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

.field public static final enum STANDARD:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;


# direct methods
.method private static final synthetic $values()[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;
    .locals 3

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->STANDARD:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    sget-object v1, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->CIRCULAR:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    sget-object v2, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->CONTINUOUS:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    filled-new-array {v0, v1, v2}, [Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->STANDARD:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    .line 30
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    const-string v1, "CIRCULAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->CIRCULAR:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    .line 39
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->CONTINUOUS:Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->$values()[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rubensousa/dpadrecyclerview/FocusableDirection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rubensousa/dpadrecyclerview/FocusableDirection;
    .locals 1

    const-class v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    return-object p0
.end method

.method public static values()[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/FocusableDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rubensousa/dpadrecyclerview/FocusableDirection;

    return-object v0
.end method
