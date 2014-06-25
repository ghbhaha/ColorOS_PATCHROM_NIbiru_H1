.class public Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Z

.field private static d:I

.field private static e:[Ljava/lang/String;

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/String;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x0

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v3, v0, :cond_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMModeByIccidStatus: default simMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    :goto_1
    if-ge v2, p1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    aget-object v3, p0, v2

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v2, :pswitch_data_0

    const-string v1, "PHONE"

    const-string v3, "[GeminiRadioStatusUtil] getSIMModeByIccidStatus argument error!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const/16 v0, 0xf

    goto :goto_0

    :pswitch_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_2

    :pswitch_1
    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    :pswitch_2
    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    :pswitch_3
    and-int/lit8 v0, v0, -0x9

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiRadioStatusUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public static checkRadioOffSIM(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    sput-object p0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a:Landroid/content/Context;

    const-string v1, "RADIO_STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checkRadioOffSIM no recorded radio off SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->c:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "checkRadioOffSIM has radio off SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static finishRadioStatusInitialization([Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->c:Z

    sput p1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aget-object v2, p0, v0

    aput-object v2, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish radio status initialization mIccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a([Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish radio status initialization mSIMMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static getSIMMode()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    return v0
.end method

.method public static isRadioStatusInitialized()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->c:Z

    return v0
.end method

.method public static setRadioSIMMode(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    sput p1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    sget v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:I

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "air plane mode, not to record radio off SIM"

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_sim_mode_setting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    :cond_2
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GeminiRadioStatusUtil]setRadioSIMMode mSIMMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_2
    sget v3, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:I

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget v3, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    shl-int v4, v2, v0

    and-int/2addr v3, v4

    if-lez v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static setSIMIccId(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSIMIccId() setmIccId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] to iccid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:[Ljava/lang/String;

    aput-object p1, v0, p0

    return-void
.end method
