.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;
.super Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v0, p1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1263
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1264
    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;->mData:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/launcher2/gadget/GadgetInfo;

    invoke-interface {v0, p0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V

    .line 1266
    :cond_0
    return-void
.end method
