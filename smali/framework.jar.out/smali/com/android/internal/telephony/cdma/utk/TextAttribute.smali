.class public Lcom/android/internal/telephony/cdma/utk/TextAttribute;
.super Ljava/lang/Object;
.source "TextAttribute.java"


# instance fields
.field public align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

.field public bold:Z

.field public color:Lcom/android/internal/telephony/cdma/utk/TextColor;

.field public italic:Z

.field public length:I

.field public size:Lcom/android/internal/telephony/cdma/utk/FontSize;

.field public start:I

.field public strikeThrough:Z

.field public underlined:Z


# direct methods
.method public constructor <init>(IILcom/android/internal/telephony/cdma/utk/TextAlignment;Lcom/android/internal/telephony/cdma/utk/FontSize;ZZZZLcom/android/internal/telephony/cdma/utk/TextColor;)V
    .locals 0
    .parameter "start"
    .parameter "length"
    .parameter "align"
    .parameter "size"
    .parameter "bold"
    .parameter "italic"
    .parameter "underlined"
    .parameter "strikeThrough"
    .parameter "color"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->start:I

    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->length:I

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->size:Lcom/android/internal/telephony/cdma/utk/FontSize;

    iput-boolean p5, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->bold:Z

    iput-boolean p6, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->italic:Z

    iput-boolean p7, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->underlined:Z

    iput-boolean p8, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->strikeThrough:Z

    iput-object p9, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->color:Lcom/android/internal/telephony/cdma/utk/TextColor;

    return-void
.end method
