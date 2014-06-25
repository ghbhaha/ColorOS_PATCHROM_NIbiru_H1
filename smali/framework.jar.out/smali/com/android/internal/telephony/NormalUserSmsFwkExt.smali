.class public Lcom/android/internal/telephony/NormalUserSmsFwkExt;
.super Ljava/lang/Object;
.source "NormalUserSmsFwkExt.java"

# interfaces
.implements Lcom/android/internal/telephony/INormalUserSmsFwkExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalUserSmsFwkExt"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private mContext:Landroid/content/Context;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->WAKE_LOCK_TIMEOUT:I

    new-instance v1, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;-><init>(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)V

    iput-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_0

    const-string v1, "NormalUserSmsFwkExt"

    const-string v2, "FAIL! context is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->createWakelock()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, userFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/NormalUserSmsFwkExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 4
    .parameter "intent"
    .parameter "simId"
    .parameter "permission"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "NormalUserSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call dispatch: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mediatek.Telephony.NORMALUSER_SMS_RECEIVED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "simId"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mediatek.Telephony.NORMALUSER_MMS_RECEIVED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mediatek.Telephony.NORMALUSER_CB_RECEIVED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public isCurrentNormalUser()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
