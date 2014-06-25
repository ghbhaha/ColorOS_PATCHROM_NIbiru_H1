.class public Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mDelPinButton:Landroid/view/View;

.field private mDelPukButton:Landroid/view/View;

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkButton:Landroid/view/View;

.field private mPinText:Landroid/widget/TextView;

.field private mPukText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCreationOrientation:I

    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v5, :cond_0

    const v0, 0x1090068

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v0, 0x10202ee

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v0, 0x10202f7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const v0, 0x10202f0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const v0, 0x10202f8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    const v0, 0x10202ea

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    const v0, 0x10202a8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10402de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_0
    const v0, 0x1090069

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method private checkPuk()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x1040082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040306

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 2
    .parameter "digit"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->updateConfiguration()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .restart local v0       #digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .restart local v1       #len:I
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->updateConfiguration()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToLockScreen()V

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .local v2, match:C
    if-eqz v2, :cond_1

    add-int/lit8 v4, v2, -0x30

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->reportDigit(I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    const/16 v5, 0x1388

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0

    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10402de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardStatusViewManager;->onResume()V

    return-void
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mKeyboardHidden:I

    goto :goto_0
.end method
