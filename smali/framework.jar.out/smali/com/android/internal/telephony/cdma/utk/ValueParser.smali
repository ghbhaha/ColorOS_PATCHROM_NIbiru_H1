.class abstract Lcom/android/internal/telephony/cdma/utk/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .local v1, length:I
    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, -0x1

    :try_start_0
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    .local v1, length:I
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utkStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :goto_0
    return-object v4

    .restart local v1       #length:I
    .restart local v2       #rawValue:[B
    .restart local v3       #valueIndex:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v4, "Defualt Message"

    goto :goto_0

    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :cond_1
    const-string v4, "Defualt Message"

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;-><init>()V

    .local v0, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;-><init>()V

    .local v0, devIds:Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->sourceId:I

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    .local v3, timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .local v4, valueIndex:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    new-instance v5, Lcom/android/internal/telephony/cdma/utk/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cdma/utk/Duration;-><init>(ILcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;)V

    return-object v5

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/IconId;-><init>()V

    .local v1, id:Lcom/android/internal/telephony/cdma/utk/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, item:Lcom/android/internal/telephony/cdma/utk/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v3

    .local v3, length:I
    if-eqz v3, :cond_0

    add-int/lit8 v6, v3, -0x1

    .local v6, textLen:I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Item;

    .end local v2           #item:Lcom/android/internal/telephony/cdma/utk/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cdma/utk/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/cdma/utk/Item;
    :cond_0
    return-object v2

    .end local v2           #item:Lcom/android/internal/telephony/cdma/utk/Item;
    .restart local v6       #textLen:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;-><init>()V

    .local v1, id:Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v8, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_1

    .end local v3           #index:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v6, v7

    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_1
    return-object v1

    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    .locals 5
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v1

    new-array v0, v1, [B

    .local v0, smsPdu:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .local v19, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .local v21, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v17

    .local v17, length:I
    if-eqz v17, :cond_5

    div-int/lit8 v16, v17, 0x4

    .local v16, itemCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .local v2, start:I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .local v3, textLength:I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .local v14, format:I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .local v12, colorValue:I
    and-int/lit8 v11, v14, 0x3

    .local v11, alignValue:I
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    move-result-object v4

    .local v4, align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .local v20, sizeValue:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/utk/FontSize;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/FontSize;

    move-result-object v5

    .local v5, size:Lcom/android/internal/telephony/cdma/utk/FontSize;
    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/FontSize;->NORMAL:Lcom/android/internal/telephony/cdma/utk/FontSize;

    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .local v6, bold:Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .local v7, italic:Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .local v8, underlined:Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .local v9, strikeThrough:Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/utk/TextColor;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextColor;

    move-result-object v10

    .local v10, color:Lcom/android/internal/telephony/cdma/utk/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/utk/TextAttribute;-><init>(IILcom/android/internal/telephony/cdma/utk/TextAlignment;Lcom/android/internal/telephony/cdma/utk/FontSize;ZZZZLcom/android/internal/telephony/cdma/utk/TextColor;)V

    .local v1, attr:Lcom/android/internal/telephony/cdma/utk/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .end local v1           #attr:Lcom/android/internal/telephony/cdma/utk/TextAttribute;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v9           #strikeThrough:Z
    .end local v10           #color:Lcom/android/internal/telephony/cdma/utk/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .restart local v6       #bold:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7       #italic:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .restart local v8       #underlined:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .end local v2           #start:I
    .end local v3           #textLength:I
    .end local v4           #align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .end local v5           #size:Lcom/android/internal/telephony/cdma/utk/FontSize;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v11           #alignValue:I
    .end local v12           #colorValue:I
    .end local v14           #format:I
    .end local v20           #sizeValue:I
    :catch_0
    move-exception v13

    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v22

    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v15           #i:I
    .end local v16           #itemCount:I
    :cond_5
    const/16 v18, 0x0

    .end local v18           #lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/utk/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .local v6, valueIndex:I
    const/4 v0, 0x0

    .local v0, codingScheme:B
    const/4 v3, 0x0

    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v5

    .local v5, textLen:I
    if-nez v5, :cond_0

    move-object v4, v3

    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_0
    return-object v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    if-nez v0, :cond_1

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_0

    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utkStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1

    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
.end method

.method private static utk8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, ret:Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_3

    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .local v0, c:I
    if-nez v0, :cond_1

    const/16 v0, 0x40

    :cond_0
    :goto_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/16 v0, 0x24

    goto :goto_1

    :cond_2
    const/16 v3, 0x11

    if-ne v0, v3, :cond_0

    const/16 v0, 0x5f

    goto :goto_1

    .end local v0           #c:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static utkStringFieldToString([BII)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v7, 0x1

    if-lt p2, v7, :cond_1

    aget-byte v7, p0, p1

    const/16 v8, -0x80

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, p2, -0x1

    div-int/lit8 v6, v7, 0x2

    .local v6, ucslen:I
    const/4 v4, 0x0

    .local v4, ret:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, p1, 0x1

    mul-int/lit8 v8, v6, 0x2

    const-string v9, "utf-16be"

    invoke-direct {v5, p0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #ret:Ljava/lang/String;
    .local v5, ret:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #ret:Ljava/lang/String;
    .restart local v4       #ret:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    :goto_1
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xffff

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .end local v4           #ret:Ljava/lang/String;
    .end local v6           #ucslen:I
    :goto_2
    return-object v7

    :cond_1
    const/4 v2, 0x0

    .local v2, isucs2:Z
    const/4 v0, 0x0

    .local v0, base:C
    const/4 v3, 0x0

    .local v3, len:I
    const/4 v7, 0x3

    if-lt p2, v7, :cond_5

    aget-byte v7, p0, p1

    const/16 v8, -0x7f

    if-ne v7, v8, :cond_5

    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    add-int/lit8 v7, p2, -0x3

    if-le v3, v7, :cond_2

    add-int/lit8 v3, p2, -0x3

    :cond_2
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x7

    int-to-char v0, v7

    add-int/lit8 p1, p1, 0x3

    const/4 v2, 0x1

    :cond_3
    :goto_3
    if-eqz v2, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v3, :cond_8

    aget-byte v7, p0, p1

    if-gez v7, :cond_4

    aget-byte v7, p0, p1

    and-int/lit8 v7, v7, 0x7f

    add-int/2addr v7, v0

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, -0x1

    :cond_4
    const/4 v1, 0x0

    .local v1, count:I
    :goto_5
    if-ge v1, v3, :cond_7

    add-int v7, p1, v1

    aget-byte v7, p0, v7

    if-ltz v7, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1           #count:I
    .end local v4           #ret:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v7, 0x4

    if-lt p2, v7, :cond_3

    aget-byte v7, p0, p1

    const/16 v8, -0x7e

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    add-int/lit8 v7, p2, -0x4

    if-le v3, v7, :cond_6

    add-int/lit8 v3, p2, -0x4

    :cond_6
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p1, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v0, v7

    add-int/lit8 p1, p1, 0x4

    const/4 v2, 0x1

    goto :goto_3

    .restart local v1       #count:I
    .restart local v4       #ret:Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    sub-int/2addr v3, v1

    goto :goto_4

    .end local v1           #count:I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .end local v4           #ret:Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->utk8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .end local v0           #base:C
    .end local v2           #isucs2:Z
    .end local v3           #len:I
    .local v4, ret:Ljava/lang/String;
    .restart local v6       #ucslen:I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method
