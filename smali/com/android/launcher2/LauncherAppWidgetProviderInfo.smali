.class Lcom/android/launcher2/LauncherAppWidgetProviderInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .parameter "providerInfo"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 32
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->itemType:I

    .line 33
    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 34
    return-void
.end method
