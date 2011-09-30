.class final Lcom/android/launcher2/ScreenUtils$ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenInfo"
.end annotation


# instance fields
.field screenId:J

.field screenOrder:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "id"
    .parameter "order"

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-wide p1, p0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;->screenId:J

    .line 430
    iput p3, p0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;->screenOrder:I

    .line 431
    return-void
.end method
