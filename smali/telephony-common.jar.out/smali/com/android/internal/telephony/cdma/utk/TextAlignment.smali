.class public final enum Lcom/android/internal/telephony/cdma/utk/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/utk/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/utk/TextAlignment;

.field public static final enum CENTER:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

.field public static final enum DEFAULT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

.field public static final enum LEFT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

.field public static final enum RIGHT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->LEFT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->CENTER:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->LEFT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->CENTER:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->mValue:I

    .line 36
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .locals 5
    .parameter "value"

    .prologue
    .line 45
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->values()[Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 46
    .local v1, e:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->mValue:I

    if-ne v4, p0, :cond_0

    .line 50
    .end local v1           #e:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    :goto_1
    return-object v1

    .line 45
    .restart local v1       #e:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1           #e:Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/utk/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    return-object v0
.end method
