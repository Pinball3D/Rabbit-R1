.class Landroidx/profileinstaller/DexProfileData;
.super Ljava/lang/Object;
.source "DexProfileData.java"


# instance fields
.field final apkName:Ljava/lang/String;

.field classSetSize:I

.field classes:[I

.field final dexChecksum:J

.field final dexName:Ljava/lang/String;

.field final hotMethodRegionSize:I

.field mTypeIdCount:J

.field final methods:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final numMethodIds:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIII[ILjava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJIII[I",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/DexProfileData;->apkName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/profileinstaller/DexProfileData;->dexName:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/profileinstaller/DexProfileData;->dexChecksum:J

    iput-wide p5, p0, Landroidx/profileinstaller/DexProfileData;->mTypeIdCount:J

    iput p7, p0, Landroidx/profileinstaller/DexProfileData;->classSetSize:I

    iput p8, p0, Landroidx/profileinstaller/DexProfileData;->hotMethodRegionSize:I

    iput p9, p0, Landroidx/profileinstaller/DexProfileData;->numMethodIds:I

    iput-object p10, p0, Landroidx/profileinstaller/DexProfileData;->classes:[I

    iput-object p11, p0, Landroidx/profileinstaller/DexProfileData;->methods:Ljava/util/TreeMap;

    return-void
.end method
