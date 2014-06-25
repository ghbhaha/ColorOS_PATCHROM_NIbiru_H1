.class public Lcom/android/internal/telephony/cdma/MccIddNddSid;
.super Ljava/lang/Object;
.source "MccIddNddSid.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MccIddNddSid"


# instance fields
.field public Cc:Ljava/lang/String;

.field public Idd:Ljava/lang/String;

.field public Mcc:I

.field public Ndd:Ljava/lang/String;

.field public SidMax:I

.field public SidMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "cc"
    .parameter "sidmin"
    .parameter "sidmax"
    .parameter "idd"
    .parameter "ndd"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    iput p4, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    iput-object p5, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/MccIddNddSid;)V
    .locals 0
    .parameter "t"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/MccIddNddSid;->copyFrom(Lcom/android/internal/telephony/cdma/MccIddNddSid;)V

    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/MccIddNddSid;)V
    .locals 1
    .parameter "t"

    .prologue
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    iget v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    return-object v0
.end method

.method public getSidMax()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    return v0
.end method

.method public getSidMin()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Idd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Ndd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
