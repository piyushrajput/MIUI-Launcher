.class Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperChangedIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1735
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->updateWallpaper()V

    .line 1739
    return-void
.end method
