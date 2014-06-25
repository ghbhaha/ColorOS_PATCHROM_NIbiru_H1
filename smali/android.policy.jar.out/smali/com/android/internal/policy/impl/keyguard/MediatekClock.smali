.class public Lcom/android/internal/policy/impl/keyguard/MediatekClock;
.super Landroid/widget/RelativeLayout;
.source "MediatekClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;,
        Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field protected static final ANDROID_CLOCK_FONT_FILE:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field protected mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

.field protected mAmPmTextView:Landroid/widget/TextView;

.field private mAttached:I

.field protected mCalendar:Ljava/util/Calendar;

.field protected mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mTimeView:Landroid/widget/TextView;

.field protected mWeekDayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAttached:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MediatekClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAttached:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAttached:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->updateTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAttached:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method protected setDateFormat()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->setShowAmPm(Z)V

    return-void

    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method public updateTime()V
    .locals 0

    .prologue
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->updateTime()V

    return-void
.end method
