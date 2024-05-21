.class public final enum Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
.super Ljava/lang/Enum;
.source "ItemDirection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "opposite",
        "HEAD",
        "TAIL",
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

.field private static final synthetic $VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

.field public static final enum HEAD:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

.field public static final enum TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 2

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->HEAD:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    sget-object v1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    filled-new-array {v0, v1}, [Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "HEAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->HEAD:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    .line 24
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    const-string v1, "TAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    invoke-static {}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->$values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 1

    const-class v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    return-object p0
.end method

.method public static values()[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->$VALUES:[Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->value:I

    return p0
.end method

.method public final opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->HEAD:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    :cond_0
    return-object v0
.end method
