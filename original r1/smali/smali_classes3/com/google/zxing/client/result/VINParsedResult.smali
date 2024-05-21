.class public final Lcom/google/zxing/client/result/VINParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "VINParsedResult.java"


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final modelYear:I

.field private final plantCode:C

.field private final sequentialNumber:Ljava/lang/String;

.field private final vehicleAttributes:Ljava/lang/String;

.field private final vehicleDescriptorSection:Ljava/lang/String;

.field private final vehicleIdentifierSection:Ljava/lang/String;

.field private final vin:Ljava/lang/String;

.field private final worldManufacturerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/VINParsedResult;->worldManufacturerID:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleDescriptorSection:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleIdentifierSection:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/zxing/client/result/VINParsedResult;->countryCode:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleAttributes:Ljava/lang/String;

    iput p7, p0, Lcom/google/zxing/client/result/VINParsedResult;->modelYear:I

    iput-char p8, p0, Lcom/google/zxing/client/result/VINParsedResult;->plantCode:C

    iput-object p9, p0, Lcom/google/zxing/client/result/VINParsedResult;->sequentialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->worldManufacturerID:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleDescriptorSection:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleIdentifierSection:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->countryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->modelYear:I

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->plantCode:C

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->sequentialNumber:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModelYear()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->modelYear:I

    return p0
.end method

.method public getPlantCode()C
    .locals 0

    iget-char p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->plantCode:C

    return p0
.end method

.method public getSequentialNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->sequentialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getVIN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    return-object p0
.end method

.method public getVehicleAttributes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleAttributes:Ljava/lang/String;

    return-object p0
.end method

.method public getVehicleDescriptorSection()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleDescriptorSection:Ljava/lang/String;

    return-object p0
.end method

.method public getVehicleIdentifierSection()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->vehicleIdentifierSection:Ljava/lang/String;

    return-object p0
.end method

.method public getWorldManufacturerID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/VINParsedResult;->worldManufacturerID:Ljava/lang/String;

    return-object p0
.end method
