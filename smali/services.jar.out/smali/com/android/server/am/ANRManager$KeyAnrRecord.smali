.class public Lcom/android/server/am/ANRManager$KeyAnrRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyAnrRecord"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field protected mActivity:Lcom/android/server/am/ActivityRecord;

.field protected mAnnotation:Ljava/lang/String;

.field protected mApp:Lcom/android/server/am/ProcessRecord;

.field protected mParent:Lcom/android/server/am/ActivityRecord;


# direct methods
.method protected constructor <init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    iput-object p5, p0, Lcom/android/server/am/ANRManager$KeyAnrRecord;->mAnnotation:Ljava/lang/String;

    return-void
.end method
