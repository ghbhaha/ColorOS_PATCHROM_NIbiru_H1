.class public Lcom/android/internal/policy/impl/keyguard/MediatekClockView;
.super Lcom/android/internal/policy/impl/keyguard/MediatekClock;
.source "MediatekClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediatekClockView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->onFinishInflate()V

    const v0, 0x1020307

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    const-string v1, "/system/fonts/AndroidClock.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    const v0, 0x1020308

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mAmPmTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->setDateFormat()V

    return-void
.end method

.method public updateTime()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, systemTime:Ljava/lang/CharSequence;
    const-string v1, "MediatekClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard updateTime systemTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->setIsMorning(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
