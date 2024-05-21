.class public final enum Lcom/alibaba/fastjson/parser/Feature;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/parser/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowComment:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableASM:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum OrderedField:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 26
    new-instance v1, Lcom/alibaba/fastjson/parser/Feature;

    move-object v0, v1

    const-string v2, "AutoCloseSource"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    .line 30
    new-instance v2, Lcom/alibaba/fastjson/parser/Feature;

    move-object v1, v2

    const-string v3, "AllowComment"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowComment:Lcom/alibaba/fastjson/parser/Feature;

    .line 34
    new-instance v3, Lcom/alibaba/fastjson/parser/Feature;

    move-object v2, v3

    const-string v4, "AllowUnQuotedFieldNames"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 38
    new-instance v4, Lcom/alibaba/fastjson/parser/Feature;

    move-object v3, v4

    const-string v5, "AllowSingleQuotes"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 42
    new-instance v5, Lcom/alibaba/fastjson/parser/Feature;

    move-object v4, v5

    const-string v6, "InternFieldNames"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 46
    new-instance v6, Lcom/alibaba/fastjson/parser/Feature;

    move-object v5, v6

    const-string v7, "AllowISO8601DateFormat"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 51
    new-instance v7, Lcom/alibaba/fastjson/parser/Feature;

    move-object v6, v7

    const-string v8, "AllowArbitraryCommas"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 56
    new-instance v8, Lcom/alibaba/fastjson/parser/Feature;

    move-object v7, v8

    const-string v9, "UseBigDecimal"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 61
    new-instance v9, Lcom/alibaba/fastjson/parser/Feature;

    move-object v8, v9

    const-string v10, "IgnoreNotMatch"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 66
    new-instance v10, Lcom/alibaba/fastjson/parser/Feature;

    move-object v9, v10

    const-string v11, "SortFeidFastMatch"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 71
    new-instance v11, Lcom/alibaba/fastjson/parser/Feature;

    move-object v10, v11

    const-string v12, "DisableASM"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alibaba/fastjson/parser/Feature;->DisableASM:Lcom/alibaba/fastjson/parser/Feature;

    .line 76
    new-instance v12, Lcom/alibaba/fastjson/parser/Feature;

    move-object v11, v12

    const-string v13, "DisableCircularReferenceDetect"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 81
    new-instance v13, Lcom/alibaba/fastjson/parser/Feature;

    move-object v12, v13

    const-string v14, "InitStringFieldAsEmpty"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 87
    new-instance v14, Lcom/alibaba/fastjson/parser/Feature;

    move-object v13, v14

    const-string v15, "SupportArrayToBean"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 92
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    move-object v14, v0

    const-string v15, "OrderedField"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 97
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    move-object v15, v0

    const-string v1, "DisableSpecialKeyDetect"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 102
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v16, v0

    const-string v1, "SupportNonPublicField"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    .line 107
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v17, v0

    const-string v1, "SupportAutoType"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    filled-new-array/range {v0 .. v17}, [Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->$VALUES:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/Feature;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/Feature;
    .locals 1

    const-class v0, Lcom/alibaba/fastjson/parser/Feature;

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/parser/Feature;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/parser/Feature;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->$VALUES:[Lcom/alibaba/fastjson/parser/Feature;

    .line 22
    invoke-virtual {v0}, [Lcom/alibaba/fastjson/parser/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/parser/Feature;

    return-object v0
.end method
