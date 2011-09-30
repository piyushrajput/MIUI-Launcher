.class Lcom/android/launcher2/LauncherModel$5;
.super Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


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
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$5;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$5;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$5;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$5;->mData:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsRemoved(Ljava/util/ArrayList;)V

    .line 575
    return-void
.end method
