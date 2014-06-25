.class public Lcom/android/internal/telephony/cdma/SidMccMnc;
.super Ljava/lang/Object;
.source "SidMccMnc.java"


# instance fields
.field public MccMnc:I

.field public Sid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "mSid"
    .parameter "mMccMnc"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    iput p2, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/SidMccMnc;)V
    .locals 0
    .parameter "t"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/SidMccMnc;->copyFrom(Lcom/android/internal/telephony/cdma/SidMccMnc;)V

    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/SidMccMnc;)V
    .locals 1
    .parameter "t"

    .prologue
    iget v0, p1, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    return-void
.end method

.method public getMccMnc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->Sid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MccMnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/SidMccMnc;->MccMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
