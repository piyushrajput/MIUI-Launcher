.class final Lcom/android/launcher2/ScreenUtils$CellInfo;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellInfo"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field screenId:J

.field screenOrder:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/ScreenUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/launcher2/ScreenUtils$CellInfo;-><init>()V

    return-void
.end method
