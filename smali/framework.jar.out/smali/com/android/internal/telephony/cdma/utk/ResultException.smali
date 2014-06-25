.class public Lcom/android/internal/telephony/cdma/utk/ResultException;
.super Lcom/android/internal/telephony/cdma/utk/UtkException;
.source "ResultException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/ResultException$1;
    }
.end annotation


# instance fields
.field private mAdditionalInfo:I

.field private mExplanation:Ljava/lang/String;

.field private mResult:Lcom/android/internal/telephony/cdma/utk/ResultCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 3
    .parameter "result"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkException;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultException$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$ResultCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mResult:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mAdditionalInfo:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mExplanation:Ljava/lang/String;

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For result code, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", additional information must be given!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;I)V
    .locals 2
    .parameter "result"
    .parameter "additionalInfo"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Additional info must be greater than zero!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mAdditionalInfo:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;ILjava/lang/String;)V
    .locals 0
    .parameter "result"
    .parameter "additionalInfo"
    .parameter "explanation"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;I)V

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mExplanation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;Ljava/lang/String;)V
    .locals 0
    .parameter "result"
    .parameter "explanation"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mExplanation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public additionalInfo()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mAdditionalInfo:I

    return v0
.end method

.method public explanation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mExplanation:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdditionalInfo()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mAdditionalInfo:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public result()Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mResult:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mResult:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " additionalInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mAdditionalInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " explantion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/ResultException;->mExplanation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
