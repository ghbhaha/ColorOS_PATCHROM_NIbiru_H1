.class Lcom/android/internal/telephony/cat/EventDownloadCallInfo;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field mCause:I

.field mCauseLen:I

.field mIsFarEnd:I

.field mIsMTCall:I

.field mState:I

.field mTi:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0
    .parameter "state"
    .parameter "ti"
    .parameter "isMTCall"
    .parameter "isFarEnd"
    .parameter "cause_len"
    .parameter "cause"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mState:I

    iput p2, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mTi:I

    iput p3, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsMTCall:I

    iput p4, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mIsFarEnd:I

    iput p5, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCauseLen:I

    iput p6, p0, Lcom/android/internal/telephony/cat/EventDownloadCallInfo;->mCause:I

    return-void
.end method
