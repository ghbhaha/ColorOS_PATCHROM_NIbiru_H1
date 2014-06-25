.class public Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONN_TYPE_ALWAYS:I = 0x1

.field public static final CONN_TYPE_WHEN_NEEDED:I = 0x0

.field public static final MODE_DUAL_SIM:I = 0x3

.field public static final MODE_FLIGHT_MODE:I = 0x0

.field public static final MODE_GPRS_AUTO_ATTACH:I = 0x1

.field public static final MODE_GPRS_NOT_ATTACH:I = 0x0

.field public static final MODE_GPRS_USER_SELECT:I = 0x2

.field public static final MODE_POWER_OFF:I = -0x1

.field public static final MODE_QUAD_SIM:I = 0xf

.field public static final MODE_SIM1_ONLY:I = 0x1

.field public static final MODE_SIM2_ONLY:I = 0x2

.field public static final MODE_SIM3_ONLY:I = 0x4

.field public static final MODE_SIM4_ONLY:I = 0x8

.field public static final MODE_TRIPLE_SIM:I = 0x7

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "boot_up_select_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bootUp]airplaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectByUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimModeSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SIM status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    const-string v2, "gsm.sim.inserted"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_0

    invoke-static {p0, v4, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim mode from ICCID is different than dual sim mode, to sync with insert status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    :cond_1
    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_4

    :cond_2
    if-eq p1, v5, :cond_3

    if-eq p1, v6, :cond_3

    if-eq p1, v7, :cond_3

    if-ne p1, v8, :cond_4

    :cond_3
    if-eq v0, p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual sim mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and inserted status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync two values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    :cond_4
    invoke-static {p0, v0, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    goto :goto_0
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v10, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v6, v0, [Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v5

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v7, v0, [Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioMode: mode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,simInsertedStatus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,simMod= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v6, v0

    shl-int v1, v3, v0

    and-int/2addr v1, v5

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    aput-boolean v1, v7, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPhoneOn[SIM"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-boolean v8, v7, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez p3, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->supportEccForEachSIM()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_3
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_4

    aget-object v1, v6, v0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_1
    move v0, v2

    :goto_4
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    aget-object v1, v6, v0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_2
    move v0, v2

    :goto_5
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    shl-int v1, v3, v0

    if-ne p1, v1, :cond_3

    aget-object v1, v6, v0

    aget-boolean v8, v7, v0

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    aget-boolean v1, v7, v0

    if-nez v1, :cond_2

    move p1, v2

    :cond_2
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    aget-object v1, v6, v0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const-string v0, "EVDO set radio mode and turn on all radios."

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    :cond_5
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne p1, v10, :cond_c

    const-string v0, "Power-off, not to refresh dual SIM mode setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    :cond_6
    :goto_8
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v6, v3

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eq p1, v10, :cond_1e

    if-ne v7, v3, :cond_11

    if-nez p3, :cond_10

    const-string v0, "airplane mode and turn off MD now"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_7
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v7, v0, [Landroid/telephony/ServiceState;

    move v0, v3

    move v1, v3

    move v5, v2

    :goto_a
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v5, v8, :cond_33

    aget-object v8, v6, v5

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    aput-object v8, v7, v5

    aget-object v8, v7, v5

    if-nez v8, :cond_31

    move v1, v2

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_8
    move v0, v2

    move v1, v2

    :goto_c
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v8, :cond_b

    shl-int v8, v3, v1

    and-int/2addr v8, p2

    if-eqz v8, :cond_a

    aget-object v8, v6, v1

    aget-boolean v9, v7, v1

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    aget-boolean v8, v7, v1

    if-eqz v8, :cond_9

    shl-int v8, v3, v1

    or-int/2addr v0, v8

    :cond_9
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_a
    aget-object v8, v6, v1

    invoke-interface {v8, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning! Request Dual mode but not enough SIM, status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode switch to "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move p1, v0

    goto/16 :goto_7

    :cond_c
    if-nez p2, :cond_e

    const-string v0, "No SIM inserted, refresh dual SIM  mode to MODE_DUAL_SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v7, :cond_6

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "For CTA requirement, force to turn on SIM1 radio and SIM2 radio"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v2

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    aget-object v0, v6, v3

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move p1, v4

    goto/16 :goto_8

    :cond_d
    const-string v0, "No SIM inserted, force to turn on SIM1 radio if no any sim radio is enabled!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v2

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move p1, v3

    goto/16 :goto_8

    :cond_e
    if-ne v7, v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh dual SIM mode setting under air plane mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh dual SIM mode setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_10
    const-string v0, "Air plane mode but is boot up (dt), do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDualSimMode()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check if need to boot up modem ["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v9, p1, 0x1

    if-eq v1, v9, :cond_16

    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_14

    if-nez v0, :cond_16

    if-eqz p3, :cond_13

    const-string v0, "skip up phone1 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v1, v2

    :goto_e
    and-int/lit8 v0, v7, 0x2

    and-int/lit8 v9, p1, 0x2

    if-eq v0, v9, :cond_1a

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_18

    if-nez v8, :cond_1a

    if-eqz p3, :cond_17

    const-string v0, "skip up phone2 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_f
    if-eqz v0, :cond_12

    if-eq p1, v10, :cond_12

    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v8, p1, 0x1

    if-ne v1, v8, :cond_7

    and-int/lit8 v1, v7, 0x2

    and-int/lit8 v7, p1, 0x2

    if-ne v1, v7, :cond_7

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Radio mode is the same with previous one or no power on MD, continue power on radio ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    :cond_13
    const-string v0, "boot up phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v1, v3

    goto :goto_e

    :cond_14
    const-string v0, "shutdown phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_15

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v1, v2

    goto :goto_e

    :cond_15
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_16
    move v1, v2

    goto/16 :goto_e

    :cond_17
    const-string v0, "boot up phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v0, v3

    goto :goto_f

    :cond_18
    const-string v0, "shutdown phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-ne v0, v3, :cond_19

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v0, v1

    goto/16 :goto_f

    :cond_19
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_1a
    move v0, v1

    goto/16 :goto_f

    :cond_1b
    if-eqz v5, :cond_1c

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_1c
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_1d
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    :cond_1e
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eq p1, v10, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDualSimMode()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check if need to boot up modem ["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v9, p1, 0x1

    if-eq v1, v9, :cond_24

    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_22

    if-nez v0, :cond_24

    if-eqz p3, :cond_21

    const-string v0, "skip up phone1 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v1, v2

    :goto_10
    and-int/lit8 v0, v7, 0x2

    and-int/lit8 v9, p1, 0x2

    if-eq v0, v9, :cond_28

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_26

    if-nez v8, :cond_28

    if-eqz p3, :cond_25

    const-string v0, "skip up phone2 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_11
    if-eqz v0, :cond_20

    if-eq p1, v10, :cond_20

    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v8, p1, 0x1

    if-ne v1, v8, :cond_7

    and-int/lit8 v1, v7, 0x2

    and-int/lit8 v7, p1, 0x2

    if-ne v1, v7, :cond_7

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Radio mode is the same with previous one or no power on MD, continue power on radio ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    :cond_21
    const-string v0, "boot up phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v1, v3

    goto :goto_10

    :cond_22
    const-string v0, "shutdown phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_23

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v1, v2

    goto :goto_10

    :cond_23
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_24
    move v1, v2

    goto/16 :goto_10

    :cond_25
    const-string v0, "boot up phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v0, v3

    goto :goto_11

    :cond_26
    const-string v0, "shutdown phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-ne v0, v3, :cond_27

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v0, v1

    goto/16 :goto_11

    :cond_27
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_28
    move v0, v1

    goto/16 :goto_11

    :cond_29
    if-eqz v5, :cond_2a

    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_2a
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_2b
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    :cond_2c
    if-ne v7, v3, :cond_2f

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p3, :cond_2e

    if-eqz v5, :cond_2d

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    aget-object v0, v6, v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_2d
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_2e
    const-string v0, "Air plane mode but is boot up, do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2f
    if-eqz v5, :cond_30

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    aget-object v0, v6, v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_30
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    :cond_31
    aget-object v8, v7, v5

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eq v8, v4, :cond_32

    move v0, v2

    :cond_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " service state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_33
    if-ne v1, v3, :cond_35

    if-eq p1, v10, :cond_34

    if-nez p1, :cond_35

    :cond_34
    if-ne v0, v3, :cond_35

    const-string v0, "Already in power off state, force notify"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    :goto_12
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_35

    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setDualSimMode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    if-ne p1, v4, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eq v2, v8, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-virtual {v0, v7, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :goto_1
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_1

    :cond_5
    if-ne p1, v7, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    if-eq v0, v8, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {v1, v7, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    if-ne p1, v2, :cond_f

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    if-eq v0, v8, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_b

    :cond_a
    invoke-virtual {v1, v7, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    :cond_b
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eq v2, v8, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_e

    :cond_d
    invoke-virtual {v0, v7, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :goto_2
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_2

    :cond_f
    if-nez p1, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    :cond_11
    if-ne p1, v6, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    invoke-virtual {v1, v6, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-virtual {v1, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    if-ne p1, v4, :cond_15

    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_15
    if-ne p1, v7, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_16
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x3

    if-ne p1, v2, :cond_18

    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_18
    if-nez p1, :cond_1a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_1a
    if-ne p1, v6, :cond_1b

    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    invoke-virtual {v1, v6, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_1b
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiNetworkSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    return-void
.end method
