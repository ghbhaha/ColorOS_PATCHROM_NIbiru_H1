.class public Lcom/android/internal/telephony/cdma/utk/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/Duration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public timeInterval:I

.field public timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/Duration$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/Duration$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/Duration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;)V
    .locals 0
    .parameter "timeInterval"
    .parameter "timeUnit"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeInterval:I

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeInterval:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cdma/utk/Duration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/Duration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/Duration;->timeUnit:Lcom/android/internal/telephony/cdma/utk/Duration$TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method