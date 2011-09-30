.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;
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

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;II)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput p4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$start:I

    iput p5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$chunkSize:I

    iget-object v0, p1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1180
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$start:I

    iget v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$start:I

    iget v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    .line 1183
    :cond_0
    return-void
.end method
