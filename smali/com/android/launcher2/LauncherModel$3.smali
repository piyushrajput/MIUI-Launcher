.class Lcom/android/launcher2/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$3;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$3;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$3;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->reloadWidgetPreview()V

    .line 534
    return-void
.end method
