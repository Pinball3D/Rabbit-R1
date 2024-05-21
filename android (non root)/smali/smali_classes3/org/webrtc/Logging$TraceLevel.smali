.class public final enum Lorg/webrtc/Logging$TraceLevel;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/Logging$TraceLevel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_ALL:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_APICALL:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_CRITICAL:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_DEBUG:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_DEFAULT:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_ERROR:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_INFO:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_MEMORY:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_MODULECALL:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_NONE:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_STATEINFO:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_STREAM:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_TERSEINFO:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_TIMER:Lorg/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_WARNING:Lorg/webrtc/Logging$TraceLevel;


# instance fields
.field public final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 68
    new-instance v0, Lorg/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/Logging$TraceLevel;->TRACE_NONE:Lorg/webrtc/Logging$TraceLevel;

    .line 69
    new-instance v1, Lorg/webrtc/Logging$TraceLevel;

    const-string v2, "TRACE_STATEINFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/webrtc/Logging$TraceLevel;->TRACE_STATEINFO:Lorg/webrtc/Logging$TraceLevel;

    .line 70
    new-instance v2, Lorg/webrtc/Logging$TraceLevel;

    const-string v3, "TRACE_WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/webrtc/Logging$TraceLevel;->TRACE_WARNING:Lorg/webrtc/Logging$TraceLevel;

    .line 71
    new-instance v3, Lorg/webrtc/Logging$TraceLevel;

    const-string v4, "TRACE_ERROR"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/webrtc/Logging$TraceLevel;->TRACE_ERROR:Lorg/webrtc/Logging$TraceLevel;

    .line 72
    new-instance v4, Lorg/webrtc/Logging$TraceLevel;

    const-string v5, "TRACE_CRITICAL"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/webrtc/Logging$TraceLevel;->TRACE_CRITICAL:Lorg/webrtc/Logging$TraceLevel;

    .line 73
    new-instance v5, Lorg/webrtc/Logging$TraceLevel;

    const/4 v6, 0x5

    const/16 v8, 0x10

    const-string v9, "TRACE_APICALL"

    invoke-direct {v5, v9, v6, v8}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/webrtc/Logging$TraceLevel;->TRACE_APICALL:Lorg/webrtc/Logging$TraceLevel;

    .line 74
    new-instance v6, Lorg/webrtc/Logging$TraceLevel;

    const/4 v8, 0x6

    const/16 v9, 0xff

    const-string v10, "TRACE_DEFAULT"

    invoke-direct {v6, v10, v8, v9}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/webrtc/Logging$TraceLevel;->TRACE_DEFAULT:Lorg/webrtc/Logging$TraceLevel;

    .line 75
    new-instance v8, Lorg/webrtc/Logging$TraceLevel;

    const/4 v9, 0x7

    const/16 v10, 0x20

    const-string v11, "TRACE_MODULECALL"

    invoke-direct {v8, v11, v9, v10}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/webrtc/Logging$TraceLevel;->TRACE_MODULECALL:Lorg/webrtc/Logging$TraceLevel;

    .line 76
    new-instance v9, Lorg/webrtc/Logging$TraceLevel;

    const-string v10, "TRACE_MEMORY"

    const/16 v11, 0x100

    invoke-direct {v9, v10, v7, v11}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/webrtc/Logging$TraceLevel;->TRACE_MEMORY:Lorg/webrtc/Logging$TraceLevel;

    .line 77
    new-instance v10, Lorg/webrtc/Logging$TraceLevel;

    const/16 v7, 0x9

    const/16 v11, 0x200

    const-string v12, "TRACE_TIMER"

    invoke-direct {v10, v12, v7, v11}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/webrtc/Logging$TraceLevel;->TRACE_TIMER:Lorg/webrtc/Logging$TraceLevel;

    .line 78
    new-instance v11, Lorg/webrtc/Logging$TraceLevel;

    const/16 v7, 0xa

    const/16 v12, 0x400

    const-string v13, "TRACE_STREAM"

    invoke-direct {v11, v13, v7, v12}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/webrtc/Logging$TraceLevel;->TRACE_STREAM:Lorg/webrtc/Logging$TraceLevel;

    .line 79
    new-instance v12, Lorg/webrtc/Logging$TraceLevel;

    const/16 v7, 0xb

    const/16 v13, 0x800

    const-string v14, "TRACE_DEBUG"

    invoke-direct {v12, v14, v7, v13}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/webrtc/Logging$TraceLevel;->TRACE_DEBUG:Lorg/webrtc/Logging$TraceLevel;

    .line 80
    new-instance v13, Lorg/webrtc/Logging$TraceLevel;

    const/16 v7, 0xc

    const/16 v14, 0x1000

    const-string v15, "TRACE_INFO"

    invoke-direct {v13, v15, v7, v14}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/webrtc/Logging$TraceLevel;->TRACE_INFO:Lorg/webrtc/Logging$TraceLevel;

    .line 81
    new-instance v14, Lorg/webrtc/Logging$TraceLevel;

    const/16 v7, 0xd

    const/16 v15, 0x2000

    move-object/from16 v16, v13

    const-string v13, "TRACE_TERSEINFO"

    invoke-direct {v14, v13, v7, v15}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/webrtc/Logging$TraceLevel;->TRACE_TERSEINFO:Lorg/webrtc/Logging$TraceLevel;

    .line 82
    new-instance v15, Lorg/webrtc/Logging$TraceLevel;

    const/16 v7, 0xe

    const v13, 0xffff

    move-object/from16 v17, v14

    const-string v14, "TRACE_ALL"

    invoke-direct {v15, v14, v7, v13}, Lorg/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/webrtc/Logging$TraceLevel;->TRACE_ALL:Lorg/webrtc/Logging$TraceLevel;

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v14, v15

    filled-new-array/range {v0 .. v14}, [Lorg/webrtc/Logging$TraceLevel;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Logging$TraceLevel;->$VALUES:[Lorg/webrtc/Logging$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/webrtc/Logging$TraceLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/Logging$TraceLevel;
    .locals 1

    const-class v0, Lorg/webrtc/Logging$TraceLevel;

    .line 66
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/Logging$TraceLevel;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/Logging$TraceLevel;
    .locals 1

    sget-object v0, Lorg/webrtc/Logging$TraceLevel;->$VALUES:[Lorg/webrtc/Logging$TraceLevel;

    .line 66
    invoke-virtual {v0}, [Lorg/webrtc/Logging$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/Logging$TraceLevel;

    return-object v0
.end method
