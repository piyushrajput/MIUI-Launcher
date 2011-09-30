.class interface abstract Lcom/android/launcher2/ItemQuery;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "favorites._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "container"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "displayMode"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "launchCount"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sortMode"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "itemFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
