.class interface abstract Lcom/android/launcher2/AllAppsList$PositionQuery;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PositionQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/AllAppsList$PositionQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
